class get_product_home {
  int? id;
  int? price;
  int? oldPrice;
  int? discount;
  String? image;
  String? name;
  String? description;
  List<dynamic>? images;
  bool? inFavorites;
  bool? inCart;

  get_product_home.fromJson({required Map<String, dynamic> json}) {
    id = json['id'];
    price = json['price'].toInt();
    oldPrice = json['old_price'];
    discount = json['discount'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
    images = json['images'];
    inFavorites = json['in_favorites'];
    inCart = json['in_cart'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['price'] = this.price;
    data['old_price'] = this.oldPrice;
    data['discount'] = this.discount;
    data['image'] = this.image;
    data['name'] = this.name;
    data['description'] = this.description;
    data['images'] = this.images;
    data['in_favorites'] = this.inFavorites;
    data['in_cart'] = this.inCart;
    return data;
  }
}
