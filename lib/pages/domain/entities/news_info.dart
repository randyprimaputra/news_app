class NewsInfo {
  final String? title, author, imageURL, content;
  final String dateTime;

  const NewsInfo({
    this.title,
    this.author,
    this.imageURL,
    this.content,
    required this.dateTime,
  });
}
