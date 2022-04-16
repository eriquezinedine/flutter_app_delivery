class Product {
  const Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
  final String name;
  final String description;
  final double price;
  final String image;


  static List<Product> products = const [
    Product(
      name: 'WHOPPER Crispy',
      description:'Delicious 100% grilled beef burger alternative with cheese flakes, crunchy onion ',
      price: 35,
      image: 'assets/b1.png',
    ),
    Product(
      name: 'XT Cheese Bacon',
      description:'100% beef, 75% larger, served with fresh greens, creamy mayo, cheese, and bacon i',
      price: 58,
      image: 'assets/b2.png',
    ),
    Product(
      name: 'Megastacker',
      description:'For the hungry. An extreme combination of 100% grilled beef, cheese flakes, BBQ s',
      price: 20,
      image: 'assets/b3.png',
    ),
    Product(
      name: 'Salchipapa',
      description:'If you are a fan of our iconic STACKER Double Reg burger. With this option, you ',
      price: 78,
      image: 'assets/b2.png',
    ),
    Product(
      name: 'Pollo Frito',
      description:'Delicious 100% grilled beef burger alternative with cheese flakes, crunchy onion ',
      price: 18,
      image: 'assets/b1.png',
    ),
  ];
}




