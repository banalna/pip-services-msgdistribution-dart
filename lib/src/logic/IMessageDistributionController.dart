import 'dart:async';
import 'package:pip_services3_commons/pip_services3_commons.dart';

import '../data/version1/MessageV1.dart';
import '../data/version1/RecipientV1.dart';

abstract class IMessageDistributionController {
  Future sendMessage(String correlationId, RecipientV1 recipient,
      MessageV1 message, ConfigParams parameters, String method);

  Future sendMessages(String correlationId, List<RecipientV1> recipients,
      MessageV1 message, ConfigParams parameters, String method);

  Future sendMessageToRecipient(
      String correlationId,
      String recipientId,
      String subscription,
      MessageV1 message,
      ConfigParams parameters,
      String method);

  Future sendMessageToRecipients(
      String correlationId,
      List<String> recipientIds,
      String subscription,
      MessageV1 message,
      ConfigParams parameters,
      String method);
}
