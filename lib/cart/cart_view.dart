import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_demo/cart/bloc/product_bloc.dart';
import 'package:quiz_demo/cart/bloc/product_event.dart';
import 'package:quiz_demo/cart/bloc/product_states.dart';
import 'package:quiz_demo/cart/cart_view_item.dart';
import 'package:quiz_demo/cart/repo/product_repository.dart';
import 'package:quiz_demo/db/PrdoductDao.dart';
import 'package:quiz_demo/db/database.dart';
import 'package:quiz_demo/db/model/ProductTable.dart';
import 'package:quiz_demo/model/Product.dart';
import 'package:quiz_demo/utils/extensions.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  late ProductDao dao;

  Future<void> getDatabase() async {
    WidgetsFlutterBinding.ensureInitialized();

    final database =
        await $FloorAppDatabase.databaseBuilder('database.db').build();
    dao = database.productDao;
  }

  @override
  void initState() {
    //dao = FetchDatabase.instance.getDatabase() as ProductDao;
    getDatabase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc(
        ProductRepository(),
      )..add(
          LoadProductEvent(),
        ),
      child: Column(
        children: [
          Container(
            height: 90,
            width: double.infinity,
            color: HexColor.fromHex('#00573D'),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'My Cart',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSens',
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            color: HexColor.fromHex("#014430"),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: const Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Text(
                    'Deliver to Jack Doy - 45454',
                    style: TextStyle(
                        fontFamily: 'OpenSens',
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ),
                Text(
                  'Change',
                  style: TextStyle(
                    fontFamily: 'OpenSens',
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: HexColor.fromHex('#F5F5F5'),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/delivery_van_icon.png',
                  width: 45,
                  height: 36,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order \$300.00 more and get free shipping!',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'OpenSens',
                              fontSize: 12,
                              color: HexColor.fromHex('#404040')),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '\$ 500',
                              maxLines: 1,
                              textAlign: TextAlign.right,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'OpenSens',
                                  fontSize: 16,
                                  color: HexColor.fromHex('#C3882C')),
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                height: 10,
                                child: ClipRRect(
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(
                                    10,
                                  )),
                                  child: LinearProgressIndicator(
                                    color: HexColor.fromHex('#C3882C'),
                                    value: 0.2,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        HexColor.fromHex('#C3882C')),
                                    backgroundColor:
                                        HexColor.fromHex('#EEDDC2'),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$ 500',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'OpenSens',
                                    fontSize: 16,
                                    color: HexColor.fromHex('#C3882C')),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
              if (state is ProductLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is ProductErrorState) {
                return const Center(child: Text("Error"));
              }
              if (state is ProductLoadedState) {
                insertProductData(state.product.products!);
                return ListView.builder(
                  itemBuilder: (con, index) {
                    return CartViewItem(
                        product: state.product.products![index]);
                  },
                  itemCount: state.product.products!.length,
                );
              }
              return const Text(
                'data',
                style: TextStyle(color: Colors.black),
              );
            }),
          ),
        ],
      ),
    );
  }

  Future<void> insertProductData(List<Products> product) async {
    for (Products model in product) {
      dao.findProductsById(model.id!).listen((value) {
        if (value == null) {
          dao.insertPerson(ProductsTable(
              id: model.id,
              brand: model.brand,
              category: model.category,
              description: model.description,
              rating: model.rating?.toDouble(),
              title: model.title,
              price: model.price,
              discountPercentage: model.discountPercentage,
              stock: model.stock,
              thumbnail: model.thumbnail));
        }
      });
    }
  }
}
