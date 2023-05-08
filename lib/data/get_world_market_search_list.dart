class GetWorldMarketSearchList {
  final int resultCode;
  final String resultMsg;

  GetWorldMarketSearchList({
    required this.resultCode,
    required this.resultMsg,
  });

  factory GetWorldMarketSearchList.fromJson(Map<String, dynamic> json) {
    return GetWorldMarketSearchList(
      resultCode: json['resultCode'],
      resultMsg: json['resultMsg'],
    );
  }

  String parseResultMsg() {
    return resultMsg;
  }
// ID, Current stock, Base price, Total Price
}