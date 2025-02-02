part of 'consumer_screen_bloc.dart';



class ConsumerScreenEvent {}

class ConsumerScreenInitial extends ConsumerScreenEvent{
  List<ProductRequest>? products;
  ConsumerScreenInitial({required this.products});
}
class FilterConsumerScreen extends ConsumerScreenEvent{
  String query;
  FilterConsumerScreen(this.query);
}

class OnLongClickConsumer extends ConsumerScreenEvent{
  int index;
  OnLongClickConsumer(this.index);
}

class OnClickOpenBottomSheet extends ConsumerScreenEvent{
  String clientID;
  OnClickOpenBottomSheet({this.clientID = ''});
}

class OnClickConfirmOrder extends ConsumerScreenEvent{
  String comment;

  OnClickConfirmOrder({required this.comment});
}
