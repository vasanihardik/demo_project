import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';
import 'package:quiz_demo/home/GridViewListl.dart';
import 'package:quiz_demo/home/SliderBox.dart';
import 'package:quiz_demo/home/SquareViewHorizonal.dart';
import 'package:quiz_demo/home/SquareViewPosterHorizontal.dart';
import 'package:quiz_demo/home/home_slider.dart';
import 'package:quiz_demo/model/Product.dart';
import 'package:quiz_demo/search_view/bloc/search_bloc.dart';
import 'package:quiz_demo/search_view/search_view.dart';
import 'package:quiz_demo/utils/extensions.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: homeKey,
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case '/':
              builder = (BuildContext _) => View();
              break;
            case SearchView.route:
              builder = (BuildContext context1) {
                //final id = (settings.arguments as Map)['id'];
                return BlocProvider(
                  create: (context) => SearchBloc(),
                  child: const SearchView(),
                );
              };
              break;
            default:
              builder = (BuildContext _) => View();
          }
          return MaterialPageRoute(builder: builder, settings: settings);
        });
  }
}

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _View();
}

class _View extends State<View> {
  final List<Widget> _list = [
    const SliderBox(
        child: Image(
      image: AssetImage('assets/images/slider.png'),
      fit: BoxFit.fill,
    )),
    const SliderBox(
        child: Image(
            image: AssetImage('assets/images/slider.png'), fit: BoxFit.fill)),
    const SliderBox(
        child: Image(
            image: AssetImage('assets/images/slider.png'), fit: BoxFit.fill)),
  ];

  Dio? dio;
  bool isLoading = false;
  bool isSearching = false;
  Product? product;
  final _debouncer = Debouncer(delay: const Duration(milliseconds: 500));
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    BaseOptions options = BaseOptions(baseUrl: 'https://dummyjson.com/');
    dio = Dio(options);
    getProductList();
  }

  Future<void> getProductList() async {
    dio?.get('');
    try {
      final response = await dio?.get('products');
      if (response?.statusCode == 200) {
        product = Product.fromJson(response?.data);
        print('data geldi');
        print('data ${product?.products?.length}');
      }
      setState(() {
        isLoading = true;
        errorMessage = null;
      });
    } on DioError catch (e) {
      setState(() {
        errorMessage = e.response?.statusMessage;
        isLoading = false;
      });
      print('Error Message ${e.response?.statusMessage}');
      print(e.response?.headers);
      print(e.response?.requestOptions);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 90,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        color: HexColor.fromHex("#00573D"),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/home_logo.png",
              width: 45,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  height: 45,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/search_ic.png",
                        height: 14,
                        width: 14,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search Product',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: HexColor.fromHex('#A1A1A1'),
                            fontFamily: 'OpenSens',
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  navigate(context, SearchView.route, isRootNavigator: false);
                  /*Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  SearchView();
                  }));*/
                },
              ),
            )
          ],
        ),
      ),
      Container(
        color: HexColor.fromHex("#014430"),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child:  Row(
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Text(
                "How Are you !".tr,
                style: const TextStyle(
                    fontFamily: 'OpenSens',
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  Get.updateLocale(const Locale("gu","IN"));
                });
              },
              child: const Text(
                'Change',
                style: TextStyle(
                  fontFamily: 'OpenSens',
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: SingleChildScrollView(
          child: Container(
            color: HexColor.fromHex('#F5F5F5'),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/time_ic.png",
                        width: 45,
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                            style: TextStyle(
                                color: HexColor.fromHex('#00573D'),
                                fontSize: 14,
                                fontFamily: 'OpenSens',
                                fontWeight: FontWeight.w300),
                            children: [
                              TextSpan(
                                  text: 'Good Morning Jim.\n',
                                  style: TextStyle(
                                      color: HexColor.fromHex('#00573D'),
                                      fontSize: 14,
                                      fontFamily: 'OpenSens',
                                      fontWeight: FontWeight.w300)),
                              TextSpan(
                                  text: 'Let’s change some lives!',
                                  style: TextStyle(
                                      color: HexColor.fromHex('#00573D'),
                                      fontSize: 14,
                                      fontFamily: 'OpenSens',
                                      fontWeight: FontWeight.w500)),
                            ]),
                      ),
                    ],
                  ),
                ),
                HomeSlider(list: _list),
                Visibility(
                  visible: isLoading,
                  replacement: const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Center(
                      child: CircularProgressIndicator()
                      /*Text(
                        'Loading.....',
                        style: TextStyle(
                            color: HexColor.fromHex('#00573D'),
                            fontSize: 14,
                            fontFamily: 'OpenSens',
                            fontWeight: FontWeight.w500),
                      )*/,
                    ),
                  ),
                  child: SquareViewHorizontal(
                      isSquareView: true, products: getProducts(product)),
                ),
                //const SquareViewHorizontal(isSquareView: false, products: []),
                const SizedBox(
                  height: 20,
                ),
                const GridListView(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  color: const Color.fromRGBO(201, 201, 192, 1.0),
                  child: const SquareViewPosterHorizontal(),
                ),
              ],
            ),
          ),
        ),
      )
    ]);
  }

  List<Products> getProducts(Product? product) {
    List<Products> products = [];

    if (product != null && product.products != null) {
      return product.products!;
    }

    return products;
  }
}
