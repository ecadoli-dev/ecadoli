class UserModel {
  final String id;
  final String fullName;
  final String username;
  final String email;
  final String profileImage;
  final String bio;
  final bool isVerified;

  const UserModel({
    required this.id,
    required this.fullName,
    required this.username,
    required this.email,
    required this.profileImage,
    required this.bio,
    this.isVerified = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fullName': fullName,
      'username': username,
      'email': email,
      'profileImage': profileImage,
      'bio': bio,
      'isVerified': isVerified,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      fullName: map['fullName'] ?? '',
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      profileImage: map['profileImage'] ?? '',
      bio: map['bio'] ?? '',
      isVerified: map['isVerified'] ?? false,
    );
  }

  UserModel copyWith({
    String? id,
    String? fullName,
    String? username,
    String? email,
    String? profileImage,
    String? bio,
    bool? isVerified,
  }) {
    return UserModel(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      username: username ?? this.username,
      email: email ?? this.email,
      profileImage: profileImage ?? this.profileImage,
      bio: bio ?? this.bio,
      isVerified: isVerified ?? this.isVerified,
    );
  }
}