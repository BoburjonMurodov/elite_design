part of 'consumer_screen_bloc.dart';

class ConsumerScreenState {
  ConsumerStatus status;
  List<ClientItem> clients;
  String? error;
  List<bool> extended;

  ConsumerScreenState({
    required this.status,
    required this.clients,
    this.error,
    required this.extended,
  });

  copyWith({
    List<ClientItem>? clients,
    String? error,
    required ConsumerStatus status,
    List<bool>? extended,
  }) {
    return ConsumerScreenState(
        status: status,
        clients: clients ?? this.clients,
        error: error ?? this.error,
        extended: extended ?? this.extended);
  }
}

enum ConsumerStatus {
  INITIAL,
  LOADING,
  BOTTOMSHEET,
  LOADING_ORDER,
  SUCCESS,
  ERROR,
}
