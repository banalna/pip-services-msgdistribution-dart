import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_rpc/pip_services3_rpc.dart';

class MessageDistributionHttpServiceV1 extends CommandableHttpService {
  MessageDistributionHttpServiceV1() : super('v1/msg_distribution') {
    dependencyResolver.put(
        'controller',
        Descriptor('pip-services-msgdistribution', 'controller', 'default', '*',
            '1.0'));
  }
}
