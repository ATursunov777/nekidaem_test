import 'dart:convert';

List<Cards> cardFromJson(String str) =>
    List<Cards>.from(json.decode(str).map((x) => Cards.fromJson(x)));

String cardToJson(List<Cards> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cards {
  Cards({
    required this.id,
    required this.row,
    required this.seqNum,
    required this.text,
  });

  int id;
  String row;
  int seqNum;
  String text;

  factory Cards.fromJson(Map<String, dynamic> json) => Cards(
        id: json["id"],
        row: json["row"],
        seqNum: json["seq_num"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "row": row,
        "seq_num": seqNum,
        "text": text,
      };
}
