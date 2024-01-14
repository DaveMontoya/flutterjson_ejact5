
class ProductDataModel {
  int? id;
  String? name;
  String? category;
  String? imageUrl;
  String? oldPrice;
  String? price;
  String? discountPercentage;
  String? rating;

  ProductDataModel(
    {
      this.id,
      this.name,
      this.category,
      this.imageUrl,
      this.oldPrice,
      this.price,
      this.discountPercentage,
      this.rating,
    });

  ProductDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    imageUrl = json['imageUrl'];
    oldPrice = json['oldPrice'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    rating = json['rating'];

  }

} //class