# Examples for Message Distribution Microservice

This microservice is distributes messages to one or many recipients
using their configured delivery methods: email or sms.

Define configuration parameters that match the configuration of the microservice's external API
```dart
// Service/Client configuration
var httpConfig = ConfigParams.fromTuples(
	"connection.protocol", "http",
	"connection.host", "localhost",
	"connection.port", 8080
);
```

Instantiate the service
```dart
controller = MessageDistributionController();
controller.configure(ConfigParams());

service = MessageDistributionHttpServiceV1();
service.configure(httpConfig);

var references = References.fromTuples([
    Descriptor('pip-services-email', 'controller', 'default',
        'default', '1.0'),
    controller,
    Descriptor(
        'pip-services-email', 'service', 'http', 'default', '1.0'),
    service
]);

controller.setReferences(references);
service.setReferences(references);

await service.open(null);
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

In the help for each class there is a general example of its use. Also one of the quality sources
are the source code for the [**tests**](https://github.com/pip-services-users/pip-services-msgdistribution-dart/tree/master/test).
