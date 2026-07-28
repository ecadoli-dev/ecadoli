import 'user_model.dart';

class PostModel {
  final String id;
  final UserModel author;
  final String content;
  final List<String> images;
  final DateTime createdAt;
  final int likes;
  final int comments;
  final bool isLiked;

  const PostModel({
    required this.id,
    required this.author,
    required this.content,
    required this.images,
    required this.createdAt,
    this.likes = 0,
    this.comments = 0,
    this.isLiked = false,
  });

  PostModel copyWith({
    String? id,
    UserModel? author,
    String? content,
    List<String>? images,
    DateTime? createdAt,
    int? likes,
    int? comments,
    bool? isLiked,
  }) {
    return PostModel(
      id: id ?? this.id,
      author: author ?? this.author,
      content: content ?? this.content,
      images: images ?? this.images,
      createdAt: createdAt ?? this.createdAt,
      likes: likes ?? this.likes,
      comments: comments ?? this.comments,
      isLiked: isLiked ?? this.isLiked,
    );
  }
}