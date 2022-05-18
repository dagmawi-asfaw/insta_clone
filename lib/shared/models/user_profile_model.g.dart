// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileModel _$$_UserProfileModelFromJson(Map<String, dynamic> json) =>
    _$_UserProfileModel(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      username: json['username'] as String,
      profileImageUrl: json['profileImageUrl'] as String?,
      following: json['following'] as int? ?? 0,
      followers: json['followers'] as int? ?? 0,
      likes: json['likes'] as int? ?? 0,
      likedItems: (json['likedItems'] as List<dynamic>?)
              ?.map((e) => PostModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      myPosts: (json['myPosts'] as List<dynamic>?)
              ?.map((e) => PostModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserProfileModelToJson(_$_UserProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'username': instance.username,
      'profileImageUrl': instance.profileImageUrl,
      'following': instance.following,
      'followers': instance.followers,
      'likes': instance.likes,
      'likedItems': instance.likedItems,
      'myPosts': instance.myPosts,
    };
