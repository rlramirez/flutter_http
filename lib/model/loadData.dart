import 'dart:convert';

class LoadData{
  final String username;
  final String email;

  LoadData({required this.email, required this.username});
  factory LoadData.fromJson(Map<String, dynamic> json){
    return LoadData(
      email: json['email'],
      username: json['username'],
    );
  }
}