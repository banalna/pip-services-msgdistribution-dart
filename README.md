# <img src="https://github.com/pip-services/pip-services/raw/master/design/Logo.png" alt="Pip.Services Logo" style="max-width:30%"> <br> Message Distribution Microservice

This microservice is distributes messages to one or many recipients
using their configured delivery methods: email or sms.

The microservice currently supports the following deployment options:
* Deployment platforms: Standalone Process, Seneca
* External APIs: HTTP/REST, Seneca

This microservice has optional dependencies on the following microservices:
- [pip-services-emailsettings](https://github.com/pip-services-users/pip-services-emailsettings) - recipient email settings
- [pip-services-smssettings](https://github.com/pip-services-users/pip-services-emailsettings) - recipient sms settings
- [pip-services-email](https://github.com/pip-services-infrastructure/pip-services-email) - email sending
- [pip-services-sms](https://github.com/pip-services-infrastructure/pip-services-sms) - sms sending
- [pip-services-msgtemplates](https://github.com/pip-services-content/pip-services-msgtemplates) - message templates

<a name="links"></a> Quick Links:

* [Download Links](doc/Downloads.md)
* [Development Guide](doc/Development.md)
* [Configuration Guide](doc/Configuration.md)
* [Deployment Guide](doc/Deployment.md)
* Client SDKs
  - [Node.js SDK](https://github.com/pip-services-users/pip-clients-msgdistribution-dart)
* Communication Protocols
  - [HTTP Version 1](doc/HttpProtocolV1.md)
  - [Seneca Version 1](doc/SenecaProtocolV1.md)

##  Contract

Logical contract of the microservice is presented below. For physical implementation (HTTP/REST, Thrift, Seneca, Lambda, etc.),
please, refer to documentation of the specific protocol.

```dart
class MessageV1 {
  String template;
  String from;
  String cc;
  String bcc;
  String reply_to;
  var subject;
  var text;
  var html;
}

abstract class IMessageDistributionV1 {
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
```

Message can be defined directly or loaded from message template (stored in msgtemplates service);

When message is set directly its subject, text and html content can be set by handlebars template,
that it processed using parameters set. Here is an example:

```html
Dear {{ name }},
<p/>
Please, help us to verify your email address. Your verification code is {{ code }}.
<p/>
Click on the 
<a href="{{ clientUrl }}/#/verify_email?server_url={{ serverUrl }}&email={{ email }}&code={{ code }}">link</a>
to complete verification procedure
<p/>
---<br/>
{{ signature }}
```

## Download

Right now the only way to get the microservice is to check it out directly from github repository
```bash
git clone git@github.com:pip-services-users/pip-services-msgdistribution-dart.git
```

Pip.Service team is working to implement packaging and make stable releases available for your 
as zip downloadable archieves.

## Run

Add **config.yml** file to the root of the microservice folder and set configuration parameters.
As the starting point you can use example configuration from **config.example.yml** file. 
Example of microservice configuration
```yaml
---
- descriptor: "pip-services-commons:logger:console:default:1.0"
  level: "trace"

- descriptor: "pip-services-msgdistribution:controller:default:default:1.0"
  
- descriptor: "pip-services-msgdistribution:service:http:default:1.0"
  connection:
    protocol: "http"
    host: "0.0.0.0"
    port: 8080
```
 
For more information on the microservice configuration see [Configuration Guide](Configuration.md).

For more information on the microservice configuration see [Configuration Guide](doc/Configuration.md).

Start the microservice using the command:
```bash
dart ./bin/run.dart
```

## Use

The easiest way to work with the microservice is to use client SDK. 
The complete list of available client SDKs for different languages is listed in the [Quick Links](#links)

If you use dart, then get references to the required libraries:
- Pip.Services3.Commons : https://github.com/pip-services3-dart/pip-services3-commons-dart
- Pip.Services3.Rpc: 
https://github.com/pip-services3-dart/pip-services3-rpc-dart

Add **pip-services3-commons-dart**, **pip-services3-rpc-dart** and **pip-services_msgdistribution** packages
```dart
import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_rpc/pip_services3_rpc.dart';

import 'package:pip_services_msgdistribution/pip_services_msgdistribution.dart';

```
Instantiate the client and open connection to the microservice
```dart
// Create the client instance
var client = MessageDistributionHttpClientV1(config);

// Configure the client
client.configure(httpConfig);

// Connect to the microservice
try{
  await client.open(null)
}catch() {
  // Error handling...
}       
// Work with the microservice
// ...
```

Now the client is ready to perform operations

```dart
// Send email message to users
var recipient1 = RecipientV1(id: '1', email: 'user1@somewhere.com', phone: '+1234567890');
var recipient2 = RecipientV1(id: '2', email: 'user2@somewhere.com', phone: '+0987654321');
var message = MessageV1(subject: 'Test', 
                             text: 'This is a test message. Please, ignore it');
await client.sendMessages(
    null,
    [
        recipient1,
        recipient2
    ],
    message,
    null,
    DeliveryMethod.All
);
```

## Acknowledgements

This microservice was created and currently maintained by
- **Sergey Seroukhov**
- **Nuzhnykh Egor**.