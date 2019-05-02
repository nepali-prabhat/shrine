import './product.dart';
//this immitates the values comming from the server
class ProductsRepositories{
  static List<Product> loadProducts(Category category){
    List<Product> products = <Product>[
      Product(
        category: Category.accessories,
        id: 0,
        featured: true,
        name: 'Vagabond sack',
        price: 120,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.accessories,
        id: 1,
        featured: true,
        name: 'Stella sunglasses',
        price: 58,
        desc: 'this is vagabond sack mate.',
      ),
      Product(
        category: Category.accessories,
        id: 2,
        featured: false,
        name: 'Whitney belt',
        price: 35,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.accessories,
        id: 3,
        featured: true,
        name: 'Garden strand',
        price: 98,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.accessories,
        id: 4,
        featured: false,
        name: 'Strut earrings',
        price: 34,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.accessories,
        id: 5,
        featured: false,
        name: 'Varsity socks',
        price: 12,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.accessories,
        id: 6,
        featured: false,
        name: 'Weave keyring',
        price: 16,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.accessories,
        id: 7,
        featured: true,
        name: 'Gatsby hat',
        price: 40,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.accessories,
        id: 8,
        featured: true,
        name: 'Shrug bag',
        price: 198,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.home,
        id: 9,
        featured: true,
        name: 'Gilt desk trio',
        price: 58,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.home,
        id: 10,
        featured: false,
        name: 'Copper wire rack',
        price: 18,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.home,
        id: 11,
        featured: false,
        name: 'Soothe ceramic set',
        price: 28,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.home,
        id: 12,
        featured: false,
        name: 'Hurrahs tea set',
        price: 34,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.home,
        id: 13,
        featured: true,
        name: 'Blue stone mug',
        price: 18,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.home,
        id: 14,
        featured: true,
        name: 'Rainwater tray',
        price: 27,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.home,
        id: 15,
        featured: true,
        name: 'Chambray napkins',
        price: 16,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.home,
        id: 16,
        featured: true,
        name: 'Succulent planters',
        price: 16,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.home,
        id: 17,
        featured: false,
        name: 'Quartet table',
        price: 175,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.home,
        id: 18,
        featured: true,
        name: 'Kitchen quattro',
        price: 129,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 19,
        featured: false,
        name: 'Clay sweater',
        price: 48,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 20,
        featured: false,
        name: 'Sea tunic',
        price: 45,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 21,
        featured: false,
        name: 'Plaster tunic',
        price: 38,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 22,
        featured: false,
        name: 'White pinstripe shirt',
        price: 70,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 23,
        featured: false,
        name: 'Chambray shirt',
        price: 70,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 24,
        featured: true,
        name: 'Seabreeze sweater',
        price: 60,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 25,
        featured: false,
        name: 'Gentry jacket',
        price: 178,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 26,
        featured: false,
        name: 'Navy trousers',
        price: 74,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 27,
        featured: true,
        name: 'Walter henley (white)',
        price: 38,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 28,
        featured: true,
        name: 'Surf and perf shirt',
        price: 48,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 29,
        featured: true,
        name: 'Ginger scarf',
        price: 98,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 30,
        featured: true,
        name: 'Ramona crossover',
        price: 68,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 31,
        featured: false,
        name: 'Chambray shirt',
        price: 38,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 32,
        featured: false,
        name: 'Classic white collar',
        price: 58,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 33,
        featured: true,
        name: 'Cerise scallop tee',
        price: 42,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 34,
        featured: false,
        name: 'Shoulder rolls tee',
        price: 27,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 35,
        featured: false,
        name: 'Grey slouch tank',
        price: 24,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 36,
        featured: false,
        name: 'Sunshirt dress',
        price: 58,
        desc: 'this is vagabond sack mate.'
      ),
      Product(
        category: Category.clothing,
        id: 37,
        featured: true,
        name: 'Fine lines tee',
        price: 58,
        desc: 'this is vagabond sack mate.'
      ),
    ];
    if(category == Category.all){
      return products;
    }else{
      return products.where((Product prod)=>prod.category == category).toList();
    }
  }
}