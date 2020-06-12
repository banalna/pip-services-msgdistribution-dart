import 'package:pip_clients_email/pip_clients_email.dart';
import 'package:pip_clients_smssettings/pip_clients_smssettings.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services_emailsettings/pip_services_emailsettings.dart';
import 'package:pip_services_msgdistribution/pip_services_msgdistribution.dart';
import 'package:pip_clients_emailsettings/pip_clients_emailsettings.dart';
import 'package:pip_services_smssettings/pip_services_smssettings.dart';
import 'package:test/test.dart';
import './MessageTemplatesMockClientV1.dart';

void main() {
  group('MessageDistributionController', () {
    MessageDistributionController controller;

    setUp(() async {
      controller = MessageDistributionController();

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

      var references = References.fromTuples([
        Descriptor(
            'pip-services-emailsettings', 'client', 'memory', 'default', '1.0'),
        emailSettingsClient,
        Descriptor(
            'pip-services-smssettings', 'client', 'memory', 'default', '1.0'),
        smsSettingsClient,
        Descriptor('pip-services-email', 'client', 'null', 'default', '1.0'),
        emailDeliveryClient,
        // Descriptor('pip-services-sms', 'client', 'null', 'default', '1.0'), smsDeliveryClient,
        Descriptor(
            'pip-services-msgtemplates', 'client', 'mock', 'default', '1.0'),
        templatesClient,
        Descriptor('pip-services-msgdistribution', 'controller', 'default',
            'default', '1.0'),
        controller
      ]);

      controller.setReferences(references);
    });

    test('Send Message', () async {
      var message = MessageV1(
          subject: 'Test subject',
          text: 'Test text',
          html: 'Test html',
          template: 'test');
      var recipient = RecipientV1(
          name: 'User 1',
          email: 'somebody@somewhere.com',
          phone: '+1233452345');

      await controller.sendMessage(
          null, recipient, message, null, DeliveryMethodV1.All);
    });

    test('Send Message using Template', () async {
      var message = MessageV1(template: 'test');

      await controller.sendMessageToRecipient(
          null, '1', null, message, null, DeliveryMethodV1.All);
    });

    test('Send Message to Recipients', () async {
      var message = MessageV1(
          subject: 'Test subject',
          text: 'Test text',
          html: 'Test html',
          template: 'test');

      await controller.sendMessageToRecipients(
          null, ['1', '2'], null, message, null, DeliveryMethodV1.All);
    });
  });
}
