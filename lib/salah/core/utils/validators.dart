
class Validator {
  static String? nameValidator(String? value) {
    if (value == null || value.length < 4) {
      return "Please enter valide name";
    }
    return null;
  }

  static String? addresseValidator(String? value) {
    if (value == null || value.length > 5) return null;
    return "Please enter valid addresse";
  }

  static String? validateAccountNumber(String? value) {
    if (value == null || value.length != 14) {
      return "Please enter valid Account number";
      return null;
    }
    return null;
  }

  static String? phoneValidator(String? value) {
    try {
      String operator = value![1];
      if (operator != "5" && operator != "6" && operator != "7") {
        return "Operator does not exist";
      }
      String? firstDigit = value[0];
      int number = int.parse(value);
      if ((value.length == 10 && firstDigit == "0")) return null;
      return "Please enter valide phone number";
    } catch (_) {
      return "Please enter valide phone number";
    }
  }

  static String? phoneValidatorWithoutZero(String? value) {
    try {
      String operator = value![0];
      if (operator != "5" && operator != "6" && operator != "7") {
        return "Operator does not exist";
      }
      int number = int.parse(value);
      if ((value.length == 9)) return null;
      return "Please enter valide phone number";
    } catch (_) {
      return "Please enter valide phone number";
    }
  }

  static String? smsCodeValidator(String? value) {
    try {
      int number = int.parse(value!);
      if ((value.length == 4)) return null;
      return "Please enter valide verification code";
    } catch (_) {
      return "Please enter valide verification code";
    }
  }

  static String? emailCodeValidator(String? value) {
    try {
      int number = int.parse(value!);
      if ((value.length == 4)) return null;
      return "Please enter valide verification code";
    } catch (_) {
      return "Please enter valide verification code";
    }
  }

  static String? priceValidator(String? value) {
    try {
      if (value!.isEmpty) return "Please enter amount";

      double tmp = double.parse(value);
      if (tmp < 0) return "Please enter valid amount";

      return null;
    } catch (_) {
      return "Please enter valid amount";
    }
  }

  static String? emailValidator(String? value) {
    if (value == null ||
        !value.contains("@") ||
        value.isEmpty ||
        !value.contains(".")) {
      return "Please enter valid email address";
    }
    return null;
  }

  static String? passwordlValidator(String? value) {
    if (value == null || value.length < 4) {
      return "Please enter strong password";
    }
    return null;
  }

  static String? confirmPasswordlValidator(String? value, String? password) {
    if (value != password) return "Both password must match";

    return null;
  }
}
