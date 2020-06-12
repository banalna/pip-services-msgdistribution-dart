import 'dart:async';

import 'package:pip_clients_email/pip_clients_email.dart';
import 'package:pip_clients_emailsettings/pip_clients_emailsettings.dart';
import 'package:pip_clients_msgtemplates/pip_clients_msgtemplates.dart';
//import 'package:pip_clients_smssettings/pip_clients_smssettings.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services_email/pip_services_email.dart';
import 'package:pip_services_emailsettings/pip_services_emailsettings.dart';
import 'package:pip_services_msgdistribution/src/data/version1/RecipientV1.dart';
//import 'package:pip_services_smssettings/pip_services_smssettings.dart';

import '../../src/data/version1/MessageV1.dart';
import '../../src/data/version1/DeliveryMethodV1.dart';
import './IMessageDistributionController.dart';
import './MessageDistributionCommandSet.dart';

class MessageDistributionController
    implements
        IConfigurable,
        IReferenceable,
        ICommandable,
        IMessageDistributionController {
  static final _defaultConfig = ConfigParams.fromTuples([
    'dependencies.emailsettings',
    'pip-services-emailsettings:client:*:*:1.0',
    'dependencies.smssettings',
    'pip-services-smssettings:client:*:*:1.0',
    'dependencies.emaildelivery',
    'pip-services-email:client:*:*:1.0',
    'dependencies.smsdelivery',
    'pip-services-sms:client:*:*:1.0',
    'dependencies.msgtemplates',
    'pip-services-msgtemplates:client:*:*:1.0'
  ]);

  final DependencyResolver _dependencyResolver =
      DependencyResolver(MessageDistributionController._defaultConfig);
  IEmailSettingsClientV1 _emailSettingsClient;
  //ISmsSettingsClientV1 _smsSettingsClient;
  IEmailClientV1 _emailDeliveryClient;
  //ISmsClientV1 _smsDeliveryClient;
  IMessageTemplatesClientV1 _templatesClient;
  MessageDistributionCommandSet _commandSet;

  @override
  void configure(ConfigParams config) {
    config = config.setDefaults(MessageDistributionController._defaultConfig);
    _dependencyResolver.configure(config);
  }

  @override
  void setReferences(IReferences references) {
    _dependencyResolver.setReferences(references);

    _emailSettingsClient = _dependencyResolver
        .getOneOptional<IEmailSettingsClientV1>('emailsettings');
    //_smsSettingsClient = _dependencyResolver.getOneOptional<ISmsSettingsClientV1>('smssettings');
    _emailDeliveryClient =
        _dependencyResolver.getOneOptional<IEmailClientV1>('emaildelivery');
    //_smsDeliveryClient = _dependencyResolver.getOneOptional<ISmsClientV1>('smsdelivery');
    _templatesClient = _dependencyResolver
        .getOneOptional<IMessageTemplatesClientV1>('msgtemplates');
  }

  /// Gets a command set.
  ///
  /// Return Command set
  @override
  CommandSet getCommandSet() {
    _commandSet ??= MessageDistributionCommandSet(this);
    return _commandSet;
  }

  Future<MessageV1> _getMessage(String correlationId, MessageV1 message) async {
    // Validate for present message
    if (message == null) {
      throw BadRequestException(
          correlationId, 'MSG_MISSING', 'Message cannot be null');
    }

    // Process regular messages
    if (message.template == null && message.template != '') {
      if (message.subject == null &&
          message.html == null &&
          message.text == null) {
        throw BadRequestException(correlationId, 'MSG_EMPTY',
            'Message subject, text and html cannot all be empty at the same time');
      }
    }

    // Process message templates
    if (_templatesClient == null) {
      throw ConfigException(correlationId, 'MSG_TEMPLATE_CLIENT_UNDEFINED',
          'MessageTemplateClient is not defined');
    }

    // Retrieve template from message template service
    var template = await _templatesClient.getTemplateByIdOrName(
        correlationId, message.template);
    var err;
    if (template == null) {
      err = NotFoundException(correlationId, 'MSG_TEMPLATE_NOT_FOUND',
              'Message template ' + message.template + ' was not found')
          .withDetails('name', message.template);
    }

    if (err != null) {
      return null;
    } else {
      var resMessage = MessageV1(
          from: template.from,
          subject: template.subject,
          text: template.text,
          html: template.html);

      return resMessage;
    }
  }

  void _sendEmailMessages(String correlationId, List<dynamic> recipients,
      MessageV1 message, ConfigParams parameters) {
    if (_emailDeliveryClient == null) {
      throw ConfigException(correlationId, 'EMAIL_DELIVERY_CLIENT_UNDEFINED',
          'Email client is not defined');
    }

    var emailMessage = EmailMessageV1(
        from: message.from,
        subject: message.subject,
        text: message.text,
        html: message.html);

    var _recipients = recipients.where((r) => r.email != null).toList();

    var emailRecipients = _recipients.map((r) {
      var emailRecipient = EmailRecipientV1(
          id: r.id, name: r.name, email: r.email, language: r.language);
      return emailRecipient;
    }).toList();

    if (emailRecipients.isEmpty) {
      throw BadRequestException(correlationId, 'NO_EMAIL_RECIPIENTS',
          'email recipients.email not set; emailRecipients.length equals 0');
    }

    _emailDeliveryClient.sendMessageToRecipients(
        correlationId, emailRecipients, emailMessage, parameters);
  }

  void _sendSmsMessages(String correlationId, List<dynamic> recipients,
      MessageV1 message, ConfigParams parameters) {
    // if (_smsDeliveryClient == null) {
    //     throw ConfigException(
    //         correlationId,
    //         'SMS_DELIVERY_CLIENT_UNDEFINED',
    //         'Sms client is not defined'
    //     );
    // }

    // var smsMessage = SmsMessageV1(
    //      from: message.from,
    //      text: message.text ?? message.subject);

    // var _recipients = recipients.where((r) => r.phone != null).toList();

    // var smsRecipients = _recipients.map((r) {
    //   var smsRecipient = SmsRecipientV1(id: r.id, name: r.name, phone: r.phone, language: r.language);
    //   return smsRecipient;
    // }).toList();

    // if (smsRecipients.isEmpty) {
    //   throw BadRequestException(correlationId, 'NO_SMS_RECIPIENTS',
    //       'sms recipients.phone not set; smsRecipients.length equals 0');
    // }

    // _smsDeliveryClient.sendMessageToRecipients(
    //     correlationId, smsRecipients, smsMessage, parameters);
  }

  /// Send the message to recipient
  ///
  /// - [correlationId]    (optional) transaction id to trace execution through call chain.
  /// - [recipient]            a recipient of the message.
  /// - [message]              a message to be send.
  /// - [parameters]              an additional parameters to be send.
  /// - [method]              a delivery method(email and/or sms).
  @override
  Future sendMessage(String correlationId, RecipientV1 recipient,
      MessageV1 message, ConfigParams parameters, String method) {
    return sendMessages(
        correlationId, [recipient], message, parameters, method);
  }

  /// Send the messages to recipients
  ///
  /// - [correlationId]    (optional) transaction id to trace execution through call chain.
  /// - [recipients]            a recipients of the message.
  /// - [message]              a message to be send.
  /// - [parameters]              an additional parameters to be send.
  /// - [method]              a delivery method(email and/or sms).
  @override
  Future sendMessages(String correlationId, List<RecipientV1> recipients,
      MessageV1 message, ConfigParams parameters, String method) async {
    // Validate message or retrieve template
    var newMessage = await _getMessage(correlationId, message);

    // Deliver messages
    // Send via Email
    if (method == DeliveryMethodV1.Email || method == DeliveryMethodV1.All) {
      _sendEmailMessages(correlationId, recipients, newMessage, parameters);
    }
    // Send via SMS
    if (method == DeliveryMethodV1.Sms || method == DeliveryMethodV1.All) {
      _sendSmsMessages(correlationId, recipients, newMessage, parameters);
    }
  }

  Future<void> _sendEmailMessageToRecipients(
      String correlationId,
      List<String> recipientIds,
      String subscription,
      MessageV1 message,
      ConfigParams parameters) async {
    var settings = <EmailSettingsV1>[];
    var recipients = <EmailRecipientV1>[];

    if (_emailDeliveryClient == null || _emailSettingsClient == null) {
      throw ConfigException(
          correlationId,
          'EMAIL_OR_EMAIL_SETTINGS_CLIENT_UNDEFINED',
          'Email or emailSettings client is not defined');
    }

    // Retrieve recipient settings
    settings = await _emailSettingsClient.getSettingsByIds(
        correlationId, recipientIds);

    // Define recipients recipients
    if (subscription != null) {
      // To send via subscriptions email must be verified
      var resSettings = settings.where((s) => s.verified).toList();

      // Check subscriptions (defined means allowed)
      settings = resSettings.where((s) {
        var subscriptions = s.subscriptions ?? <String, dynamic>{};
        return subscriptions.isMap && subscriptions.isEmpty() ||
            subscriptions[subscription] != null;
      }).toList();
    }

    // Define recipients
    recipients = settings
        .map((s) => EmailRecipientV1(
            id: s.id, name: s.name, email: s.email, language: s.language))
        .toList();
    // Deliver messages
    _sendEmailMessages(correlationId, recipients, message, parameters);
  }

  Future<void> _sendSmsMessageToRecipients(
      String correlationId,
      List<String> recipientIds,
      String subscription,
      MessageV1 message,
      ConfigParams parameters) async {
    // var settings = <SmsSettingsV1>[];
    // var recipients = <SmsRecipientV1>[];

    // if (_smsDeliveryClient == null || _smsSettingsClient == null) {
    //     throw ConfigException(
    //         correlationId,
    //         'SMS_OR_SMS_SETTINGS_CLIENT_UNDEFINED',
    //         'Sms or smsSettings client is not defined'
    //     );
    // }

    // // Retrieve recipient settings
    // settings = await _smsSettingsClient.getSettingsByIds(correlationId, recipientIds);

    // // Define recipients recipients
    //     if (subscription != null) {
    //         // To send via subscriptions email must be verified
    //         var resSettings = settings.where((s) => s.verified).toList();

    //         // Check subscriptions (defined means allowed)
    //         settings = resSettings.where((s) {
    //           var subscriptions = s.subscriptions ?? <String, dynamic>{};
    //              return subscriptions.isMap && subscriptions.isEmpty() || subscriptions[subscription] != null;
    //         }).toList();
    //     }

    // // Define recipients
    var recipients = <dynamic>[]; // remove when sms will be fixed
    //         recipients = settings.map((s) => SmsRecipientV1(
    //             id: s.id,
    //             name: s.name,
    //             email: s.email,
    //             language: s.language)).toList();
    // Deliver messages
    _sendSmsMessages(correlationId, recipients, message, parameters);
  }

  /// Send the messages to recipient by its id
  ///
  /// - [correlationId]    (optional) transaction id to trace execution through call chain.
  /// - [recipientId]            a recipient id.
  /// - [subscription]            a subscription.
  /// - [message]              a message to be send.
  /// - [parameters]              an additional parameters to be send.
  /// - [method]              a delivery method(email and/or sms).
  @override
  Future sendMessageToRecipient(
      String correlationId,
      String recipientId,
      String subscription,
      MessageV1 message,
      ConfigParams parameters,
      String method) {
    return sendMessageToRecipients(correlationId, [recipientId], subscription,
        message, parameters, method);
  }

  /// Send the messages to recipients by its ids
  ///
  /// - [correlationId]    (optional) transaction id to trace execution through call chain.
  /// - [recipientIds]            a recipient id.
  /// - [subscription]            a subscription.
  /// - [message]              a message to be send.
  /// - [parameters]              an additional parameters to be send.
  /// - [method]              a delivery method(email and/or sms).
  @override
  Future sendMessageToRecipients(
      String correlationId,
      List<String> recipientIds,
      String subscription,
      MessageV1 message,
      ConfigParams parameters,
      String method) async {
    // Validate message or retrieve template
    var newMessage = await _getMessage(correlationId, message);

    // Deliver messages
    // Send via Email
    if (method == DeliveryMethodV1.Email || method == DeliveryMethodV1.All) {
      await _sendEmailMessageToRecipients(
          correlationId, recipientIds, subscription, newMessage, parameters);
    }
    // Send via SMS
    if (method == DeliveryMethodV1.Sms || method == DeliveryMethodV1.All) {
      await _sendSmsMessageToRecipients(
          correlationId, recipientIds, subscription, newMessage, parameters);
    }
  }
}
