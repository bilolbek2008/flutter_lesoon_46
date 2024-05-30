class Product {
  final int id;
  final String title;
  final String imageUrl;
  final int price;
  final String description;

  Product({required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.price});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      imageUrl: json['images'][0],
      price:json['price'],
      description: json['description'],
    );
  }
}



