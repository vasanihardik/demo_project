class QuizQuestions {
  const QuizQuestions(this.text,this.answers);

  final String text;
  final List<String> answers;

  List<String> get shuffleList{
     final list = List.of(answers);
     list.shuffle();
     return list;
  }
}


class Album {
  int? userId;
  int? id;
  String? title;

  Album({this.userId, this.id, this.title});

  Album.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    return data;
  }
}