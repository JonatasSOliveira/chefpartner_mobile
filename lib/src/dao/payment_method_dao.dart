import 'package:chefpartner_mobile/src/dao/generic_dao.dart';
import 'package:chefpartner_mobile/src/models/payment_method_model.dart';
import 'package:chefpartner_mobile/src/dtos/payment_method_dto.dart';

class PaymentMethodDAO
    extends GenericDAO<PaymentMethodModel, PaymentMethodDTO> {
  PaymentMethodDAO()
      : super(
            databaseModel: PaymentMethodModel(),
            defaultInsertAttributes: ['name']);

  @override
  List<Object?> getAttributesValues(PaymentMethodDTO model) {
    return [model.getName()];
  }

  @override
  PaymentMethodDTO fromMap(Map<String, dynamic> map) {
    return PaymentMethodDTO.fromMap(map);
  }
}
