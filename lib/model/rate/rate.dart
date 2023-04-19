class Rate {
  // 신뢰도
  final int id;
  final int userId;
  String? rateName; // 신뢰도 등급
  int? ratePoint; // 신뢰도 점수
  final DateTime createdAt;

  Rate({
    required this.id,
    required this.userId,
    required this.rateName,
    required this.ratePoint,
    required this.createdAt
  });
}

//수정 될 수 있음
List<Rate> rates = [
  Rate(id: 1, userId: 1, rateName: "글레이즈드", ratePoint: 30,createdAt: DateTime.now()),
  Rate(id: 2, userId: 2, rateName: "딸기도넛", ratePoint: 60,createdAt: DateTime.now()),
  Rate(id: 3, userId: 3, rateName: "초코도넛", ratePoint: 40,createdAt: DateTime.now()),
  Rate(id: 4, userId: 4, rateName: "별사탕도넛", ratePoint: 90,createdAt: DateTime.now()),
];
