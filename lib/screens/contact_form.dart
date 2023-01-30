import 'package:bytebank/datadase/app_database.dart';
import 'package:bytebank/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _accountNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Contact"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "Full Name",
              ),
              style: const TextStyle(fontSize: 20.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _accountNumberController,
                decoration: const InputDecoration(
                  labelText: "Account Number",
                ),
                style: const TextStyle(fontSize: 20.0),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  child: const Text("Create"),
                  onPressed: () {
                    final String name = _nameController.text;
                    final int? accountNumber =
                        int.tryParse(_accountNumberController.text);

                    final Contact newContact = Contact(
                        id: 0, name: name, accountNumber: accountNumber!);
                    save(newContact).then((id) => Navigator.pop(context));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}






// class ContactForm1 extends StatelessWidget {
//   const ContactForm1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("New Contact"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(26.0),
//         child: Column(
//           children: const [
//             TextField(
//               decoration: InputDecoration(labelText: "Full Name"),
//               style: TextStyle(fontSize: 20.0),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 8.0),
//               child: TextField(
//                 decoration: InputDecoration(labelText: "Account Number"),
//                 style: TextStyle(fontSize: 20.0),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
