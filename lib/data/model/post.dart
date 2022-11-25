import '../../domain/entity/post_entity.dart';

class Post extends PostEntity {
  late int id;
  final String name_post;


  Post(this.id, this.name_post)
      : super(id, name_post);

  Map<String, dynamic> toMap() => {
        'id': id,
        'name_post': name_post,
       
      };

  factory Post.toFromMap(Map<String, dynamic> json) =>
      Post(
        json['id'], 
        json['name_post']);
}
