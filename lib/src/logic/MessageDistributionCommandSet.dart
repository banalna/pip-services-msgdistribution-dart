import 'package:pip_services3_commons/pip_services3_commons.dart';

import '../../src/data/version1/MessageV1Schema.dart';
import '../../src/data/version1/MessageV1.dart';
import '../../src/data/version1/RecipientV1Schema.dart';
import '../../src/data/version1/RecipientV1.dart';
import './IMessageDistributionController.dart';

class MessageDistributionCommandSet extends CommandSet {
  IMessageDistributionController _logic;

  MessageDistributionCommandSet(IMessageDistributionController logic)
      : super() {
    _logic = logic;

    addCommand(_makeSendMessageCommand());
    addCommand(_makeSendMessagesCommand());
    addCommand(_makeSendMessageToRecipientCommand());
    addCommand(_makeSendMessageToRecipientsCommand());
  }

  ICommand _makeSendMessageCommand() {
    return Command(
        'send_message',
        ObjectSchema(true)
            .withRequiredProperty('message', MessageV1Schema())
            .withRequiredProperty('recipient', RecipientV1Schema())
            .withOptionalProperty('parameters', TypeCode.Map)
            .withOptionalProperty('method', TypeCode.String),
        (String correlationId, Parameters args) {
      var message = MessageV1();
      message.fromJson(args.get('message'));

      var recipient = RecipientV1();
      recipient.fromJson(args.get('recipient'));
      var parameters = ConfigParams.fromValue(args.get('parameters'));
      var method = args.getAsNullableString('method');
      _logic.sendMessage(correlationId, recipient, message, parameters, method);
    });
  }

  ICommand _makeSendMessagesCommand() {
    return Command(
        'send_messages',
        ObjectSchema(true)
            .withRequiredProperty('message', MessageV1Schema())
            .withRequiredProperty(
                'recipients', ArraySchema(RecipientV1Schema()))
            .withOptionalProperty('parameters', TypeCode.Map)
            .withOptionalProperty('method', TypeCode.String),
        (String correlationId, Parameters args) {
      var message = MessageV1();
      message.fromJson(args.get('message'));
      var recipients = List<RecipientV1>.from(args
          .get('recipients')
          .map((itemsJson) => RecipientV1.fromJson(itemsJson)));
      var parameters = ConfigParams.fromValue(args.get('parameters'));
      var method = args.getAsNullableString('method');
      _logic.sendMessages(
          correlationId, recipients, message, parameters, method);
    });
  }

  ICommand _makeSendMessageToRecipientCommand() {
    return Command(
        'send_message_to_recipient',
        ObjectSchema(true)
            .withRequiredProperty('message', MessageV1Schema())
            .withRequiredProperty('recipient_id', TypeCode.String)
            .withOptionalProperty('subscription', TypeCode.String)
            .withOptionalProperty('parameters', TypeCode.Map)
            .withOptionalProperty('method', TypeCode.String),
        (String correlationId, Parameters args) {
      var message = MessageV1();
      message.fromJson(args.get('message'));
      var recipientId = args.getAsString('recipient_id');
      var subscription = args.getAsString('subscription');
      var parameters = ConfigParams.fromValue(args.get('parameters'));
      var method = args.getAsNullableString('method');
      _logic.sendMessageToRecipient(correlationId, recipientId, subscription,
          message, parameters, method);
    });
  }

  ICommand _makeSendMessageToRecipientsCommand() {
    return Command(
        'send_message_to_recipients',
        ObjectSchema(true)
            .withRequiredProperty('message', MessageV1Schema())
            .withRequiredProperty('recipient_ids', ArraySchema(TypeCode.String))
            .withOptionalProperty('subscription', TypeCode.String)
            .withOptionalProperty('parameters', TypeCode.Map)
            .withOptionalProperty('method', TypeCode.String),
        (String correlationId, Parameters args) {
      var message = MessageV1();
      message.fromJson(args.get('message'));
      var recipientIds = List<String>.from(args.get('recipient_ids'));
      var subscription = args.getAsString('subscription');
      var parameters = ConfigParams.fromValue(args.get('parameters'));
      var method = args.getAsNullableString('method');
      _logic.sendMessageToRecipients(correlationId, recipientIds, subscription,
          message, parameters, method);
    });
  }
}
