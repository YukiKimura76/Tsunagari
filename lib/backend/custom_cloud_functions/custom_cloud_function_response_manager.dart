import '/backend/schema/structs/index.dart';

class HelloWorldCloudFunctionCallResponse {
  HelloWorldCloudFunctionCallResponse({
    this.errorCode,
    this.succeeded,
    this.jsonBody,
  });
  String? errorCode;
  bool? succeeded;
  dynamic jsonBody;
}
