

class OrderResponse{
  bool error;
  String message;

  OrderResponse({required this.error, required this.message});

  factory OrderResponse.fromJson(Map<String, dynamic> json){
    return OrderResponse(error: json['error'], message: json['message']);
  }
}

