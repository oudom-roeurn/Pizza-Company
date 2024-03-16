import 'package:design_app_ui/detail_productscreen.dart';
import 'package:design_app_ui/product_model.dart';
import 'package:design_app_ui/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductModel> filter = [];
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ));
            },
          ),
          backgroundColor: Colors.green,
          title: const Text(
            'Shppping',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontFamily: 'Arvo-Regular'),
          ),
          centerTitle: true,
          actions: [
            badges.Badge(
              badgeContent: Text(cardlist.length.toString()),
              child: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'search for restaurants or foods',
                  suffixIcon: Icon(Icons.search)),
              onChanged: (value) {
                setState(() {
                  filter = listProduct
                      .where((element) => element.name!
                          .toLowerCase()
                          .contains(value.toLowerCase()))
                      .toList();
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arvo-Regular'),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 670,
                width: double.infinity,
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 10 / 12,
                  children: List.generate(
                      controller.text.isEmpty || filter.isEmpty
                          ? listProduct.length
                          : filter.length, (index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailProduct(
                                    pro: controller.text.isEmpty ||
                                            filter.isEmpty
                                        ? listProduct[index]
                                        : filter[index],
                                  ),
                                ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.blue,
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    listProduct[index]
                                                        .image
                                                        .toString()))),
                                      ),
                                    ),
                                    Text(listProduct[index].name.toString()),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$ ${listProduct[index].price}',
                                          style: const TextStyle(
                                              color: Colors.red),
                                        ),
                                        Text(listProduct[index].qty.toString())
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  right: 10,
                                  top: 10,
                                  child: IconButton(
                                    icon: Icon(Icons.favorite,
                                        color: listProduct[index].isFavorite ==
                                                true
                                            ? Colors.red
                                            : Colors.white),
                                    onPressed: () {
                                      setState(() {
                                        listProduct[index].isFavorite =
                                            !listProduct[index].isFavorite!;
                                      });
                                    },
                                  ))
                            ],
                          ),
                        ));
                  }),
                ))
          ]),
        ));
  }
}
