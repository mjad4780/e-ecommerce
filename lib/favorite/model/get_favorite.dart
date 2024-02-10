// // class get_favorite {
// //   int? id;
// //   Product? product;

// //   get_favorite({this.id, this.product});

// //   get_favorite.fromJson(Map<String, dynamic> json) {
// //     id = json['id'];
// //     product =
// //         json['product'] != null ? new Product.fromJson(json['product']) : null;
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = new Map<String, dynamic>();
// //     data['id'] = this.id;
// //     if (this.product != null) {
// //       data['product'] = this.product!.toJson();
// //     }
// //     return data;
// //   }
// // }

// class Product {
//   int? id;
//   int? price;
//   int? oldPrice;
//   int? discount;
//   String? image;
//   String? name;
//   String? description;

//   // Product(
//   //     {this.id,
//   //     this.price,
//   //     this.oldPrice,
//   //     this.discount,
//   //     this.image,
//   //     this.name,
//   //     this.description});

//   Product.fromJson({required Map<String, dynamic> json}) {
//     id = json['id'];
//     price = json['price'].toInt();
//     oldPrice = json['old_price'].toInt();
//     discount = json['discount'].toInt();
//     image = json['image'];
//     name = json['name'];
//     description = json['description'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['price'] = this.price;
//     data['old_price'] = this.oldPrice;
//     data['discount'] = this.discount;
//     data['image'] = this.image;
//     data['name'] = this.name;
//     data['description'] = this.description;
//     return data;
//   }
// }
