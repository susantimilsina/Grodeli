import 'dart:convert';
class Product {
  String id;
  String title;
  String price;
  String qty;
  String image;
  String dis;
  String des;
  //String href;

  Product({this.title,this.price,this.qty,this.image,this.id,this.des,this.dis});

  Product.fromJSON(Map<String, dynamic> jsonMap) {
    id = jsonMap['id'].toString()??'';
    title = jsonMap['title'].toString()??'Data';
    price = jsonMap['price'].toString()??'0.0';
    qty = jsonMap['qty'].toString()??'0.0';
    image = jsonMap['image'].toString();
    dis = jsonMap['dis'].toString()??'';
    des = jsonMap['des'].toString()??'';
  //  href = jsonMap['href']['link'].toString()??'';
  }
  static Map<String, dynamic> toMap(Product music) => {
    'id': music.id,
    'title': music.title,
    'price': music.price,
    'qty': music.qty,
    'image': music.image,
    'dis': music.dis,
    'des': music.des,
  };

  static String encodeProducts(List<Product> musics) => json.encode(
    musics
        .map<Map<String, dynamic>>((music) => Product.toMap(music))
        .toList(),
  );

  static List<Product> decodeProducts(String musics) =>
      (json.decode(musics) as List<dynamic>)
          .map<Product>((item) => Product.fromJSON(item))
          .toList();
}
