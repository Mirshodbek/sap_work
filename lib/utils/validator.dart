import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:formz/formz.dart';

enum _PhoneValidationError { empty }

class Phone extends FormzInput<String, _PhoneValidationError> {
  const Phone.pure() : super.pure('');

  const Phone.dirty([String value = '']) : super.dirty(value);

  @override
  _PhoneValidationError? validator(String? value) {
    return value?.isNotEmpty == true && value?.length == 11
        ? null
        : _PhoneValidationError.empty;
  }
}

enum _TextValidationError { empty }

class Texts extends FormzInput<String, _TextValidationError> {
  const Texts.pure() : super.pure('');

  const Texts.dirty([String value = '']) : super.dirty(value);

  @override
  _TextValidationError? validator(String? value) {
    return value?.isNotEmpty == true ? null : _TextValidationError.empty;
  }
}

class Utils {
  static String getTelephone(String value) {
    if (value.length >= 15) {
      var first = value.substring(1, 4);
      var second = value.substring(6, 9);
      var third = value.substring(10, 12);
      var fourth = value.substring(13, value.length);
      return "7" + first + second + third + fourth;
    }
    return value;
  }

  static String getMoney(String value) {
    if (value.length > 4) {
      if (value.length > 8) {
        return value.substring(0, 3) +
            value.substring(4, 7) +
            value.substring(8, value.length);
      }
      return value.substring(0, 3) + value.substring(4);
    }
    if (value.length > 6) {
      return value.substring(0, 3) + value.substring(4, 7);
    }
    return value;
  }

  static final mask = MaskedInputFormatter(
    "(000) 000-00-00",
  );
  static final money = MaskedInputFormatter(
    "000 000 000",
  );
}
