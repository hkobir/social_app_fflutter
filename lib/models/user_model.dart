import 'package:social_app_flutter/models/post_model.dart';

class User {
  final String profileImageUrl, backgroundImageUrl, name;
  final int following, followers;
  final List<Post> posts;
  final List<Post> favourites;

  User(
      {this.profileImageUrl,
      this.backgroundImageUrl,
      this.name,
      this.following,
      this.followers,
      this.posts,
      this.favourites});
}
