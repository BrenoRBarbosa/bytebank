class Contact {
  final int? id;
  final String name;
  final int accountNumber;

  Contact.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        accountNumber = json["accountNumber"];

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "accountNumber": accountNumber,
      };

  Contact({this.id, required this.name, required this.accountNumber});
}
