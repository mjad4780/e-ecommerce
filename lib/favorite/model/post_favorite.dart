// class get_favorite {
//   bool? status;
//   String? message;
//   Data? data;

//   get_favorite({this.status, this.message, this.data});

//   get_favorite.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     message = json['message'];
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     data['message'] = this.message;
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     return data;
//   }
// }

// class Data {
//   int? id;
//   Product? product;

//   Data({this.id, this.product});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     product =
//         json['product'] != null ? new Product.fromJson(json['product']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     if (this.product != null) {
//       data['product'] = this.product!.toJson();
//     }
//     return data;
//   }
// }

// class Product {
//   int? id;
//   double? price;
//   double? oldPrice;
//   int? discount;
//   String? image;

//   Product({this.id, this.price, this.oldPrice, this.discount, this.image});

//   Product.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     price = json['price'].toInt();
//     oldPrice = json['old_price'].toInt();
//     discount = json['discount'];
//     image = json['image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['price'] = this.price;
//     data['old_price'] = this.oldPrice;
//     data['discount'] = this.discount;
//     data['image'] = this.image;
//     return data;
//   }
// }
