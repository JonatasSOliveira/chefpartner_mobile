import 'package:chefpartner_mobile/src/interfaces/i18n/payment_method_strings_interface.dart';

class EnUsPaymentMethodStrings implements PaymentMethodStringsInterface {
  @override
  String get pluralName => 'Payment methods';
  @override
  String get newPaymentMethod => 'New payment method';
  @override
  String get formTitle => 'Payment method form';
}
