import 'dart:convert';
class Product {
  String id;
  String title;
  String price;
  String qty;
  String image;
  String dis;
  String des;
  String weight;
  //String href;

  Product({this.title,this.price,this.qty,this.image,this.id,this.des,this.dis, this.weight});

  Product.fromJSON(Map<String, dynamic> jsonMap) {
    id = jsonMap['id'].toString()??'';
    title = jsonMap['title'].toString()??'Data';
    price = jsonMap['price'].toString()??'0.0';
    qty = jsonMap['qty'].toString()??'0.0';
    image = jsonMap['image'].toString();
    dis = jsonMap['dis'].toString()??'';
    des = jsonMap['des'].toString()??'';
    weight = jsonMap['wt'].toString()??'';
    //  href = jsonMap['href']['link'].toString()??'';
  }
  static Map<String, dynamic> toMap(Product item) => {
    'id': item.id,
    'title': item.title,
    'price': item.price,
    'qty': item.qty,
    'image': item.image,
    'dis': item.dis,
    'des': item.des,
    'wt': item.weight,
  };

  static String encodeProducts(List<Product> items) => json.encode(
    items
        .map<Map<String, dynamic>>((item) => Product.toMap(item))
        .toList(),
  );

  static List<Product> decodeProducts(String musics) =>
      (json.decode(musics) as List<dynamic>)
          .map<Product>((item) => Product.fromJSON(item))
          .toList();
}
