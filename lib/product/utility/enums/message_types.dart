enum MessageTypes {
  text,
  image;

  bool get isImage => this == MessageTypes.image;
  bool get isText => this == MessageTypes.text;
}
