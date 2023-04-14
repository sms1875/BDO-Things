import 'dart:convert';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://trade.kr.playblackdesert.com/Trademarket';

class WorldMarketSearchListResult {
  final int resultCode;
  final String resultMsg;

  WorldMarketSearchListResult({
    required this.resultCode,
    required this.resultMsg,
  });

  factory WorldMarketSearchListResult.fromJson(Map<String, dynamic> json) {
    return WorldMarketSearchListResult(
      resultCode: json['resultCode'],
      resultMsg: json['resultMsg'],
    );
  }

  List<String> parseResultMsg() {
    return resultMsg.split('-');
  }
// ID, Current stock, Base price, Total Price
}

Future<WorldMarketSearchListResult> getWorldMarketSearchList(
    String searchResult) async {
  final url = Uri.parse('$baseUrl/GetWorldMarketSearchList');
  final header = {
    'Content-Type': 'application/json',
    'User-Agent': 'BlackDesert',
  };
  final body = {'searchResult': searchResult};
  final response =
  await http.post(url, headers: header, body: json.encode(body));

  if (response.statusCode == 200) {
    final jsonMap = json.decode(response.body);
    return WorldMarketSearchListResult.fromJson(jsonMap);
  } else {
    throw Exception('Failed to load info: ${response.statusCode}');
  }
}

// Usage example:
// final result = await getWorldMarketSearchList(searchResult);
// final parsedResultMsg = result.parseResultMsg();
// print(parsedResultMsg); // prints [10210, 13, 64000000, 26322]