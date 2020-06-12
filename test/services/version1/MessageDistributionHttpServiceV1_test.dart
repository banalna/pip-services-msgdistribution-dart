import 'dart:convert';
import 'package:pip_clients_email/pip_clients_email.dart';
import 'package:pip_clients_emailsettings/pip_clients_emailsettings.dart';
import 'package:pip_clients_smssettings/pip_clients_smssettings.dart';
import 'package:pip_services_msgdistribution/pip_services_msgdistribution.dart';
import 'package:pip_services_smssettings/pip_services_smssettings.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services_emailsettings/pip_services_emailsettings.dart';

import '../../logic/MessageTemplatesMockClientV1.dart';

var httpConfig = ConfigParams.fromTuples([
  'connection.protocol',
  'http',
  'connection.host',
  'localhost',
  'connection.port',
  3000
]);

void main() {
  group('MessageDistributionHttpServiceV1', () {
    MessageDistributionController controller;
    MessageDistributionHttpServiceV1 service;
    http.Client rest;
    String url;

    setUp(() async {
      url = 'http://localhost:3000';
      rest = http.Client();

      controller = MessageDistributionController();
      controller.configure(ConfigParams());

      var emailSettingsClient = EmailSettingsMemoryClientV1();
      await emailSettingsClient.setSettings(
          null,
          EmailSettingsV1(
              id: '1', name: 'User 1', email: 'somebody@somewhere.com'));

      var smsSettingsClient = SmsSettingsMemoryClientV1();
      await smsSettingsClient.setSettings(
          null, SmsSettingsV1(id: '1', name: 'User 1', phone: '+12345678901'));

      var emailDeliveryClient = EmailNullClientV1();
      //var smsDeliveryClient = SmsNullClientV1();
      var templatesClient = MessageTemplatesMockClientV1();

      service = MessageDistributionHttpServiceV1();
      service.configure(httpConfig);

      var references = References.fromTuples([
        Descriptor(
            'pip-services-emailsettings', 'client', 'memory', 'default', '1.0'),
        emailSettingsClient,
        Descriptor(
            'pip-services-smssettings', 'client', 'memory', 'default', '1.0'),
        smsSettingsClient,
        Descriptor('pip-services-email', 'client', 'null', 'default', '1.0'),
        emailDeliveryClient,
        //Descriptor('pip-services-sms', 'client', 'null', 'default', '1.0'), smsDeliveryClient,
        Descriptor(
            'pip-services-msgtemplates', 'client', 'mock', 'default', '1.0'),
        templatesClient,
        Descriptor('pip-services-msgdistribution', 'controller', 'default',
            'default', '1.0'),
        controller,
        Descriptor('pip-services-msgdistribution', 'service', 'http', 'default',
            '1.0'),
        service
      ]);

      controller.setReferences(references);
      service.setReferences(references);

      await service.open(null);
    });

    tearDown(() async {
      await service.close(null);
    });

    test('Send Message', () async {
      var message = MessageV1(
          subject: 'Test subject', text: 'Test text', html: 'Test html');
      var recipient = RecipientV1(
          name: 'User 1',
          email: 'somebody@somewhere.com',
          phone: '+1233452345');

      var resp = await rest.post(url + '/v1/msg_distribution/send_message',
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'recipient': recipient,
            'message': message,
            'method': DeliveryMethodV1.All
          }));
      expect(resp, isNotNull);
      expect(resp.statusCode ~/ 100, 2);
    });

    test('Send Message to Recipients', () async {
      var message = MessageV1(
          subject: 'Test subject', text: 'Test text', html: 'Test html');

      var resp = await rest.post(
          url + '/v1/msg_distribution/send_message_to_recipients',
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'recipient_ids': ['1', '2'],
            'message': message,
            'method': DeliveryMethodV1.All
          }));
      expect(resp, isNotNull);
      expect(resp.statusCode ~/ 100, 2);
    });

    test('Send Message using Template', () async {
      var message = MessageV1(template: 'test');

      var resp = await rest.post(
          url + '/v1/msg_distribution/send_message_to_recipient',
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'recipient_id': '1',
            'message': message,
            'method': DeliveryMethodV1.All
          }));
      expect(resp, isNotNull);
      expect(resp.statusCode ~/ 100, 2);
    });
  });
}
