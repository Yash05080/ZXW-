import 'package:e_commerce/Providers/cart_provider.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screens/cart/checkout_box.dart';
import 'package:e_commerce/screens/nav_bar.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final finalList = provider.cart;

    //for quantity
    productQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            icon == Icons.add
                ? provider.incrementQtn(index)
                : provider.decrementQtn(index);
          });
        },
        child: Icon(
          icon,
          size: 20,
        ),
      );
    }

    return Scaffold(
      bottomSheet: CheckOutBox(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => bottomNavBar()));
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                    ),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.all(15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "My Cart",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  Container()
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: finalList.length,
                itemBuilder: (context, index) {
                  final cartItems = finalList[index];
                  return Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: kcontentcolor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Image.network(cartItems.image),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cartItems.title,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    cartItems.category,
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "\$${cartItems.price}",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 35,
                        right: 35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  finalList.removeAt(index);
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 22,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: kcontentcolor,
                                  border: Border.all(
                                      color: Colors.grey.shade200, width: 2),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  productQuantity(Icons.remove, index),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    cartItems.quantity.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  productQuantity(Icons.add, index),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
