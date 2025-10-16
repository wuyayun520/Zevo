import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/zevo_workout_record.dart';
import '../models/zevo_user.dart';

class ZevoStorageService {
  static const String _workoutRecordsKey = 'zevo_workout_records';
  static const String _userKey = 'zevo_user';

  // Workout Records
  static Future<List<ZevoWorkoutRecord>> getWorkoutRecords() async {
    final prefs = await SharedPreferences.getInstance();
    final recordsJson = prefs.getStringList(_workoutRecordsKey) ?? [];
    return recordsJson
        .map((json) => ZevoWorkoutRecord.fromJson(jsonDecode(json)))
        .toList();
  }

  static Future<void> saveWorkoutRecord(ZevoWorkoutRecord record) async {
    final prefs = await SharedPreferences.getInstance();
    final records = await getWorkoutRecords();
    
    // Remove existing record with same id if exists
    records.removeWhere((r) => r.id == record.id);
    
    // Add new record
    records.add(record);
    
    // Sort by date descending
    records.sort((a, b) => b.date.compareTo(a.date));
    
    final recordsJson = records
        .map((record) => jsonEncode(record.toJson()))
        .toList();
    
    await prefs.setStringList(_workoutRecordsKey, recordsJson);
  }

  static Future<void> deleteWorkoutRecord(String recordId) async {
    final prefs = await SharedPreferences.getInstance();
    final records = await getWorkoutRecords();
    records.removeWhere((record) => record.id == recordId);
    
    final recordsJson = records
        .map((record) => jsonEncode(record.toJson()))
        .toList();
    
    await prefs.setStringList(_workoutRecordsKey, recordsJson);
  }

  static Future<List<ZevoWorkoutRecord>> getWorkoutRecordsByDateRange(
    DateTime startDate,
    DateTime endDate,
  ) async {
    final records = await getWorkoutRecords();
    return records.where((record) {
      return record.date.isAfter(startDate.subtract(const Duration(days: 1))) &&
          record.date.isBefore(endDate.add(const Duration(days: 1)));
    }).toList();
  }

  // User
  static Future<ZevoUser?> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    final userJson = prefs.getString(_userKey);
    if (userJson != null) {
      return ZevoUser.fromJson(jsonDecode(userJson));
    }
    return null;
  }

  static Future<void> saveUser(ZevoUser user) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userKey, jsonEncode(user.toJson()));
  }

  static Future<void> clearUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userKey);
  }

  // Statistics
  static Future<Map<String, dynamic>> getStatistics() async {
    final records = await getWorkoutRecords();
    final now = DateTime.now();
    final startOfWeek = now.subtract(Duration(days: now.weekday - 1));
    final startOfMonth = DateTime(now.year, now.month, 1);

    final thisWeekRecords = records.where((record) {
      return record.date.isAfter(startOfWeek.subtract(const Duration(days: 1)));
    }).toList();

    final thisMonthRecords = records.where((record) {
      return record.date.isAfter(startOfMonth.subtract(const Duration(days: 1)));
    }).toList();

    final totalWorkouts = records.length;
    final totalCalories = records.fold(0, (sum, record) => sum + record.calories);
    final totalDuration = records.fold(0, (sum, record) => sum + record.duration);
    final thisWeekWorkouts = thisWeekRecords.length;
    final thisMonthWorkouts = thisMonthRecords.length;

    return {
      'totalWorkouts': totalWorkouts,
      'totalCalories': totalCalories,
      'totalDuration': totalDuration,
      'thisWeekWorkouts': thisWeekWorkouts,
      'thisMonthWorkouts': thisMonthWorkouts,
    };
  }
}
