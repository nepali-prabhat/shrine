import 'package:scoped_model/scoped_model.dart';

import './product.dart';
import './products_repositories.dart';


const double tax_rate = 0.13;
const double shipping_per_item = 1.7;

class AppStateModel extends Model{

  List<Product> _avaliableProducts;
  Category _selectedCategory;
  //id and quantity of products in cart
  Map<int,int> _cartProducts = <int,int>{};
  
  Map<int,int> get cartProducts => Map<int,int>.from(_cartProducts);

  Category get selectedCategory => _selectedCategory;

  int get totalCartQuantity => _cartProducts.values.fold( 0, ( int i, int value )=> i + value );

  double get subTotalCost{
    return _cartProducts.keys
      .map((int id)=> _avaliableProducts[id].price * _cartProducts[id] )
      .fold(0.0, (double sum, int value) => sum + value);
  }
  double get shippingCost{
    return _cartProducts.values.fold(0.0, (double sum, int qty) => sum+(qty*shipping_per_item));
  }
  double get tax{
    return subTotalCost*tax_rate;
  }
  double get totalCost{
    return tax+shippingCost+subTotalCost;
  }

  List<Product> getProducts(){
    if(_avaliableProducts==null){
      return <Product>[];
    }else{
      if(this._selectedCategory==Category.all) return _avaliableProducts;
      return _avaliableProducts.where((Product p)=>p.category == this._selectedCategory).toList();
    }
  }

  void addToCart(int id){
    if(_cartProducts.containsKey(id)){
      _cartProducts[id]++;
    }else{
      _cartProducts[id]=1;
    }
    notifyListeners();
  }

  void removeItem(int id){
    if(_cartProducts.containsKey(id)){
      if(_cartProducts[id]==1){
        _cartProducts.remove(id);
      }else{
        _cartProducts[id]--;
      }
    }
    notifyListeners();
  }

  Product getProductById(int id){
    return _avaliableProducts.where((Product p)=>p.id==id).toList()[0];
  }

  void clearCart(){
    _cartProducts.clear();
    notifyListeners();
  }

  void loadProducts(){
    _avaliableProducts = ProductsRepositories.loadProducts(_selectedCategory?? Category.all);
    notifyListeners();
  }
  void setCategory(Category category){
    _selectedCategory = category;
    notifyListeners();
  }

}