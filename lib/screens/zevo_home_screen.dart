import 'package:flutter/material.dart';
import '../models/zevo_workout_record.dart';
import '../models/zevo_user.dart';
import '../services/zevo_storage_service.dart';
import '../utils/zevo_date_utils.dart';
import 'zevo_add_workout_screen.dart';
import 'zevo_history_screen.dart';
import 'zevo_settings_screen.dart';

class ZevoHomeScreen extends StatefulWidget {
  const ZevoHomeScreen({super.key});

  @override
  State<ZevoHomeScreen> createState() => _ZevoHomeScreenState();
}

class _ZevoHomeScreenState extends State<ZevoHomeScreen> {
  List<ZevoWorkoutRecord> _todayWorkouts = [];
  Map<String, dynamic> _statistics = {};
  ZevoUser? _user;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final user = await ZevoStorageService.getUser();
      final allRecords = await ZevoStorageService.getWorkoutRecords();
      final today = DateTime.now();
      
      final todayWorkouts = allRecords.where((record) {
        return ZevoDateUtils.isSameDay(record.date, today);
      }).toList();

      final statistics = await ZevoStorageService.getStatistics();

      setState(() {
        _user = user;
        _todayWorkouts = todayWorkouts;
        _statistics = statistics;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Zevo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ZevoHistoryScreen()),
              ).then((_) => _loadData());
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ZevoSettingsScreen()),
              ).then((_) => _loadData());
            },
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: _loadData,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildWelcomeCard(),
                    const SizedBox(height: 20),
                    _buildTodayCard(),
                    const SizedBox(height: 20),
                    _buildStatisticsCard(),
                    const SizedBox(height: 20),
                    _buildRecentWorkoutsCard(),
                  ],
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ZevoAddWorkoutScreen()),
          ).then((_) => _loadData());
        },
        icon: const Icon(Icons.add),
        label: const Text('Add Workout'),
      ),
    );
  }

  Widget _buildWelcomeCard() {
    final userName = _user?.name ?? 'User';
    final currentHour = DateTime.now().hour;
    String greeting;
    
    if (currentHour < 12) {
      greeting = 'Good Morning';
    } else if (currentHour < 18) {
      greeting = 'Good Afternoon';
    } else {
      greeting = 'Good Evening';
    }

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            colors: [Color(0xFFBBFF2F), Color(0xFF9EE02A)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$greeting,',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            Text(
              userName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Ready to crush your fitness goals?',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTodayCard() {
    final today = DateTime.now();
    final totalCalories = _todayWorkouts.fold(0, (sum, record) => sum + record.calories);
    final totalDuration = _todayWorkouts.fold(0, (sum, record) => sum + record.duration);

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.today, color: Color(0xFFBBFF2F)),
                const SizedBox(width: 8),
                Text(
                  'Today - ${ZevoDateUtils.formatDate(today)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _buildStatItem(
                    'Workouts',
                    '${_todayWorkouts.length}',
                    Icons.fitness_center,
                  ),
                ),
                Expanded(
                  child: _buildStatItem(
                    'Calories',
                    '$totalCalories',
                    Icons.local_fire_department,
                  ),
                ),
                Expanded(
                  child: _buildStatItem(
                    'Duration',
                    ZevoDateUtils.formatDuration(totalDuration),
                    Icons.timer,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: const Color(0xFFBBFF2F), size: 24),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  Widget _buildStatisticsCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.analytics, color: Color(0xFFBBFF2F)),
                SizedBox(width: 8),
                Text(
                  'Statistics',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _buildStatItem(
                    'This Week',
                    '${_statistics['thisWeekWorkouts'] ?? 0}',
                    Icons.calendar_view_week,
                  ),
                ),
                Expanded(
                  child: _buildStatItem(
                    'This Month',
                    '${_statistics['thisMonthWorkouts'] ?? 0}',
                    Icons.calendar_month,
                  ),
                ),
                Expanded(
                  child: _buildStatItem(
                    'Total',
                    '${_statistics['totalWorkouts'] ?? 0}',
                    Icons.trending_up,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentWorkoutsCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.history, color: Color(0xFFBBFF2F)),
                    SizedBox(width: 8),
                    Text(
                      'Recent Workouts',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ZevoHistoryScreen()),
                    ).then((_) => _loadData());
                  },
                  child: const Text('View All'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (_todayWorkouts.isEmpty)
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'No workouts today.\nStart your fitness journey!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
              )
            else
              ..._todayWorkouts.take(3).map((workout) => _buildWorkoutItem(workout)),
          ],
        ),
      ),
    );
  }

  Widget _buildWorkoutItem(ZevoWorkoutRecord workout) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFBBFF2F).withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.fitness_center,
              color: Color(0xFFBBFF2F),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  workout.workoutType,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '${workout.duration} min • ${workout.calories} cal',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Text(
            ZevoDateUtils.formatTime(workout.date),
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
