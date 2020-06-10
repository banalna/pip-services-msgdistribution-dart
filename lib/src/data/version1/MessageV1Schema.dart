import 'package:pip_services3_commons/pip_services3_commons.dart';

class MessageV1Schema extends ObjectSchema {
  MessageV1Schema() : super() {
    withOptionalProperty('template', TypeCode.String);
    withOptionalProperty('from', TypeCode.String);
    withOptionalProperty('cc', TypeCode.String);
    withOptionalProperty('bcc', TypeCode.String);
    withOptionalProperty('reply_to', TypeCode.String);
    withOptionalProperty('subject', null);
    withOptionalProperty('text', null);
    withOptionalProperty('html', null);
  }
}
