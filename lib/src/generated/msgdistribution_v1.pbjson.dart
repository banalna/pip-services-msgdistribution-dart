///
//  Generated code. Do not modify.
//  source: msgdistribution_v1.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ErrorDescription$json = const {
  '1': 'ErrorDescription',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'category', '3': 2, '4': 1, '5': 9, '10': 'category'},
    const {'1': 'code', '3': 3, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'correlation_id', '3': 4, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'status', '3': 5, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'message', '3': 6, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'cause', '3': 7, '4': 1, '5': 9, '10': 'cause'},
    const {'1': 'stack_trace', '3': 8, '4': 1, '5': 9, '10': 'stackTrace'},
    const {'1': 'details', '3': 9, '4': 3, '5': 11, '6': '.msgdistribution_v1.ErrorDescription.DetailsEntry', '10': 'details'},
  ],
  '3': const [ErrorDescription_DetailsEntry$json],
};

const ErrorDescription_DetailsEntry$json = const {
  '1': 'DetailsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'template', '3': 1, '4': 1, '5': 9, '10': 'template'},
    const {'1': 'from', '3': 2, '4': 1, '5': 9, '10': 'from'},
    const {'1': 'cc', '3': 3, '4': 1, '5': 9, '10': 'cc'},
    const {'1': 'bcc', '3': 4, '4': 1, '5': 9, '10': 'bcc'},
    const {'1': 'reply_to', '3': 5, '4': 1, '5': 9, '10': 'replyTo'},
    const {'1': 'subject', '3': 6, '4': 1, '5': 9, '10': 'subject'},
    const {'1': 'text', '3': 7, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'html', '3': 8, '4': 1, '5': 9, '10': 'html'},
  ],
};

const Recipient$json = const {
  '1': 'Recipient',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 4, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'language', '3': 5, '4': 1, '5': 9, '10': 'language'},
  ],
};

const SendMessageRequest$json = const {
  '1': 'SendMessageRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'method', '3': 2, '4': 1, '5': 9, '10': 'method'},
    const {'1': 'message', '3': 3, '4': 1, '5': 11, '6': '.msgdistribution_v1.Message', '10': 'message'},
    const {'1': 'parameters', '3': 4, '4': 3, '5': 11, '6': '.msgdistribution_v1.SendMessageRequest.ParametersEntry', '10': 'parameters'},
    const {'1': 'recipient', '3': 5, '4': 1, '5': 11, '6': '.msgdistribution_v1.Recipient', '10': 'recipient'},
  ],
  '3': const [SendMessageRequest_ParametersEntry$json],
};

const SendMessageRequest_ParametersEntry$json = const {
  '1': 'ParametersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const SendMessagesRequest$json = const {
  '1': 'SendMessagesRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'method', '3': 2, '4': 1, '5': 9, '10': 'method'},
    const {'1': 'message', '3': 3, '4': 1, '5': 11, '6': '.msgdistribution_v1.Message', '10': 'message'},
    const {'1': 'parameters', '3': 4, '4': 3, '5': 11, '6': '.msgdistribution_v1.SendMessagesRequest.ParametersEntry', '10': 'parameters'},
    const {'1': 'recipients', '3': 5, '4': 3, '5': 11, '6': '.msgdistribution_v1.Recipient', '10': 'recipients'},
  ],
  '3': const [SendMessagesRequest_ParametersEntry$json],
};

const SendMessagesRequest_ParametersEntry$json = const {
  '1': 'ParametersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const SendMessageWithRecipientRequest$json = const {
  '1': 'SendMessageWithRecipientRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'method', '3': 2, '4': 1, '5': 9, '10': 'method'},
    const {'1': 'message', '3': 3, '4': 1, '5': 11, '6': '.msgdistribution_v1.Message', '10': 'message'},
    const {'1': 'parameters', '3': 4, '4': 3, '5': 11, '6': '.msgdistribution_v1.SendMessageWithRecipientRequest.ParametersEntry', '10': 'parameters'},
    const {'1': 'subscription', '3': 5, '4': 1, '5': 9, '10': 'subscription'},
    const {'1': 'recipient_id', '3': 6, '4': 1, '5': 9, '10': 'recipientId'},
  ],
  '3': const [SendMessageWithRecipientRequest_ParametersEntry$json],
};

const SendMessageWithRecipientRequest_ParametersEntry$json = const {
  '1': 'ParametersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const SendMessageWithRecipientsRequest$json = const {
  '1': 'SendMessageWithRecipientsRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'method', '3': 2, '4': 1, '5': 9, '10': 'method'},
    const {'1': 'message', '3': 3, '4': 1, '5': 11, '6': '.msgdistribution_v1.Message', '10': 'message'},
    const {'1': 'parameters', '3': 4, '4': 3, '5': 11, '6': '.msgdistribution_v1.SendMessageWithRecipientsRequest.ParametersEntry', '10': 'parameters'},
    const {'1': 'subscription', '3': 5, '4': 1, '5': 9, '10': 'subscription'},
    const {'1': 'recipient_ids', '3': 6, '4': 3, '5': 9, '10': 'recipientIds'},
  ],
  '3': const [SendMessageWithRecipientsRequest_ParametersEntry$json],
};

const SendMessageWithRecipientsRequest_ParametersEntry$json = const {
  '1': 'ParametersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const SendEmptyReply$json = const {
  '1': 'SendEmptyReply',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.msgdistribution_v1.ErrorDescription', '10': 'error'},
  ],
};

