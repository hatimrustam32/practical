class product_model {
  final String? name;
  final String? category;
  final String? desciption;
  final double? price;
  final String? image;

  product_model(
      {required this.name,
      required this.category,
      required this.desciption,
      required this.price,
      required this.image});
}

List<product_model> product = [
  product_model(
      name: "veg pizaa",
      category: "pizaa",
      desciption: "Mozzarella Cheese, Parsley, El Classico Cheese.Relish rich Mozzarella cheese...",
      price: 22.00,
      image: "assets/images/wonder-veggie-pizza.jpg"),
  product_model(
      name: "crispy burger",
      category: "burger",
      desciption: "Our Best-Selling Burger With Crispy Veg Patty, Fresh Onion And Our Signature Sauce...",
      price: 20.00,
      image: "assets/images/crispy-burger.jpg"),
  product_model(
      name: "jumbo sandwich",
      category: "sandwich",
      desciption: "The classic combo of onion, tomato, cucumber, beetroot, boiled potato layered with green chutney and butter...",
      price: 15.00,
      image: "assets/images/Vegetable-Sandwich.jpg"),
  product_model(
      name: "cold coffee",
      category: "coffee",
      desciption:
          "Try this cold coffee & you will surely get addicted to this over the normal cold coffee...",
      price: 10.00,
      image: "assets/images/coffee.jpg"),
];

class cartmodel {
  final String? image;
  final String? name;
  final double? price;
  final int? qnty;

  cartmodel(
      {required this.name,
      required this.price,
      required this.image,
      this.qnty});
}

List<cartmodel> cartlist = [];
