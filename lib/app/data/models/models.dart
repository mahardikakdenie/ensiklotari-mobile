class ProductModel {
  int id;
  String image;
  String title;
  String type;
  String description;
  double price;

  ProductModel(
      this.id, this.image, this.title, this.type, this.description, this.price);
}

class Data {
  static List<ProductModel> generateProducts() {
    return [
      ProductModel(1, "assets/images/shoes_1.png", "Creter Impact",
          "Men's Shoes", "men shoes", 99.56),
      ProductModel(2, "assets/images/shoes_2.png", "Air - Max Pre Day",
          "Men's Shoes", "men shoes", 137.56),
      ProductModel(3, "assets/images/shoes_3.png", "Air Max 51", "Men's Shoes",
          "men shoes", 99.56),
    ];
  }

  static List<ProductModel> generateCategories() {
    return [
      ProductModel(
          1, "assets/images/shoes_1.png", "Dasar 1", "Tari", "tari", 99.000),
      ProductModel(
          2, "assets/images/shoes_2.png", "Dasar 2", "Tari", "tari", 99.000),
      ProductModel(
          3, "assets/images/shoes_3.png", "Menengah", "Tari", "tari", 99.000),
      ProductModel(4, "assets/images/shoes_3.png", "Professional", "Tari",
          "tari", 99.000),
    ];
  }
}
