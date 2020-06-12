import 'package:pip_services_msgdistribution/pip_services_msgdistribution.dart';

void main(List<String> argument) {
  try {
    var proc = MessageDistributionProcess();
    proc.configPath = './config/config.yml';
    proc.run(argument);
  } catch (ex) {
    print(ex);
  }
}
