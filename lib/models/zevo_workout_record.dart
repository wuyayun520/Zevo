class ZevoWorkoutRecord {
  final String id;
  final DateTime date;
  final String workoutType;
  final int duration; // in minutes
  final int calories;
  final String notes;
  final String? imagePath; // 新增图片路径字段
  final DateTime createdAt;

  ZevoWorkoutRecord({
    required this.id,
    required this.date,
    required this.workoutType,
    required this.duration,
    required this.calories,
    this.notes = '',
    this.imagePath,
    required this.createdAt,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date.toIso8601String(),
      'workoutType': workoutType,
      'duration': duration,
      'calories': calories,
      'notes': notes,
      'imagePath': imagePath,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory ZevoWorkoutRecord.fromJson(Map<String, dynamic> json) {
    return ZevoWorkoutRecord(
      id: json['id'],
      date: DateTime.parse(json['date']),
      workoutType: json['workoutType'],
      duration: json['duration'],
      calories: json['calories'],
      notes: json['notes'] ?? '',
      imagePath: json['imagePath'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  ZevoWorkoutRecord copyWith({
    String? id,
    DateTime? date,
    String? workoutType,
    int? duration,
    int? calories,
    String? notes,
    String? imagePath,
    DateTime? createdAt,
  }) {
    return ZevoWorkoutRecord(
      id: id ?? this.id,
      date: date ?? this.date,
      workoutType: workoutType ?? this.workoutType,
      duration: duration ?? this.duration,
      calories: calories ?? this.calories,
      notes: notes ?? this.notes,
      imagePath: imagePath ?? this.imagePath,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
