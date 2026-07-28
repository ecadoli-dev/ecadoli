import '../models/post_model.dart';
import '../models/user_model.dart';

class MockData {
  static final UserModel currentUser = UserModel(
    id: '1',
    fullName: 'Ecadoli User',
    username: 'ecadoli',
    email: 'user@ecadoli.com',
    profileImage: '',
    bio: 'Welcome to ecadoli 🚀',
    isVerified: true,
  );

  static final List<PostModel> posts = [
    PostModel(
      id: '1',
      author: currentUser,
      content:
          'Welcome to ecadoli! This is the first post in our new social platform. 🚀',
      images: [],
      createdAt: DateTime.now(),
      likes: 125,
      comments: 18,
      isLiked: false,
    ),
    PostModel(
      id: '2',
      author: currentUser,
      content:
          'Soon we will add Chat, AI Assistant, Stories, Groups and much more.',
      images: [],
      createdAt: DateTime.now(),
      likes: 87,
      comments: 9,
      isLiked: true,
    ),
  ];
}