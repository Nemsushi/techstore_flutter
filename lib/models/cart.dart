import 'package:techstore_flutter/core/store.dart';
import 'package:techstore_flutter/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel{

  //catalog field
  late CatalogModel _catalog;

  //Collection of Id = store iD of each item
  final List<int> _itemIds = [];

  //get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog){
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get Items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get tatal price
  num get totalPrice => items.fold(0, (total, current) => total + current.price);
  
}


  class AddMutation extends VxMutation<MyStore>{
    final Item item;
    AddMutation(this.item);

  @override
  perform() {
    store?.cart._itemIds.add(this.item.id);
    }
  }


    class RemoveMutation extends VxMutation<MyStore>{
    final Item item;
    RemoveMutation(this.item);

    @override
    perform() {
      store?.cart._itemIds.remove(this.item.id);
      }
    }