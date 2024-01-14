class DataWeb {
  final List<Products> products;
  final int? id;
  //final String strId = jsId['id'].toString();
  final String title;
  final String description;
  final int price;

  static var jsId;
  //final int discountPercentage;
  //final int rating;
  //final int stock;
  //final String brand;
  //final String category;
  //final String thumbnail;
  //final List<Images> images;

  DataWeb({
    required this.products,
    required this.id,
    //required this.strId,
    required this.title,
    required this.description,
    required this.price,
    //required this.discountPercentage,
    //required this.rating,
    //required this.stock,
    //required this.brand,
    //required this.category,
    //required this.thumbnail,
    //required this.images,
  });

  factory DataWeb.fromJson(Map<String, dynamic> json) => DataWeb(
        products: List<Products>.from(json["products"].map((x) => Products.fromJson(x))),
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
    "id": id,
    "title": title,
    "description": description,
    "price": price,
  };
}

class Products {
  final int id;
  final String title;
  final String description;
  final int price;
  //final int discountPercentage;
  //final int rating;
  //final int stock;
  //final String brand;
  //final String category;
  //final String thumbnail;

  Products({
    //required this.products,
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    //required this.discountPercentage,
    //required this.rating,
    //required this.stock,
    //required this.brand,
    //required this.category,
    //required this.thumbnail,
    //required this.images,
    });

    factory Products.fromJson(Map<String, dynamic> json) => Products(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    price: json["price"],
    );

    Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "price": price,
    };
  }


