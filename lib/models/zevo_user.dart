class ZevoUser {
  final String id;
  final String name;
  final String email;
  final DateTime createdAt;
  final int targetCalories;
  final int targetWorkoutsPerWeek;
  final String preferredWorkoutTime;

  ZevoUser({
    required this.id,
    required this.name,
    required this.email,
    required this.createdAt,
    this.targetCalories = 2000,
    this.targetWorkoutsPerWeek = 3,
    this.preferredWorkoutTime = 'Morning',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'createdAt': createdAt.toIso8601String(),
      'targetCalories': targetCalories,
      'targetWorkoutsPerWeek': targetWorkoutsPerWeek,
      'preferredWorkoutTime': preferredWorkoutTime,
    };
  }

  factory ZevoUser.fromJson(Map<String, dynamic> json) {
    return ZevoUser(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      createdAt: DateTime.parse(json['createdAt']),
      targetCalories: json['targetCalories'] ?? 2000,
      targetWorkoutsPerWeek: json['targetWorkoutsPerWeek'] ?? 3,
      preferredWorkoutTime: json['preferredWorkoutTime'] ?? 'Morning',
    );
  }

  ZevoUser copyWith({
    String? id,
    String? name,
    String? email,
    DateTime? createdAt,
    int? targetCalories,
    int? targetWorkoutsPerWeek,
    String? preferredWorkoutTime,
  }) {
    return ZevoUser(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      createdAt: createdAt ?? this.createdAt,
      targetCalories: targetCalories ?? this.targetCalories,
      targetWorkoutsPerWeek: targetWorkoutsPerWeek ?? this.targetWorkoutsPerWeek,
      preferredWorkoutTime: preferredWorkoutTime ?? this.preferredWorkoutTime,
    );
  }
}
