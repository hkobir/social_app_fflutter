import 'package:social_app_flutter/models/user_model.dart';

class Post {
  final String imageUrl, title, location;
  final int likes, comments;
  final User author;

  Post({
      this.imageUrl,
      this.title,
      this.location,
      this.likes,
      this.comments,
      this.author
      });
}
