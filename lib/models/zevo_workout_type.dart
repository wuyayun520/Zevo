class ZevoWorkoutType {
  final String id;
  final String name;
  final String icon;
  final String description;
  final int averageCaloriesPerMinute;

  const ZevoWorkoutType({
    required this.id,
    required this.name,
    required this.icon,
    required this.description,
    required this.averageCaloriesPerMinute,
  });

  static const List<ZevoWorkoutType> defaultTypes = [
    ZevoWorkoutType(
      id: 'running',
      name: 'Running',
      icon: '🏃‍♂️',
      description: 'Cardio running exercise',
      averageCaloriesPerMinute: 10,
    ),
    ZevoWorkoutType(
      id: 'cycling',
      name: 'Cycling',
      icon: '🚴‍♂️',
      description: 'Bicycle riding exercise',
      averageCaloriesPerMinute: 8,
    ),
    ZevoWorkoutType(
      id: 'swimming',
      name: 'Swimming',
      icon: '🏊‍♂️',
      description: 'Swimming exercise',
      averageCaloriesPerMinute: 12,
    ),
    ZevoWorkoutType(
      id: 'weightlifting',
      name: 'Weight Lifting',
      icon: '🏋️‍♂️',
      description: 'Strength training with weights',
      averageCaloriesPerMinute: 6,
    ),
    ZevoWorkoutType(
      id: 'yoga',
      name: 'Yoga',
      icon: '🧘‍♀️',
      description: 'Yoga and stretching',
      averageCaloriesPerMinute: 3,
    ),
    ZevoWorkoutType(
      id: 'walking',
      name: 'Walking',
      icon: '🚶‍♂️',
      description: 'Walking exercise',
      averageCaloriesPerMinute: 4,
    ),
    ZevoWorkoutType(
      id: 'dancing',
      name: 'Dancing',
      icon: '💃',
      description: 'Dance exercise',
      averageCaloriesPerMinute: 7,
    ),
    ZevoWorkoutType(
      id: 'boxing',
      name: 'Boxing',
      icon: '🥊',
      description: 'Boxing workout',
      averageCaloriesPerMinute: 9,
    ),
  ];
}
