import 'dart:convert';

Map<String, Welcome> welcomeFromJson(String str) => Map.from(json.decode(str)).map((k, v) => MapEntry<String, Welcome>(k, Welcome.fromJson(v)));

String welcomeToJson(Map<String, Welcome> data) => json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

class Welcome {
    Welcome({
        required this.available,
        required this.name,
        this.pic,
        required this.price,
    });

    bool available;
    String name;
    String? pic;
    int price;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        available: json["available"],
        name: json["name"],
        pic: json["pic"],
        price: json["price"],
    );

    Map<String, dynamic> toJson() => {
        "available": available,
        "name": name,
        "pic": pic,
        "price": price,
    };
}
