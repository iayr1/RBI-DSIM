// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_state.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserStreakAdapter extends TypeAdapter<UserStreak> {
  @override
  final int typeId = 0;

  @override
  UserStreak read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserStreak(
      currentStreak: fields[0] as int,
      lastActiveDate: fields[1] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, UserStreak obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.currentStreak)
      ..writeByte(1)
      ..write(obj.lastActiveDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserStreakAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TopicProgressAdapter extends TypeAdapter<TopicProgress> {
  @override
  final int typeId = 1;

  @override
  TopicProgress read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TopicProgress(
      topicId: fields[0] as String,
      isCompleted: fields[1] as bool,
      revisionCount: fields[2] as int,
      isBookmarked: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, TopicProgress obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.topicId)
      ..writeByte(1)
      ..write(obj.isCompleted)
      ..writeByte(2)
      ..write(obj.revisionCount)
      ..writeByte(3)
      ..write(obj.isBookmarked);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TopicProgressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
