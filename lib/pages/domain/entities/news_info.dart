class NewsInfo {
  final String? title;
  final String? author;
  final String? imageURL;
  final String? content;
  final String dateTime;

  const NewsInfo({
    this.title,
    this.author,
    this.imageURL,
    this.content,
    required this.dateTime,
  });
}
