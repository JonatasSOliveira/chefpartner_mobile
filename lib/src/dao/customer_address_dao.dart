import 'package:chefpartner_mobile/src/dao/generic_dao.dart';
import 'package:chefpartner_mobile/src/dtos/customer_address_dto.dart';
import 'package:chefpartner_mobile/src/models/customer_address_model.dart';

class CustomerAddressDAO
    extends GenericDAO<CustomerAddressModel, CustomerAddressDTO> {
  CustomerAddressDAO()
      : super(databaseModel: CustomerAddressModel(), defaultInsertAttributes: [
          'customer_id',
          'address',
          'city',
          'state',
          'number',
          'complement',
          'reference_point'
        ]);

  @override
  List<Object?> getAttributesValues(CustomerAddressDTO model) => [
        model.getCustomer()?.getId(),
        model.getAddress(),
        model.getCity(),
        model.getState(),
        model.getNumber(),
        model.getComplement(),
        model.getReferencePoint()
      ];

  @override
  CustomerAddressDTO fromMap(Map<String, dynamic> map) {
    return CustomerAddressDTO.fromMap(map);
  }
}
