// import 'package:pip_services3_commons/pip_services3_commons.dart';
// //import 'package:pip_services3_aws/';

// import 'package:pip_clients_emailsettings/pip_clients_emailsettings.dart';
// //import 'package:pip_clients_smssettings/';
// import 'package:pip_clients_email/pip_clients_email.dart';
// //import 'package:pip_clients_sms/';
// import 'package:pip_clients_msgtemplates/pip_clients_msgtemplates.dart';

// import '../build/MessageDistributionServiceFactory.dart';

// class MessageDistributionLambdaFunction extends CommandableLambdaFunction {
//   MessageDistributionLambdaFunction()
//       : super('msg_distribution', 'Message distribution function') {
//     dependencyResolver.put(
//         'controller',
//         Descriptor(
//             'pip-services-msgdistribution', 'controller', 'default', '*', '*'));
//     factories.add(MessageDistributionServiceFactory());
//     factories.add(EmailSettingsClientFactory());
//     factories.add(SmsSettingsClientFactory());
//     factories.add(EmailClientFactory());
//     factories.add(SmsClientFactory());
//     factories.add(MessageTemplatesClientFactory());
//   }
// }
