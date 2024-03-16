import 'dart:developer';

import 'package:design_app_ui/product_model.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatefulWidget {
  DetailProduct({super.key, required this.pro});
  ProductModel pro;
  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  late int qty = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Product',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Playball-Regular',
              fontSize: 50),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: NetworkImage(widget.pro.image.toString())),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                widget.pro.name.toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                              Text(
                                '\$ ${widget.pro.price}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 20),
                                  Expanded(
                                    child: Text(
                                      widget.pro.description.toString(),
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0, vertical: 150),
                    child: Container(
                      margin: const EdgeInsets.all(0),
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            height: 60,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(999)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      qty--;
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: 22,
                                    backgroundColor: Colors.grey.shade900,
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text(
                                  qty.toString(),
                                  style: const TextStyle(fontSize: 20),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      qty++;
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: 22,
                                    backgroundColor: Colors.grey.shade900,
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                widget.pro.qty = qty;
                                cardlist.add(widget.pro);
                              });
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.grey.shade900),
                                fixedSize: MaterialStateProperty.all(
                                    const Size(double.infinity, 50)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0)))),
                            child: const Text(
                              'Add to Card',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
