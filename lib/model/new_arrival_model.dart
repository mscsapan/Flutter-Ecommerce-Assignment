class Arrival {
  final String category;
  final String name;
  final String image;
  final double price;
  final double discount;
  final bool isFavorite;

  Arrival(
      {required this.category,
      required this.name,
      required this.image,
      this.price = 19.50,
      this.discount = 50.0,
      required this.isFavorite});
}
