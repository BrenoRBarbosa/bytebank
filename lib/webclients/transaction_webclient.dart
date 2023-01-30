import 'dart:convert';

import 'package:bytebank/http/web_client.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:http/http.dart';

class TransactionWebClaint {
  Future<List<Transaction>> findAllWebClient() async {
    final Response response = await client
        .get(Uri.parse(baseUrl))
        .timeout(const Duration(seconds: 5));
    final List<dynamic> decodeJson = jsonDecode(response.body);
    return decodeJson
        .map((dynamic json) => Transaction.fromJson(json))
        .toList();
  }

  Future<Transaction> saveWebClient(Transaction transaction) async {
    Map<String, dynamic> transactionMap = _toMap(transaction);
    final String transactionJson = jsonEncode(transactionMap);
    final Response response = await client.post(Uri.parse(baseUrl),
        headers: <String, String>{
          "Contet-type": "application/json, charset=UTF-16",
          "password": "1000"
        },
        body: transactionJson);

    return Transaction.fromJson(jsonDecode(response.body));
  }

  Map<String, dynamic> _toMap(Transaction transaction) {
    final Map<String, dynamic> transactionMap = {
      "value": transaction.value,
      "contact": {
        "name": transaction.contact.name,
        "accountNumber": transaction.contact.accountNumber
      }
    };
    return transactionMap;
  }
}
