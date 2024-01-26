/// create an enum for HTTP response status codes. the enum should have proeprties for
/// the code and the meaning. for example 404 and "Not found"

enum StatusCode {
  ok(200, 'OK'),
  badRequest(400, 'Bad Request'),
  unauthorized(401, 'Unauthorized'),
  forbidden(403, 'Forbidden'),
  notFound(404, 'Not Found'),
  methodNotAllowed(405, 'Method Not Allowed'),
  imaTeapot(418, "I'm a teapot"),
  internalServerError(500, 'Internal Server Error');

  const StatusCode(this.code, this.error);
  final int code;
  final String error;
}

void main() {
  for (final status in StatusCode.values) {
    print('Status: ${status.code}, ${status.error}');
  }
}