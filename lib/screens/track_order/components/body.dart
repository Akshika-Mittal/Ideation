import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'dart:async';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../utils/AppColors.dart';
import '../../../utils/constants.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}




class _BodyState extends State<Body> {
  final String valet_name ='Rajesh Gupta';
  final int order_id = 1234567890;
  final double valet_lat=25.443920;
  final double valet_long=81.825027;
  final  String valet_image='assets/images/Dal.png';
  final String customer_meal="Vegetarian Delight";
  //final String customer_address;
  LatLng?  customerLocationInitialize;
  List<LatLng> polyineCoordinates = [];
  LatLng lateInit=LatLng(0, 0);
  final int deliveryStatusCode = 1;
  deliverStatus() {
    String status;
    if(deliveryStatusCode == 1){
      status = 'open for polling';
      return  status;
    }
    else if(deliveryStatusCode == 2)
    {
      status = 'preparing';
      return  status;
    }
    else if(deliveryStatusCode == 3)
    {
      status = 'picked up';
      return  status;
    }
    else if(deliveryStatusCode == 4)
    {
      status = 'out for delivery';
      return  status;
    }
    else if(deliveryStatusCode == 5)
    {
      status = 'delivered';
      return  status;
    }
  }


  final Completer<GoogleMapController> _controller = Completer();
  LocationData? currentLocation;
  void getCurrentLocation()async{
    Location location= Location();
    location.getLocation().then(
          (location){ currentLocation=location;
      print(currentLocation.toString()+"currentLocaktion");
      },);
    GoogleMapController googleMapController= await  _controller.future;

    location.onLocationChanged.listen((newLoc) { currentLocation=newLoc;
    googleMapController.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: LatLng(newLoc.latitude!,newLoc.longitude!),zoom: 20),),);
    setState(() {
      print(newLoc.toString()+"newLoc");


    });});

  }
  // _ValetFoodDeliveryTrackingState();


  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;

  void setCustomMarkerIcon() {
    BitmapDescriptor.fromAssetImage(
        ImageConfiguration.empty, "assets/Icon/source_Icon.png")
        .then((icon) {
      sourceIcon = icon;
    });
  }

  // void getPolyPoints() async {
  //   PolylinePoints polylinePoints = PolylinePoints();
  //   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
  //     google_api_key,
  //     PointLatLng(),
  //     PointLatLng(currentLocation!.latitude!, currentLocation!.longitude!),
  //
  //   );
  //
  //   if (result.points.isNotEmpty) {
  //     result.points.forEach((PointLatLng point) =>
  //         polyineCoordinates.add(LatLng(point.latitude, point.longitude),),);
  //     setState(() {});
  //   };
  //
  // }
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    getCurrentLocation();
    // LatLng  customerLocation = LatLng(customer_lat,customer_long);
    // customerLocationInitialize=customerLocation;
    setCustomMarkerIcon();

    // getPolyPoints();

  }
  @override
  Widget build(BuildContext context) {
    print(currentLocation.toString()+" build inside widget");
    // LatLng  customerLocation = LatLng(customer_lat,customer_long);
    // customerLocationInitialize=customerLocation;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kLightGrey,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            top: screenHeight/29.908, //height30
            left: 0,
            right: 0,
            height:screenHeight/2.243135, //height400
            //width: 800,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                  target: LatLng(valet_lat,valet_long),zoom: 20),
              polylines: {
                Polyline(
                  polylineId:  PolylineId("route"),
                  points: polyineCoordinates,
                  color: Color(0xffeb4749),
                  width: 6,
                )
              },
              markers: {
                // Marker(
                //   // icon: currentLocationIcon,
                //   markerId: const MarkerId("currentLocation"),
                //   position: LatLng(currentLocation!.latitude!, currentLocation!.longitude!),
                // ),
                Marker(
                  icon: sourceIcon,
                  markerId: MarkerId("Source"),
                  position:  LatLng(valet_lat,valet_long),
                ),

              },
              zoomGesturesEnabled: true,
              onMapCreated: (mapController) {
                _controller.complete(mapController);
              },

            ),
          ),
          Positioned(
            top: screenHeight/2.99+screenHeight/12.81,   //height370
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20)),
                color:kLightGrey,
              ),
              //customers details with address phone number and delivery mark
              child: Padding(
                padding: EdgeInsets.only(left: screenWidth/21.176,right:screenWidth/21.176, top: screenHeight/44.862), //top20,left20,right30
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        AutoSizeText(
                            "Order ID : "+order_id.toString(),
                            style: kBodyTextBoldBlackMedium ),
                        Expanded(child: SizedBox()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)),
                            color: Colors.green,
                          ) ,
                          child: Padding(
                            padding: EdgeInsets.only(top: screenHeight/112.156,bottom: screenHeight/112.156,left: screenWidth/52.941,right: screenWidth/52.941), //height8,width8
                            child: AutoSizeText(
                              "Go to maps",
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                color: kWhiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    //SizedBox(height: screenHeight/89.725,), //height10
                    Divider(color: kWhiteColor,thickness:2,),
                    SizedBox(height: screenHeight/89.725,), //height10
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(screenWidth/105.88), //width4
                          color: kWhiteColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: screenWidth/21.17,top:screenHeight/89.72, right: screenWidth/42.35), //left20 top10 right10
                            child: Text("Your order is ${deliverStatus()}" ,style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF2D2D2D),),),
                          ),
                          //Divider(),
                          Padding(
                            padding: EdgeInsets.only(left: screenWidth/21.17, right: screenWidth/42.35),
                            child: Text("Lunch: Arriving in 45 mins" ,style: kB1BodyText,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: screenWidth/42.35, top: screenHeight/89.72,right: screenWidth/42.35,bottom: screenHeight/44.86),
                            child: LinearPercentIndicator(
                              linearGradientBackgroundColor: LinearGradient(
                                colors: [Color(0xFFEB2133).withOpacity(0.1),
                                  Color(0xFFFD9E41).withOpacity(0.1)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              linearGradient: kPrimaryGradientColor,
                              lineHeight: 10,
                              percent: (deliveryStatusCode * 2) / 10,
                              barRadius: Radius.circular(screenWidth/105.88), //width4
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight/89.725,),
                    Divider(color: kWhiteColor,thickness:2,),//height10
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth/42.352,right: screenWidth/42.352), //top=right=left=10
                          child: Container(
                            height: screenHeight/22.43, //height40
                            width: screenWidth/14.11+screenWidth/42.35, //width40
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(screenWidth/42.35),
                              image:DecorationImage(
                                  fit: BoxFit.cover,
                                  image:AssetImage(valet_image,)
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth/2.352,  //width180
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                valet_name,
                                style: kBodyTextBoldBlackMedium,
                              ),
                              SizedBox(
                                height: screenHeight/448.627, //height2
                              ),
                              AutoSizeText(
                                  customer_meal,
                                  style: kH2Heading),
                              SizedBox(
                                height: screenHeight/448.627, //height2
                              ),
                            ],
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color:kWhiteColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: screenWidth/52.941,right: screenWidth/52.941,top: screenHeight/112.156,bottom: screenHeight/112.156), //height8,width8
                            child: Row(
                              children: [
                                AutoSizeText("Call",style: kB1BodyTextBlack,),
                                SizedBox(width: screenWidth/84.705,), //width5
                                Icon(Icons.call, size: 18,)
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    //SizedBox(height: screenHeight/89.725,),
                    Divider(color: kWhiteColor,thickness:2,),
                    SizedBox(height: screenHeight/89.725,),  //height10
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText("Order Details",
                                style: kBodyTextBoldBlackMedium),
                            SizedBox(
                              height: screenHeight/448.627, //height2
                            ),
                            // AutoSizeText(
                            //     order_id.toString(),
                            //     style: kB1BodyText
                            // ),
                            // SizedBox(
                            //   height: screenHeight/448.627, //height2
                            // ),
                            AutoSizeText(
                              "1 box of "+customer_meal+" meal",
                              style: kH2Heading,
                            ),
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        TextButton(
                          onPressed: (){},
                          child: ShaderMask(
                            blendMode: BlendMode.srcATop,
                            shaderCallback: (bounds) =>kPrimaryGradientColor.createShader(bounds),
                            child: AutoSizeText(
                              "View Receipt",style: TextStyle(
                                fontFamily: 'OpenSanse',
                                //color: Colors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight/89.725,),  //height10
                    Divider(color: kWhiteColor,thickness:2,),
                    SizedBox(height: screenHeight/89.725,), //height10
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              "Message customer",
                              style: kBodyTextBoldBlackMedium,
                            ),
                            SizedBox(
                              height: screenHeight/448.627, //height2
                            ),
                            AutoSizeText(
                                "I have reached the door.\n"+
                                    "Please collect your order",
                                style: kB1BodyText
                            ),
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        // DefaultButton(
                        //   text: 'Send',
                        //   press: (){},
                        // ),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              gradient: kPrimaryGradientColor,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: screenWidth/52.941,right: screenWidth/52.941,top: screenHeight/112.156,bottom: screenHeight/112.156), //height8,width8
                              child: Row(
                                children: [
                                  AutoSizeText("  Send  ",style: kButtonText,),
                                  SizedBox(width: screenWidth/84.705,), //width5
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight/89.725,),  //height10
                    Divider(color: kWhiteColor,thickness:2,),
                    SizedBox(height: screenHeight/89.725,), //height10
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}