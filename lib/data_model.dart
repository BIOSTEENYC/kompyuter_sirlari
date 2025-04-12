class DataModel {
  final String category;
  final List<Item> items;

  DataModel({required this.category, required this.items});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      category: json['name'],
      items: (json['items'] as List).map((item) => Item.fromJson(item)).toList(),
    );
  }
}

class Item {
  final String title;
  final String link;
  Item({required this.title, required this.link});
  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      title: json['title'],
      link: json['link'],
    );
  }
}