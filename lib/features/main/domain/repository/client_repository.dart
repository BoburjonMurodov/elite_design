import '../../../../core/utils/result.dart';
import '../../data/model/data/client/client_item.dart';

abstract class ClientRepository{
  Future<Result<List<ClientItem>>> getClients();
}