extension SortedChatRoomId on List<String> {
  String get generateChatRoomId {
    sort();
    return join('_');
  }
}
