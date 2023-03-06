import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  State<Body> createState() => _BodyState();
}
class _BodyState extends State<Body> {
  @override
  List<String> productName=['Vegetarian Delight','Non Veg Delight','Healthy Vegetarian','Healthy Non Veg'];
  List<String> productImage=['assets/images/V.png','assets/images/NV.png','assets/images/HV.png','assets/images/HNV.png'];
  List<String> productCategoryImage=['assets/images/Vegetarian Logo.png','assets/images/Non Vegetarian Logo.png','assets/images/Vegetarian Logo.png','assets/images/Non Vegetarian Logo.png'];
  List<int> productPrice=[299,299,399,399];
  List<int> productQuantity=[0,0,0,0];
  Widget build(BuildContext context) {
    int total = this.productQuantity[0] + this.productQuantity[1] + productQuantity[2] + productQuantity[3];
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
              children:[
                ListView.builder(itemCount: productName.length,itemBuilder: (context, index){
                  return Column(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 110,
                        decoration: BoxDecoration(
                            color: Color(0xfff2f2f2),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image:DecorationImage(
                                      fit: BoxFit.cover,
                                      image:AssetImage(productImage[index],)
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:20.0),
                              child: Container(
                                width: 180,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image:DecorationImage(
                                              image: AssetImage(productCategoryImage[index]),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          productName[index],
                                          style: TextStyle(
                                            //color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),),],
                                    ),
                                    Text('See today\'s menu for item \ndetails',style: TextStyle(fontSize: 12),),
                                    Text('₹ '+productPrice[index].toString(),style: TextStyle(fontSize: 12,color: Colors.black),)

                                    //Text(result2,style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w600),)//will be updated according to date
                                  ],
                                ),
                              ),
                            ),
                            productQuantity[index]==0? Padding(
                              padding: const EdgeInsets.only(top: 55,left: 15),
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    //print(productQuantity[index]);
                                    //int a=productQuantity[0];
                                    // print('index');
                                    //print(index);
                                    ///print('productQuantity[index] value');
                                    // print(productQuantity[index]);
                                    int a = productQuantity[index]++;
                                    // print(a);
                                    productQuantity[index]=1;
                                    //print(productQuantity[index]);
                                    //print('total');
                                    //print(total);
                                    // print('p1');
                                    //print(p1Quantity);
                                  });
                                },
                                child: Container(
                                  height: 25,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Color(0xffEb4749),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(child: Text('Add',style: TextStyle(fontSize: 12,color: Colors.white),)),
                                ),
                              ),
                            ):Padding(padding: const EdgeInsets.only(top: 55,left: 15), child: Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      //p1Quantity--;
                                      productQuantity[index]--;
                                      //print('-- activity');
                                      //print(productQuantity[index]);
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 20,
                                    decoration: BoxDecoration(color: Color(0xffEb4749),
                                        borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(10),bottomStart: Radius.circular(10),
                                        )
                                    ),
                                    child: Center(
                                      child: Text('-',style: TextStyle(fontSize: 12,color: Colors.white),),
                                    ),

                                  ),
                                ),
                                Container(
                                  height: 25,
                                  width: 30,
                                  color: Colors.white,
                                  child: Center(
                                    child: Text(productQuantity[index].toString(),style: TextStyle(fontSize: 12,color: Color(0xffeb4749)),),
                                  ),

                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      productQuantity[index]++;
                                      // print(total);
                                    });

                                  },
                                  child: Container(
                                    height: 25,
                                    width: 20,
                                    decoration: BoxDecoration(color: Color(0xffEb4749),
                                        borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(10),bottomEnd: Radius.circular(10),
                                        )
                                    ),
                                    child: Center(
                                      child: Text('+',style: TextStyle(fontSize: 12,color: Colors.white),),
                                    ),

                                  ),
                                ),
                              ],
                            ),)
                          ],
                        ),

                      ),
                      SizedBox(height: 20,),
                    ],);

                }),



                total>0?Positioned(
                  bottom:20 ,
                  child: Container(
                      width: MediaQuery.of(context).size.width-40,
                      height: 60,
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text((productQuantity[0]+productQuantity[1]+productQuantity[2]+productQuantity[3]).toString()+' items | ',style: TextStyle(color: Colors.white ),),
                                    Text('₹ '+(productQuantity[0]*299+productQuantity[1]*299+productQuantity[2]*399+productQuantity[3]*399).toString(),style: TextStyle(color: Colors.white ),),

                                  ],
                                ),
                                Text('Extra charges may apply',style: TextStyle(color: Colors.white,fontSize: 10 ),)
                              ],
                            ),
                            Spacer(),
                            Text('View Cart',style: TextStyle(color: Colors.white ),)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(color: Color(0xffEb4749),
                        borderRadius:BorderRadius.circular(10),
                      )

                  ),
                ):SizedBox(),

              ]
          )
      ),

    );
  }
}




// Container(
//   width: MediaQuery.of(context).size.width,
//   height: 110,
//   decoration: BoxDecoration(
//       color: Color(0xfff2f2f2),
//       borderRadius: BorderRadius.circular(10)
//   ),
//   child: Row(
//     children: [
//       Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Container(
//           height: 60,
//           width: 60,
//           decoration: BoxDecoration(
//
//             borderRadius: BorderRadius.circular(10),
//
//             image:DecorationImage(
//                 fit: BoxFit.cover,
//                 image:AssetImage('assets/images/NV.png',)
//             ),
//
//           ),
//         ),
//       ),
//
//       Padding(
//         padding: const EdgeInsets.only(top:20.0),
//         child: Container(
//           width: 180,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                     height: 20,
//                     width: 20,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       image:DecorationImage(
//                         image: AssetImage('assets/images/Non Vegetarian Logo.png'),
//                       ),
//
//                     ),
//
//                   ),
//                   Text(
//                     " Non Vegeterian",
//                     style: TextStyle(
//                       //color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600),),],
//               ),
//               Text('See today\'s menu for item \ndetails',style: TextStyle(fontSize: 12),),
//               Text('₹ 299.00',style: TextStyle(fontSize: 12,color: Colors.black),)
//
//
//               //Text(result2,style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w600),)//will be updated according to date
//             ],
//           ),
//         ),
//       ),
//
//       p2Quantity==0? Padding(
//         padding: const EdgeInsets.only(top: 55,left: 15),
//         child: GestureDetector(
//           onTap: (){
//             setState(() {
//               p2Quantity++;
//             });
//
//
//           },
//           child: Container(
//             height: 25,
//             width: 70,
//             decoration: BoxDecoration(
//
//                 color: Color(0xffEb4749),
//                 borderRadius: BorderRadius.circular(10)
//             ),
//             child: Center(child: Text('Add',style: TextStyle(fontSize: 12,color: Colors.white),)),
//           ),
//         ),
//       ):Padding(padding: const EdgeInsets.only(top: 55,left: 15), child: Row(
//         children: [
//           GestureDetector(
//             onTap: (){
//               setState(() {
//                 p2Quantity--;
//               });
//
//             },
//             child: Container(
//               height: 25,
//               width: 20,
//               decoration: BoxDecoration(color: Color(0xffEb4749),
//                   borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(10),bottomStart: Radius.circular(10),
//                   )
//               ),
//               child: Center(
//                 child: Text('-',style: TextStyle(fontSize: 12,color: Colors.white),),
//               ),
//
//             ),
//           ),
//           Container(
//             height: 25,
//             width: 30,
//             color: Colors.white,
//             child: Center(
//               child: Text('$p2Quantity',style: TextStyle(fontSize: 12,color: Color(0xffeb4749)),),
//             ),
//
//           ),
//           GestureDetector(
//             onTap: (){
//               setState(() {
//                 p2Quantity++;
//               });
//
//             },
//             child: Container(
//               height: 25,
//               width: 20,
//               decoration: BoxDecoration(color: Color(0xffEb4749),
//                   borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(10),bottomEnd: Radius.circular(10),
//                   )
//               ),
//               child: Center(
//                 child: Text('+',style: TextStyle(fontSize: 12,color: Colors.white),),
//               ),
//
//             ),
//           ),
//         ],
//       ),)
//
//     ],
//   ),
//
// ),
// SizedBox(height: 20,),
// Container(
//   width: MediaQuery.of(context).size.width,
//   height: 110,
//   decoration: BoxDecoration(
//       color: Color(0xfff2f2f2),
//       borderRadius: BorderRadius.circular(10)
//   ),
//   child: Row(
//     children: [
//       Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Container(
//           height: 60,
//           width: 60,
//           decoration: BoxDecoration(
//
//             borderRadius: BorderRadius.circular(10),
//
//             image:DecorationImage(
//                 fit: BoxFit.cover,
//                 image:AssetImage('assets/images/HV.png',)
//             ),
//
//           ),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.only(top:20.0),
//         child: Container(
//           width: 180,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                     height: 20,
//                     width: 20,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       image:DecorationImage(
//                         image: AssetImage('assets/images/Vegetarian Logo.png'),
//                       ),
//
//                     ),
//
//                   ),
//                   Text(
//                     " Healthy Vegeterian",
//                     style: TextStyle(
//                       //color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600),),],
//               ),
//               Text('See today\'s menu for item \ndetails',style: TextStyle(fontSize: 12),),
//               Text('₹ 399.00',style: TextStyle(fontSize: 12,color: Colors.black),)
//
//
//               //Text(result2,style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w600),)//will be updated according to date
//             ],
//           ),
//         ),
//       ),
//
//       p3Quantity==0? Padding(
//         padding: const EdgeInsets.only(top: 55,left: 15),
//         child: GestureDetector(
//           onTap: (){
//             setState(() {
//               p3Quantity++;
//             });
//
//
//           },
//           child: Container(
//             height: 25,
//             width: 70,
//             decoration: BoxDecoration(
//
//                 color: Color(0xffEb4749),
//                 borderRadius: BorderRadius.circular(10)
//             ),
//             child: Center(child: Text('Add',style: TextStyle(fontSize: 12,color: Colors.white),)),
//           ),
//         ),
//       ):Padding(padding: const EdgeInsets.only(top: 55,left: 15), child: Row(
//         children: [
//           GestureDetector(
//             onTap: (){
//               setState(() {
//                 p3Quantity--;
//               });
//
//             },
//             child: Container(
//               height: 25,
//               width: 20,
//               decoration: BoxDecoration(color: Color(0xffEb4749),
//                   borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(10),bottomStart: Radius.circular(10),
//                   )
//               ),
//               child: Center(
//                 child: Text('-',style: TextStyle(fontSize: 12,color: Colors.white),),
//               ),
//
//             ),
//           ),
//           Container(
//             height: 25,
//             width: 30,
//             color: Colors.white,
//             child: Center(
//               child: Text('$p3Quantity',style: TextStyle(fontSize: 12,color: Color(0xffeb4749)),),
//             ),
//
//           ),
//           GestureDetector(
//             onTap: (){
//               setState(() {
//                 p3Quantity++;
//               });
//
//             },
//             child: Container(
//               height: 25,
//               width: 20,
//               decoration: BoxDecoration(color: Color(0xffEb4749),
//                   borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(10),bottomEnd: Radius.circular(10),
//                   )
//               ),
//               child: Center(
//                 child: Text('+',style: TextStyle(fontSize: 12,color: Colors.white),),
//               ),
//
//             ),
//           ),
//         ],
//       ),)
//
//     ],
//   ),
//
// ),
// SizedBox(height: 20,),
// Container(
//   width: MediaQuery.of(context).size.width,
//   height: 110,
//   decoration: BoxDecoration(
//       color: Color(0xfff2f2f2),
//       borderRadius: BorderRadius.circular(10)
//   ),
//   child: Row(
//     children: [
//       Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Container(
//           height: 60,
//           width: 60,
//           decoration: BoxDecoration(
//
//             borderRadius: BorderRadius.circular(10),
//
//             image:DecorationImage(
//                 fit: BoxFit.cover,
//                 image:AssetImage('assets/images/HNV.png',)
//             ),
//
//           ),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.only(top:20.0),
//         child: SizedBox(
//           width: 180,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                     height: 20,
//                     width: 20,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       image:DecorationImage(
//                         image: AssetImage('assets/images/Non Vegetarian Logo.png'),
//                       ),
//
//                     ),
//
//                   ),
//                   Text(
//                     " Healthy Non Veg", style: TextStyle(fontSize: 16,
//                       fontWeight: FontWeight.w600),),],
//               ),
//               Text('See today\'s menu for item \ndetails',style: TextStyle(fontSize: 12),)
//               ,
//               Text('₹ 399.00',style: TextStyle(fontSize: 12,color: Colors.black),)
//
//
//               //Text(result2,style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w600),)//will be updated according to date
//             ],
//           ),
//         ),
//       ),
//
//       p4Quantity==0? Padding(
//         padding: const EdgeInsets.only(top: 55,left: 15),
//         child: GestureDetector(
//           onTap: (){
//             setState(() {
//               p4Quantity++;
//             });
//
//
//           },
//           child: Container(
//             height: 25,
//             width: 70,
//             decoration: BoxDecoration(
//
//                 color: Color(0xffEb4749),
//                 borderRadius: BorderRadius.circular(10)
//             ),
//             child: Center(child: Text('Add',style: TextStyle(fontSize: 12,color: Colors.white),)),
//           ),
//         ),
//       ):Padding(padding: const EdgeInsets.only(top: 55,left: 15), child: Row(
//         children: [
//           GestureDetector(
//             onTap: (){
//               setState(() {
//                 p4Quantity--;
//               });
//
//             },
//             child: Container(
//               height: 25,
//               width: 20,
//               decoration: BoxDecoration(color: Color(0xffEb4749),
//                   borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(10),bottomStart: Radius.circular(10),
//                   )
//               ),
//               child: Center(
//                 child: Text('-',style: TextStyle(fontSize: 12,color: Colors.white),),
//               ),
//
//             ),
//           ),
//           Container(
//             height: 25,
//             width: 30,
//             color: Colors.white,
//             child: Center(
//               child: Text('$p4Quantity',style: TextStyle(fontSize: 12,color: Color(0xffeb4749)),),
//             ),
//
//           ),
//           GestureDetector(
//             onTap: (){
//               setState(() {
//                 p4Quantity++;
//               });
//
//             },
//             child: Container(
//               height: 25,
//               width: 20,
//               decoration: BoxDecoration(color: Color(0xffEb4749),
//                   borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(10),bottomEnd: Radius.circular(10),
//                   )
//               ),
//               child: Center(
//                 child: Text('+',style: TextStyle(fontSize: 12,color: Colors.white),),
//               ),
//
//             ),
//           ),
//         ],
//       ),)
//
//     ],
//   ),
//
// ),