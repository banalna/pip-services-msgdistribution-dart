// import 'package:pip_services3_components/pip_services3_components.dart';
// import 'package:pip_services3_commons/pip_services3_commons.dart';

// import '../logic/MessageDistributionController.dart';
// import '../services/version1/MessageDistributionHttpServiceV1.dart';
// import '../services/version1/MessageDistributionCommandableGrpcServiceV1.dart';
// import '../services/version1/MessageDistributionGrpcServiceV1.dart';

// class MessageDistributionServiceFactory extends Factory {
//   static final descriptor = Descriptor(
//       'pip-services-msgdistribution', 'factory', 'default', 'default', '1.0');
//   static final ControllerDescriptor = Descriptor(
//       'pip-services-msgdistribution', 'controller', 'default', '*', '1.0');
//   static final HttpServiceDescriptor =
//       Descriptor('pip-services-msgdistribution', 'service', 'http', '*', '1.0');
//   static final CommandableGrpcServiceDescriptor = Descriptor(
//       'pip-services-msgdistribution',
//       'service',
//       'commandable-grpc',
//       '*',
//       '1.0');
//   static final GrpcServiceDescriptor =
//       Descriptor('pip-services-msgdistribution', 'service', 'grpc', '*', '1.0');

//   MessageDistributionServiceFactory() : super() {
//     registerAsType(MessageDistributionServiceFactory.ControllerDescriptor,
//         MessageDistributionController);
//     registerAsType(MessageDistributionServiceFactory.HttpServiceDescriptor,
//         MessageDistributionHttpServiceV1);
//     registerAsType(
//         MessageDistributionServiceFactory.CommandableGrpcServiceDescriptor,
//         MessageDistributionCommandableGrpcServiceV1);
//     registerAsType(MessageDistributionServiceFactory.GrpcServiceDescriptor,
//         MessageDistributionGrpcServiceV1);
//   }
// }
