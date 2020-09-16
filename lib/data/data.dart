import 'package:social_app_flutter/models/post_model.dart';
import 'package:social_app_flutter/models/user_model.dart';

//all posts
final _post0 = Post(
  imageUrl: "assets/images/p0.jpg",
  title: "Post 0",
  location: "Location 0",
  likes: 220,
  comments: 120
);
final _post1 = Post(
  imageUrl: "assets/images/p1.jpg",
  title: "Post 1",
  location: "Location 1",
  likes: 220,
  comments: 120
);
final _post2 = Post(
    imageUrl: "assets/images/p2.jpg",
    title: "Post 2",
    location: "Location 2",
    likes: 220,
    comments: 120
);
final _post3 = Post(
    imageUrl: "assets/images/p3.jpg",
    title: "Post 3",
    location: "Location 3",
    likes: 220,
    comments: 120
);
final _post4 = Post(
    imageUrl: "assets/images/p4.jpg",
    title: "Post 4",
    location: "Location 4",
    likes: 220,
    comments: 120
);
final _post5 = Post(
    imageUrl: "assets/images/p5.jpg",
    title: "Post 5",
    location: "Location 5",
    likes: 220,
    comments: 120
);
final posts = [_post0,_post1,_post2,_post3,_post4,_post5];

//users
final users = [
  User(profileImageUrl: "assets/images/u0.jpg"),
  User(profileImageUrl: "assets/images/u1.jpg"),
  User(profileImageUrl: "assets/images/u2.jpg"),
  User(profileImageUrl: "assets/images/u3.jpg"),
  User(profileImageUrl: "assets/images/u4.jpg"),
  User(profileImageUrl: "assets/images/u5.jpg"),
  User(profileImageUrl: "assets/images/u6.jpg"),
  User(profileImageUrl: "assets/images/u7.jpg"),
];
final yourPosts = [_post0,_post2,_post3];
final yourFavourites = [_post4,_post2,_post1];

//current user
final User currentUser = User(
  profileImageUrl: "assets/images/u1.jpg",
  backgroundImageUrl: "assets/images/p4.jpg",
  name: "Mr. Kobir",
  followers: 230,
  following: 120,
  posts: yourPosts,
  favourites: yourFavourites
);
