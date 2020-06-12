import 'package:pip_services3_components/pip_services3_components.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';

import '../logic/MessageDistributionController.dart';
import '../services/version1/MessageDistributionHttpServiceV1.dart';

class MessageDistributionServiceFactory extends Factory {
  static final ControllerDescriptor = Descriptor(
      'pip-services-msgdistribution', 'controller', 'default', '*', '1.0');
  static final HttpServiceDescriptor =
      Descriptor('pip-services-msgdistribution', 'service', 'http', '*', '1.0');

  MessageDistributionServiceFactory() : super() {
    registerAsType(MessageDistributionServiceFactory.ControllerDescriptor,
        MessageDistributionController);
    registerAsType(MessageDistributionServiceFactory.HttpServiceDescriptor,
        MessageDistributionHttpServiceV1);
  }
}
