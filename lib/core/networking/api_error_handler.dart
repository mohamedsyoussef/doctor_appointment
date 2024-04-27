class ApiErrorHandler {
  static String getMessage(dynamic error) {
    if (error is Exception) {
      try {
        return error.toString();
      } catch (e) {
        return 'Oops something went wrong';
      }
    } else {
      return 'Oops something went wrong';
    }
  }
}
