import 'package:elite_design/core/utils/result.dart';
import 'package:elite_design/features/main/data/model/data/client/client_item.dart';
import 'package:elite_design/features/main/data/source/product_remote_source.dart';
import 'package:elite_design/features/main/domain/repository/client_repository.dart';

class ClientRepositoryImpl extends ClientRepository{
  ProductRemoteSource _remoteSource = ProductRemoteSourceImpl();

  @override
  Future<Result<List<ClientItem>>> getClients()  async{
    return await _remoteSource.getClients();
  }

}