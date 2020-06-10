///
//  Generated code. Do not modify.
//  source: msgdistribution_v1.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'msgdistribution_v1.pb.dart' as $0;
export 'msgdistribution_v1.pb.dart';

class MessageDistributionClient extends $grpc.Client {
  static final _$send_message =
      $grpc.ClientMethod<$0.SendMessageRequest, $0.SendEmptyReply>(
          '/msgdistribution_v1.MessageDistribution/send_message',
          ($0.SendMessageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SendEmptyReply.fromBuffer(value));
  static final _$send_messages =
      $grpc.ClientMethod<$0.SendMessagesRequest, $0.SendEmptyReply>(
          '/msgdistribution_v1.MessageDistribution/send_messages',
          ($0.SendMessagesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SendEmptyReply.fromBuffer(value));
  static final _$send_message_to_recipient =
      $grpc.ClientMethod<$0.SendMessageWithRecipientRequest, $0.SendEmptyReply>(
          '/msgdistribution_v1.MessageDistribution/send_message_to_recipient',
          ($0.SendMessageWithRecipientRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SendEmptyReply.fromBuffer(value));
  static final _$send_message_to_recipients = $grpc.ClientMethod<
          $0.SendMessageWithRecipientsRequest, $0.SendEmptyReply>(
      '/msgdistribution_v1.MessageDistribution/send_message_to_recipients',
      ($0.SendMessageWithRecipientsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SendEmptyReply.fromBuffer(value));

  MessageDistributionClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.SendEmptyReply> send_message(
      $0.SendMessageRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$send_message, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SendEmptyReply> send_messages(
      $0.SendMessagesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$send_messages, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SendEmptyReply> send_message_to_recipient(
      $0.SendMessageWithRecipientRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$send_message_to_recipient, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SendEmptyReply> send_message_to_recipients(
      $0.SendMessageWithRecipientsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$send_message_to_recipients, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class MessageDistributionServiceBase extends $grpc.Service {
  $core.String get $name => 'msgdistribution_v1.MessageDistribution';

  MessageDistributionServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SendMessageRequest, $0.SendEmptyReply>(
        'send_message',
        send_message_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SendMessageRequest.fromBuffer(value),
        ($0.SendEmptyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendMessagesRequest, $0.SendEmptyReply>(
        'send_messages',
        send_messages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SendMessagesRequest.fromBuffer(value),
        ($0.SendEmptyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendMessageWithRecipientRequest,
            $0.SendEmptyReply>(
        'send_message_to_recipient',
        send_message_to_recipient_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SendMessageWithRecipientRequest.fromBuffer(value),
        ($0.SendEmptyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendMessageWithRecipientsRequest,
            $0.SendEmptyReply>(
        'send_message_to_recipients',
        send_message_to_recipients_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SendMessageWithRecipientsRequest.fromBuffer(value),
        ($0.SendEmptyReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.SendEmptyReply> send_message_Pre($grpc.ServiceCall call,
      $async.Future<$0.SendMessageRequest> request) async {
    return send_message(call, await request);
  }

  $async.Future<$0.SendEmptyReply> send_messages_Pre($grpc.ServiceCall call,
      $async.Future<$0.SendMessagesRequest> request) async {
    return send_messages(call, await request);
  }

  $async.Future<$0.SendEmptyReply> send_message_to_recipient_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SendMessageWithRecipientRequest> request) async {
    return send_message_to_recipient(call, await request);
  }

  $async.Future<$0.SendEmptyReply> send_message_to_recipients_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SendMessageWithRecipientsRequest> request) async {
    return send_message_to_recipients(call, await request);
  }

  $async.Future<$0.SendEmptyReply> send_message(
      $grpc.ServiceCall call, $0.SendMessageRequest request);
  $async.Future<$0.SendEmptyReply> send_messages(
      $grpc.ServiceCall call, $0.SendMessagesRequest request);
  $async.Future<$0.SendEmptyReply> send_message_to_recipient(
      $grpc.ServiceCall call, $0.SendMessageWithRecipientRequest request);
  $async.Future<$0.SendEmptyReply> send_message_to_recipients(
      $grpc.ServiceCall call, $0.SendMessageWithRecipientsRequest request);
}
