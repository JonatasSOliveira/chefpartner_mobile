import 'package:chefpartner_mobile/src/dao/generic_dao.dart';
import 'package:chefpartner_mobile/src/models/customer_model.dart';
import 'package:chefpartner_mobile/src/dtos/customer_dto.dart';

class CustomerDAO extends GenericDAO<CustomerModel, CustomerDTO> {
  CustomerDAO()
      : super(
            databaseModel: CustomerModel(), defaultInsertAttributes: ['name']);

  @override
  List<Object?> getAttributesValues(CustomerDTO model) => [model.getName()];

  @override
  CustomerDTO fromMap(Map<String, dynamic> map) {
    return CustomerDTO.fromMap(map);
  }
}
