import 'package:flutter/material.dart';

import 'screens/dashboard.dart';

void main() {
  runApp(const ByteBank());
  // saveWebClient(
  //     Transaction(123, Contact(id: 0, name: "Marcio", accountNumber: 1234)));
}

class ByteBank extends StatelessWidget {
  const ByteBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.green.shade900,
          secondary: Colors.green.shade700,
        ),
      ),
      home: const Dashboard(),
    );
  }
}
