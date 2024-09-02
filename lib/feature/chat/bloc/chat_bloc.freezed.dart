// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId, String senderId) loadMessages,
    required TResult Function(String receiverId, String message, String? image)
        sendMessage,
    required TResult Function(String chatRoomId, String messageId)
        markMessageAsSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String receiverId, String senderId)? loadMessages,
    TResult? Function(String receiverId, String message, String? image)?
        sendMessage,
    TResult? Function(String chatRoomId, String messageId)? markMessageAsSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId, String senderId)? loadMessages,
    TResult Function(String receiverId, String message, String? image)?
        sendMessage,
    TResult Function(String chatRoomId, String messageId)? markMessageAsSeen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMessages value) loadMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMessages value)? loadMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMessages value)? loadMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadMessagesImplCopyWith<$Res> {
  factory _$$LoadMessagesImplCopyWith(
          _$LoadMessagesImpl value, $Res Function(_$LoadMessagesImpl) then) =
      __$$LoadMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String receiverId, String senderId});
}

/// @nodoc
class __$$LoadMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$LoadMessagesImpl>
    implements _$$LoadMessagesImplCopyWith<$Res> {
  __$$LoadMessagesImplCopyWithImpl(
      _$LoadMessagesImpl _value, $Res Function(_$LoadMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverId = null,
    Object? senderId = null,
  }) {
    return _then(_$LoadMessagesImpl(
      null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMessagesImpl implements _LoadMessages {
  const _$LoadMessagesImpl(this.receiverId, this.senderId);

  @override
  final String receiverId;
  @override
  final String senderId;

  @override
  String toString() {
    return 'ChatEvent.loadMessages(receiverId: $receiverId, senderId: $senderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMessagesImpl &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiverId, senderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMessagesImplCopyWith<_$LoadMessagesImpl> get copyWith =>
      __$$LoadMessagesImplCopyWithImpl<_$LoadMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId, String senderId) loadMessages,
    required TResult Function(String receiverId, String message, String? image)
        sendMessage,
    required TResult Function(String chatRoomId, String messageId)
        markMessageAsSeen,
  }) {
    return loadMessages(receiverId, senderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String receiverId, String senderId)? loadMessages,
    TResult? Function(String receiverId, String message, String? image)?
        sendMessage,
    TResult? Function(String chatRoomId, String messageId)? markMessageAsSeen,
  }) {
    return loadMessages?.call(receiverId, senderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId, String senderId)? loadMessages,
    TResult Function(String receiverId, String message, String? image)?
        sendMessage,
    TResult Function(String chatRoomId, String messageId)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (loadMessages != null) {
      return loadMessages(receiverId, senderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMessages value) loadMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return loadMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMessages value)? loadMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return loadMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMessages value)? loadMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (loadMessages != null) {
      return loadMessages(this);
    }
    return orElse();
  }
}

abstract class _LoadMessages implements ChatEvent {
  const factory _LoadMessages(final String receiverId, final String senderId) =
      _$LoadMessagesImpl;

  String get receiverId;
  String get senderId;
  @JsonKey(ignore: true)
  _$$LoadMessagesImplCopyWith<_$LoadMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String receiverId, String message, String? image});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverId = null,
    Object? message = null,
    Object? image = freezed,
  }) {
    return _then(_$SendMessageImpl(
      null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(this.receiverId, this.message, this.image);

  @override
  final String receiverId;
  @override
  final String message;
  @override
  final String? image;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(receiverId: $receiverId, message: $message, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiverId, message, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId, String senderId) loadMessages,
    required TResult Function(String receiverId, String message, String? image)
        sendMessage,
    required TResult Function(String chatRoomId, String messageId)
        markMessageAsSeen,
  }) {
    return sendMessage(receiverId, message, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String receiverId, String senderId)? loadMessages,
    TResult? Function(String receiverId, String message, String? image)?
        sendMessage,
    TResult? Function(String chatRoomId, String messageId)? markMessageAsSeen,
  }) {
    return sendMessage?.call(receiverId, message, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId, String senderId)? loadMessages,
    TResult Function(String receiverId, String message, String? image)?
        sendMessage,
    TResult Function(String chatRoomId, String messageId)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(receiverId, message, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMessages value) loadMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMessages value)? loadMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMessages value)? loadMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage(
          final String receiverId, final String message, final String? image) =
      _$SendMessageImpl;

  String get receiverId;
  String get message;
  String? get image;
  @JsonKey(ignore: true)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkMessageAsSeenImplCopyWith<$Res> {
  factory _$$MarkMessageAsSeenImplCopyWith(_$MarkMessageAsSeenImpl value,
          $Res Function(_$MarkMessageAsSeenImpl) then) =
      __$$MarkMessageAsSeenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatRoomId, String messageId});
}

/// @nodoc
class __$$MarkMessageAsSeenImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$MarkMessageAsSeenImpl>
    implements _$$MarkMessageAsSeenImplCopyWith<$Res> {
  __$$MarkMessageAsSeenImplCopyWithImpl(_$MarkMessageAsSeenImpl _value,
      $Res Function(_$MarkMessageAsSeenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatRoomId = null,
    Object? messageId = null,
  }) {
    return _then(_$MarkMessageAsSeenImpl(
      null == chatRoomId
          ? _value.chatRoomId
          : chatRoomId // ignore: cast_nullable_to_non_nullable
              as String,
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkMessageAsSeenImpl implements _MarkMessageAsSeen {
  const _$MarkMessageAsSeenImpl(this.chatRoomId, this.messageId);

  @override
  final String chatRoomId;
  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatEvent.markMessageAsSeen(chatRoomId: $chatRoomId, messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkMessageAsSeenImpl &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatRoomId, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkMessageAsSeenImplCopyWith<_$MarkMessageAsSeenImpl> get copyWith =>
      __$$MarkMessageAsSeenImplCopyWithImpl<_$MarkMessageAsSeenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverId, String senderId) loadMessages,
    required TResult Function(String receiverId, String message, String? image)
        sendMessage,
    required TResult Function(String chatRoomId, String messageId)
        markMessageAsSeen,
  }) {
    return markMessageAsSeen(chatRoomId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String receiverId, String senderId)? loadMessages,
    TResult? Function(String receiverId, String message, String? image)?
        sendMessage,
    TResult? Function(String chatRoomId, String messageId)? markMessageAsSeen,
  }) {
    return markMessageAsSeen?.call(chatRoomId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverId, String senderId)? loadMessages,
    TResult Function(String receiverId, String message, String? image)?
        sendMessage,
    TResult Function(String chatRoomId, String messageId)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (markMessageAsSeen != null) {
      return markMessageAsSeen(chatRoomId, messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMessages value) loadMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_MarkMessageAsSeen value) markMessageAsSeen,
  }) {
    return markMessageAsSeen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMessages value)? loadMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_MarkMessageAsSeen value)? markMessageAsSeen,
  }) {
    return markMessageAsSeen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMessages value)? loadMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_MarkMessageAsSeen value)? markMessageAsSeen,
    required TResult orElse(),
  }) {
    if (markMessageAsSeen != null) {
      return markMessageAsSeen(this);
    }
    return orElse();
  }
}

abstract class _MarkMessageAsSeen implements ChatEvent {
  const factory _MarkMessageAsSeen(
          final String chatRoomId, final String messageId) =
      _$MarkMessageAsSeenImpl;

  String get chatRoomId;
  String get messageId;
  @JsonKey(ignore: true)
  _$$MarkMessageAsSeenImplCopyWith<_$MarkMessageAsSeenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  List<DocumentSnapshot<Object?>>? get messages =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {List<DocumentSnapshot<Object?>>? messages,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<DocumentSnapshot<Object?>>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DocumentSnapshot<Object?>>? messages,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ChatStateImpl(
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<DocumentSnapshot<Object?>>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {required final List<DocumentSnapshot<Object?>>? messages,
      required this.isLoading,
      required this.errorMessage})
      : _messages = messages;

  final List<DocumentSnapshot<Object?>>? _messages;
  @override
  List<DocumentSnapshot<Object?>>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ChatState(messages: $messages, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_messages), isLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required final List<DocumentSnapshot<Object?>>? messages,
      required final bool isLoading,
      required final String? errorMessage}) = _$ChatStateImpl;

  @override
  List<DocumentSnapshot<Object?>>? get messages;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
