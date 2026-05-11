import 'package:hive/hive.dart';

part 'user_state.g.dart';

@HiveType(typeId: 0)
class UserStreak extends HiveObject {
  @HiveField(0)
  int currentStreak;

  @HiveField(1)
  DateTime? lastActiveDate;

  UserStreak({this.currentStreak = 0, this.lastActiveDate});
}

@HiveType(typeId: 1)
class TopicProgress extends HiveObject {
  @HiveField(0)
  String topicId;

  @HiveField(1)
  bool isCompleted;

  @HiveField(2)
  int revisionCount;

  @HiveField(3)
  bool isBookmarked;

  TopicProgress({
    required this.topicId,
    this.isCompleted = false,
    this.revisionCount = 0,
    this.isBookmarked = false,
  });
}
