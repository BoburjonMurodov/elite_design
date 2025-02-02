
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_item.freezed.dart';
part 'client_item.g.dart';

@freezed
class ClientItem with _$ClientItem {
  const factory ClientItem({
    @JsonKey(name: "client")
    required String client,
    @JsonKey(name: "clientID")
    required int clientId,
    @JsonKey(name: "sum")
    required String sum,
    @JsonKey(name: "dollar")
    required String dollar,
  }) = _ClientItem;

  factory ClientItem.fromJson(Map<String, dynamic> json) => _$ClientItemFromJson(json);
}