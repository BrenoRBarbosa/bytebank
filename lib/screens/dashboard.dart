import 'package:bytebank/screens/contacts_list.dart';
import 'package:bytebank/screens/transactions_list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      //todo adicionar o SingleChildScrollView()
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('lib/images/bytebank_logo.png'),
          ),
          Row(
            children: [
              _FeatureItem(
                name: 'Transfer',
                icon: Icons.monetization_on,
                onClick: () {
                  _ShowContactsList(context);
                },
              ),
              _FeatureItem(
                name: 'Transfer Feed',
                icon: Icons.description,
                onClick: () {
                  _ShowTransactionList(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  
}

class _FeatureItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onClick;
  _FeatureItem({required this.name, required this.icon, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.green.shade900,
        child: InkWell(
          onTap: () {
            onClick();
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            width: 150,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: 32.0,
                  color: Colors.white,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _ShowContactsList(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => ContactsList()),
  );
}

void _ShowTransactionList(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => TransactionsList()),
  );
}











// class ByteBank1 extends StatelessWidget {
//   const ByteBank1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSwatch().copyWith(
//           primary: Colors.cyan.shade700,
//           secondary: Colors.green.shade900,
//         ),
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("DashBoard"),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0),
//               child: Image.asset('lib/images/bytebank_logo1.png'),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Material(
//                 color: Colors.cyan.shade900,
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(builder: (context) => ContactsList()),
//                     );
//                   },
//                   child: Container(
//                     width: 150,
//                     height: 100,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: const [
//                           Icon(
//                             Icons.people,
//                             color: Colors.white,
//                             size: 32.0,
//                           ),
//                           Text(
//                             "Contatos",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16.0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
