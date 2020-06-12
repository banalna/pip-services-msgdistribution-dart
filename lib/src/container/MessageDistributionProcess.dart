import 'package:pip_clients_activities/pip_clients_activities.dart';
import 'package:pip_clients_email/pip_clients_email.dart';
import 'package:pip_clients_msgtemplates/pip_clients_msgtemplates.dart';
import 'package:pip_clients_smssettings/pip_clients_smssettings.dart';
import 'package:pip_services3_container/pip_services3_container.dart';
import 'package:pip_services3_rpc/pip_services3_rpc.dart';

import '../build/MessageDistributionServiceFactory.dart';

class MessageDistributionProcess extends ProcessContainer {
  MessageDistributionProcess()
      : super('msg_distribution', 'Message distribution microservice') {
    factories.add(MessageDistributionServiceFactory());
    factories.add(ActivitiesClientFactory());
    factories.add(MessageTemplatesClientFactory());
    factories.add(EmailClientFactory());
    factories.add(DefaultRpcFactory());
    factories.add(SmsSettingsClientFactory());
    //factories.add(SmsClientFactory());
  }
}
