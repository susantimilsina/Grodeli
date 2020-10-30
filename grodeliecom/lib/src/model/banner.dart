class Banners {
  String id;
  String linkimage;
  String title;
  Banners({this.id, this.title,this.linkimage});

  Banners.fromJSON(Map<String, dynamic> jsonMap)
  : id = jsonMap['id'].toString(),
   title = jsonMap['title'].toString(),
    linkimage = jsonMap['image'].toString();
}
