import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practical/product_model.dart';

class cart_screen extends StatefulWidget {
  const cart_screen({super.key});

  @override
  State<cart_screen> createState() => _cart_screenState();
}

class _cart_screenState extends State<cart_screen> {
  double Subtotal=0.0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
                color: Color(0xffDA291C)
                    ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            // decoration: BoxDecoration(color: Colors.red),
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      CupertinoIcons.back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Text(
                    "Cart",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30,
                      )),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: height - 140,
              decoration: BoxDecoration(
                  color: Color(0xffF7F6FB),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 00),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    children: [
                      Container(
                        height: height - 500,
                        child: SingleChildScrollView(
                          child: Column(
                              children: cartlist
                                  .map((e) => Center(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: Color(0xffffffff),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            height: 100,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15.0,
                                                  right: 15,
                                                  top: 10,
                                                  bottom: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Image.asset(
                                                      e.image.toString()),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        e.name.toString(),
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 17,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Text(e.price.toString(),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500))
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right:
                                                                        10.0),
                                                            child: Icon(
                                                                CupertinoIcons
                                                                    .minus_circle_fill),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right:
                                                                        10.0),
                                                            child: Text(
                                                                e.qnty
                                                                    .toString(),
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18)),
                                                          ),
                                                          Icon(Icons
                                                              .add_circle_rounded),
                                                        ],
                                                      ),
                                                      Text(
                                                          sum1(e.qnty!,
                                                                  e.price!)
                                                              .toString(),
                                                          style:
                                                              TextStyle(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade700,
                                                                  fontSize: 17))
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            Subtotal=Subtotal-Subtotal;
                                                            cartlist.remove(e);
                                                          });
                                                        },
                                                        child: Icon(
                                                            CupertinoIcons
                                                                .delete)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ))
                                  .toList()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15, top: 0, bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(CupertinoIcons.qrcode),
                                    Text(
                                      "Promo Code",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 17),
                                    ),
                                    Container(
                                      width: 90,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Color(0xffDA291C),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                          child: Text(
                                        "Apply",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      )),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          width: double.infinity,
                          // height: height - 712,
                          height: height - 642,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15, top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Subtotal",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 18)),
                                    Text(Subtotal.toString(),
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 18))
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 6.0, bottom: 6),
                                  child: Divider(
                                    height: 5,
                                    color: Colors.grey,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Delivery",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 18)),
                                    Text("3.50",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 18))
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 6.0, bottom: 6),
                                  child: Divider(
                                    height: 4,
                                    color: Colors.grey,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Total",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18)),
                                    Text(Total().toString(),
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Color(0xffDA291C),
                            borderRadius: BorderRadius.circular(18)),
                        child: Center(
                            child: Text(
                          "CHECKOUT",
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  var total;

  sum1(int qnty, double price) {
    var ans = qnty * price;
    subTotal(ans.toInt());
    return ans;
  }
  subTotal(int ans){
    Subtotal=Subtotal+ans;
    return Subtotal;
  }
  Total(){
    total=Subtotal+3.50;
    return total;
  }

}
