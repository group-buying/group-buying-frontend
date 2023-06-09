class MyAccount {
  int id;
  int userId;
  String brand;
  String accountNumber;

  MyAccount({
    required this.id,
    required this.userId,
    required this.brand,
    required this.accountNumber,
  });

  factory MyAccount.fromJson(Map<String, dynamic> json) => MyAccount(
    id: json["id"],
    userId: json["userId"],
    brand: json["brand"],
    accountNumber: json["accountNumber"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "userId": userId,
    "brand": brand,
    "accountNumber": accountNumber,
  };
}
