import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required int id,
    required String firstName,
    required String lastName,
    required String username,
    @Default(0) int? following,
    @Default(0) int? followers,
    @Default(0) int? likes,
    @Default([]) List<PostModel>? likedItems,
    @Default([]) List<PostModel>? myPosts,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, Object?> json) =>
      _$UserProfileModelFromJson(json);
}
