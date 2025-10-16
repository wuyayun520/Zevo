import 'package:flutter/material.dart';
import 'dart:io';
import '../models/zevo_workout_record.dart';
import '../services/zevo_storage_service.dart';
import '../utils/zevo_date_utils.dart';
import 'zevo_add_workout_screen.dart';
import 'zevo_history_screen.dart';

class ZevoModule2Screen extends StatefulWidget {
  const ZevoModule2Screen({super.key});

  @override
  State<ZevoModule2Screen> createState() => _ZevoModule2ScreenState();
}

class _ZevoModule2ScreenState extends State<ZevoModule2Screen> {
  List<ZevoWorkoutRecord> _todayWorkouts = [];
  Map<String, dynamic> _statistics = {};
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
      final allRecords = await ZevoStorageService.getWorkoutRecords();
      final today = DateTime.now();
      
      final todayWorkouts = allRecords.where((record) {
        return ZevoDateUtils.isSameDay(record.date, today);
      }).toList();

      final statistics = await ZevoStorageService.getStatistics();

      setState(() {
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
      body: Stack(
        children: [
          // 背景图片
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/zevo_all_bg.webp'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // 主内容区域
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : RefreshIndicator(
                  onRefresh: _loadData,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 40),
                        _buildTodayCard(),
                        const SizedBox(height: 20),
                        _buildStatisticsCard(),
                        const SizedBox(height: 20),
                        _buildRecentWorkoutsCard(),
                        const SizedBox(height: 80), // 为悬浮按钮留出空间
                      ],
                    ),
                  ),
                ),
          // 悬浮添加按钮
          Positioned(
            right: 20,
            bottom: 140,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ZevoAddWorkoutScreen()),
                ).then((_) => _loadData());
              },
              backgroundColor: const Color(0xFFBBFF2F),
              child: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ),
        ],
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
          // 图片或图标
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFFBBFF2F).withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: workout.imagePath != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(
                      File(workout.imagePath!),
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.fitness_center,
                          color: Color(0xFFBBFF2F),
                        );
                      },
                    ),
                  )
                : const Icon(
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
                if (workout.notes.isNotEmpty)
                  Text(
                    workout.notes,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
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
