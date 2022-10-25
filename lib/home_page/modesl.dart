

class CommentModel {
  int? postId;
  int? id;
  String name;
  String email;
  String body;

  CommentModel({ this.postId,this.id,
    required this.name,required this.email,required this.body});

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    var postId = json['postId'];
    var id = json['id'];
    var name = json['name'];
    var email = json['email'];
    var body = json['body'];
    return CommentModel(body: body,email: email, id: id, name: name,postId: postId);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postId'] = this.postId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['body'] = this.body;
    return data;
  }

  @override
  String toString() {
    return 'CommentModel{postId: $postId, id: $id, name: $name, email: $email, body: $body}';
  }
}