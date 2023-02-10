class Article {
  String _title;
  String body;

  Article(String str)
      : _title = str,
        body = str.toUpperCase();

  @override
  String toString() {
    return '$title: $body';
  }

  String get title {
    return _title.toUpperCase();
  }

  set title(String newTitle) {
    if (newTitle.isEmpty) {
      throw 'Fuck you!';
    } else {
      _title = newTitle;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Article && other.body == body;
}
