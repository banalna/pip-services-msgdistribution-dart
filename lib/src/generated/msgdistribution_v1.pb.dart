///
//  Generated code. Do not modify.
//  source: msgdistribution_v1.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ErrorDescription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ErrorDescription', package: const $pb.PackageName('msgdistribution_v1'), createEmptyInstance: create)
    ..aOS(1, 'type')
    ..aOS(2, 'category')
    ..aOS(3, 'code')
    ..aOS(4, 'correlationId')
    ..aOS(5, 'status')
    ..aOS(6, 'message')
    ..aOS(7, 'cause')
    ..aOS(8, 'stackTrace')
    ..m<$core.String, $core.String>(9, 'details', entryClassName: 'ErrorDescription.DetailsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('msgdistribution_v1'))
    ..hasRequiredFields = false
  ;

  ErrorDescription._() : super();
  factory ErrorDescription() => create();
  factory ErrorDescription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorDescription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ErrorDescription clone() => ErrorDescription()..mergeFromMessage(this);
  ErrorDescription copyWith(void Function(ErrorDescription) updates) => super.copyWith((message) => updates(message as ErrorDescription));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ErrorDescription create() => ErrorDescription._();
  ErrorDescription createEmptyInstance() => create();
  static $pb.PbList<ErrorDescription> createRepeated() => $pb.PbList<ErrorDescription>();
  @$core.pragma('dart2js:noInline')
  static ErrorDescription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorDescription>(create);
  static ErrorDescription _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get category => $_getSZ(1);
  @$pb.TagNumber(2)
  set category($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get code => $_getSZ(2);
  @$pb.TagNumber(3)
  set code($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get correlationId => $_getSZ(3);
  @$pb.TagNumber(4)
  set correlationId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCorrelationId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCorrelationId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get status => $_getSZ(4);
  @$pb.TagNumber(5)
  set status($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get message => $_getSZ(5);
  @$pb.TagNumber(6)
  set message($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMessage() => $_has(5);
  @$pb.TagNumber(6)
  void clearMessage() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get cause => $_getSZ(6);
  @$pb.TagNumber(7)
  set cause($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCause() => $_has(6);
  @$pb.TagNumber(7)
  void clearCause() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get stackTrace => $_getSZ(7);
  @$pb.TagNumber(8)
  set stackTrace($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStackTrace() => $_has(7);
  @$pb.TagNumber(8)
  void clearStackTrace() => clearField(8);

  @$pb.TagNumber(9)
  $core.Map<$core.String, $core.String> get details => $_getMap(8);
}

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Message', package: const $pb.PackageName('msgdistribution_v1'), createEmptyInstance: create)
    ..aOS(1, 'template')
    ..aOS(2, 'from')
    ..aOS(3, 'cc')
    ..aOS(4, 'bcc')
    ..aOS(5, 'replyTo')
    ..aOS(6, 'subject')
    ..aOS(7, 'text')
    ..aOS(8, 'html')
    ..hasRequiredFields = false
  ;

  Message._() : super();
  factory Message() => create();
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Message clone() => Message()..mergeFromMessage(this);
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get template => $_getSZ(0);
  @$pb.TagNumber(1)
  set template($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTemplate() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemplate() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get from => $_getSZ(1);
  @$pb.TagNumber(2)
  set from($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get cc => $_getSZ(2);
  @$pb.TagNumber(3)
  set cc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCc() => $_has(2);
  @$pb.TagNumber(3)
  void clearCc() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get bcc => $_getSZ(3);
  @$pb.TagNumber(4)
  set bcc($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBcc() => $_has(3);
  @$pb.TagNumber(4)
  void clearBcc() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get replyTo => $_getSZ(4);
  @$pb.TagNumber(5)
  set replyTo($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReplyTo() => $_has(4);
  @$pb.TagNumber(5)
  void clearReplyTo() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get subject => $_getSZ(5);
  @$pb.TagNumber(6)
  set subject($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSubject() => $_has(5);
  @$pb.TagNumber(6)
  void clearSubject() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get text => $_getSZ(6);
  @$pb.TagNumber(7)
  set text($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasText() => $_has(6);
  @$pb.TagNumber(7)
  void clearText() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get html => $_getSZ(7);
  @$pb.TagNumber(8)
  set html($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHtml() => $_has(7);
  @$pb.TagNumber(8)
  void clearHtml() => clearField(8);
}

class Recipient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Recipient', package: const $pb.PackageName('msgdistribution_v1'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..aOS(3, 'email')
    ..aOS(4, 'phone')
    ..aOS(5, 'language')
    ..hasRequiredFields = false
  ;

  Recipient._() : super();
  factory Recipient() => create();
  factory Recipient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Recipient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Recipient clone() => Recipient()..mergeFromMessage(this);
  Recipient copyWith(void Function(Recipient) updates) => super.copyWith((message) => updates(message as Recipient));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Recipient create() => Recipient._();
  Recipient createEmptyInstance() => create();
  static $pb.PbList<Recipient> createRepeated() => $pb.PbList<Recipient>();
  @$core.pragma('dart2js:noInline')
  static Recipient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Recipient>(create);
  static Recipient _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(4)
  set phone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhone() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get language => $_getSZ(4);
  @$pb.TagNumber(5)
  set language($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLanguage() => $_has(4);
  @$pb.TagNumber(5)
  void clearLanguage() => clearField(5);
}

class SendMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendMessageRequest', package: const $pb.PackageName('msgdistribution_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..aOS(2, 'method')
    ..aOM<Message>(3, 'message', subBuilder: Message.create)
    ..m<$core.String, $core.String>(4, 'parameters', entryClassName: 'SendMessageRequest.ParametersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('msgdistribution_v1'))
    ..aOM<Recipient>(5, 'recipient', subBuilder: Recipient.create)
    ..hasRequiredFields = false
  ;

  SendMessageRequest._() : super();
  factory SendMessageRequest() => create();
  factory SendMessageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendMessageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendMessageRequest clone() => SendMessageRequest()..mergeFromMessage(this);
  SendMessageRequest copyWith(void Function(SendMessageRequest) updates) => super.copyWith((message) => updates(message as SendMessageRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendMessageRequest create() => SendMessageRequest._();
  SendMessageRequest createEmptyInstance() => create();
  static $pb.PbList<SendMessageRequest> createRepeated() => $pb.PbList<SendMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static SendMessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMessageRequest>(create);
  static SendMessageRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get method => $_getSZ(1);
  @$pb.TagNumber(2)
  set method($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMethod() => $_has(1);
  @$pb.TagNumber(2)
  void clearMethod() => clearField(2);

  @$pb.TagNumber(3)
  Message get message => $_getN(2);
  @$pb.TagNumber(3)
  set message(Message v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
  @$pb.TagNumber(3)
  Message ensureMessage() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get parameters => $_getMap(3);

  @$pb.TagNumber(5)
  Recipient get recipient => $_getN(4);
  @$pb.TagNumber(5)
  set recipient(Recipient v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRecipient() => $_has(4);
  @$pb.TagNumber(5)
  void clearRecipient() => clearField(5);
  @$pb.TagNumber(5)
  Recipient ensureRecipient() => $_ensure(4);
}

class SendMessagesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendMessagesRequest', package: const $pb.PackageName('msgdistribution_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..aOS(2, 'method')
    ..aOM<Message>(3, 'message', subBuilder: Message.create)
    ..m<$core.String, $core.String>(4, 'parameters', entryClassName: 'SendMessagesRequest.ParametersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('msgdistribution_v1'))
    ..pc<Recipient>(5, 'recipients', $pb.PbFieldType.PM, subBuilder: Recipient.create)
    ..hasRequiredFields = false
  ;

  SendMessagesRequest._() : super();
  factory SendMessagesRequest() => create();
  factory SendMessagesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendMessagesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendMessagesRequest clone() => SendMessagesRequest()..mergeFromMessage(this);
  SendMessagesRequest copyWith(void Function(SendMessagesRequest) updates) => super.copyWith((message) => updates(message as SendMessagesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendMessagesRequest create() => SendMessagesRequest._();
  SendMessagesRequest createEmptyInstance() => create();
  static $pb.PbList<SendMessagesRequest> createRepeated() => $pb.PbList<SendMessagesRequest>();
  @$core.pragma('dart2js:noInline')
  static SendMessagesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMessagesRequest>(create);
  static SendMessagesRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get method => $_getSZ(1);
  @$pb.TagNumber(2)
  set method($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMethod() => $_has(1);
  @$pb.TagNumber(2)
  void clearMethod() => clearField(2);

  @$pb.TagNumber(3)
  Message get message => $_getN(2);
  @$pb.TagNumber(3)
  set message(Message v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
  @$pb.TagNumber(3)
  Message ensureMessage() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get parameters => $_getMap(3);

  @$pb.TagNumber(5)
  $core.List<Recipient> get recipients => $_getList(4);
}

class SendMessageWithRecipientRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendMessageWithRecipientRequest', package: const $pb.PackageName('msgdistribution_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..aOS(2, 'method')
    ..aOM<Message>(3, 'message', subBuilder: Message.create)
    ..m<$core.String, $core.String>(4, 'parameters', entryClassName: 'SendMessageWithRecipientRequest.ParametersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('msgdistribution_v1'))
    ..aOS(5, 'subscription')
    ..aOS(6, 'recipientId')
    ..hasRequiredFields = false
  ;

  SendMessageWithRecipientRequest._() : super();
  factory SendMessageWithRecipientRequest() => create();
  factory SendMessageWithRecipientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendMessageWithRecipientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendMessageWithRecipientRequest clone() => SendMessageWithRecipientRequest()..mergeFromMessage(this);
  SendMessageWithRecipientRequest copyWith(void Function(SendMessageWithRecipientRequest) updates) => super.copyWith((message) => updates(message as SendMessageWithRecipientRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendMessageWithRecipientRequest create() => SendMessageWithRecipientRequest._();
  SendMessageWithRecipientRequest createEmptyInstance() => create();
  static $pb.PbList<SendMessageWithRecipientRequest> createRepeated() => $pb.PbList<SendMessageWithRecipientRequest>();
  @$core.pragma('dart2js:noInline')
  static SendMessageWithRecipientRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMessageWithRecipientRequest>(create);
  static SendMessageWithRecipientRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get method => $_getSZ(1);
  @$pb.TagNumber(2)
  set method($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMethod() => $_has(1);
  @$pb.TagNumber(2)
  void clearMethod() => clearField(2);

  @$pb.TagNumber(3)
  Message get message => $_getN(2);
  @$pb.TagNumber(3)
  set message(Message v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
  @$pb.TagNumber(3)
  Message ensureMessage() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get parameters => $_getMap(3);

  @$pb.TagNumber(5)
  $core.String get subscription => $_getSZ(4);
  @$pb.TagNumber(5)
  set subscription($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSubscription() => $_has(4);
  @$pb.TagNumber(5)
  void clearSubscription() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get recipientId => $_getSZ(5);
  @$pb.TagNumber(6)
  set recipientId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRecipientId() => $_has(5);
  @$pb.TagNumber(6)
  void clearRecipientId() => clearField(6);
}

class SendMessageWithRecipientsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendMessageWithRecipientsRequest', package: const $pb.PackageName('msgdistribution_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..aOS(2, 'method')
    ..aOM<Message>(3, 'message', subBuilder: Message.create)
    ..m<$core.String, $core.String>(4, 'parameters', entryClassName: 'SendMessageWithRecipientsRequest.ParametersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('msgdistribution_v1'))
    ..aOS(5, 'subscription')
    ..pPS(6, 'recipientIds')
    ..hasRequiredFields = false
  ;

  SendMessageWithRecipientsRequest._() : super();
  factory SendMessageWithRecipientsRequest() => create();
  factory SendMessageWithRecipientsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendMessageWithRecipientsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendMessageWithRecipientsRequest clone() => SendMessageWithRecipientsRequest()..mergeFromMessage(this);
  SendMessageWithRecipientsRequest copyWith(void Function(SendMessageWithRecipientsRequest) updates) => super.copyWith((message) => updates(message as SendMessageWithRecipientsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendMessageWithRecipientsRequest create() => SendMessageWithRecipientsRequest._();
  SendMessageWithRecipientsRequest createEmptyInstance() => create();
  static $pb.PbList<SendMessageWithRecipientsRequest> createRepeated() => $pb.PbList<SendMessageWithRecipientsRequest>();
  @$core.pragma('dart2js:noInline')
  static SendMessageWithRecipientsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMessageWithRecipientsRequest>(create);
  static SendMessageWithRecipientsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get method => $_getSZ(1);
  @$pb.TagNumber(2)
  set method($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMethod() => $_has(1);
  @$pb.TagNumber(2)
  void clearMethod() => clearField(2);

  @$pb.TagNumber(3)
  Message get message => $_getN(2);
  @$pb.TagNumber(3)
  set message(Message v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
  @$pb.TagNumber(3)
  Message ensureMessage() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get parameters => $_getMap(3);

  @$pb.TagNumber(5)
  $core.String get subscription => $_getSZ(4);
  @$pb.TagNumber(5)
  set subscription($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSubscription() => $_has(4);
  @$pb.TagNumber(5)
  void clearSubscription() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get recipientIds => $_getList(5);
}

class SendEmptyReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendEmptyReply', package: const $pb.PackageName('msgdistribution_v1'), createEmptyInstance: create)
    ..aOM<ErrorDescription>(1, 'error', subBuilder: ErrorDescription.create)
    ..hasRequiredFields = false
  ;

  SendEmptyReply._() : super();
  factory SendEmptyReply() => create();
  factory SendEmptyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendEmptyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendEmptyReply clone() => SendEmptyReply()..mergeFromMessage(this);
  SendEmptyReply copyWith(void Function(SendEmptyReply) updates) => super.copyWith((message) => updates(message as SendEmptyReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendEmptyReply create() => SendEmptyReply._();
  SendEmptyReply createEmptyInstance() => create();
  static $pb.PbList<SendEmptyReply> createRepeated() => $pb.PbList<SendEmptyReply>();
  @$core.pragma('dart2js:noInline')
  static SendEmptyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendEmptyReply>(create);
  static SendEmptyReply _defaultInstance;

  @$pb.TagNumber(1)
  ErrorDescription get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(ErrorDescription v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  ErrorDescription ensureError() => $_ensure(0);
}

