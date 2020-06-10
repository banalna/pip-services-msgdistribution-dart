// import { IReferences } from 'package:pip_services3_commons-node';
// import { ProcessContainer } from 'package:pip_services3_container-node';

// import { EmailSettingsClientFactory } from 'pip-clients-emailsettings-node';
// import { SmsSettingsClientFactory } from 'pip-clients-smssettings-node';
// import { EmailClientFactory } from 'pip-clients-email-node';
// import { SmsClientFactory } from 'pip-clients-sms-node';
// import { MessageTemplatesClientFactory } from 'pip-clients-msgtemplates-node';
// import { DefaultRpcFactory } from 'package:pip_services3_rpc-node';
// import { DefaultGrpcFactory } from 'package:pip_services3_grpc-node';

// import { MessageDistributionServiceFactory } from '../build/MessageDistributionServiceFactory';

// export class MessageDistributionProcess extends ProcessContainer {

//     public constructor() {
//         super("msg_distribution", "Message distribution microservice");
//         this._factories.add(new MessageDistributionServiceFactory);
//         this._factories.add(new EmailSettingsClientFactory());
//         this._factories.add(new SmsSettingsClientFactory());
//         this._factories.add(new EmailClientFactory());
//         this._factories.add(new SmsClientFactory());
//         this._factories.add(new MessageTemplatesClientFactory());
//         this._factories.add(new DefaultRpcFactory());
//         this._factories.add(new DefaultGrpcFactory());
//     }

// }
