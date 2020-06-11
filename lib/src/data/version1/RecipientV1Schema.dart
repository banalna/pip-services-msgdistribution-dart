import 'package:pip_services3_commons/pip_services3_commons.dart';

class RecipientV1Schema extends ObjectSchema {
  RecipientV1Schema() : super() {
    withOptionalProperty('id', TypeCode.String);
    withOptionalProperty('name', TypeCode.String);
    withOptionalProperty('email', TypeCode.String);
    withOptionalProperty('phone', TypeCode.String);
    withOptionalProperty('language', TypeCode.String);
  }
}
