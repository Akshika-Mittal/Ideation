import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/sign_up/components/search_address/placeAutoComplete.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';

import 'autocompletePrediction.dart';
import 'location_tiles.dart';
import 'network_utilities.dart';

String apiKey = "AIzaSyB9s9ovT8n8hB9TzvsMRg5FJ_12cZUMHlM";

class SearchAddress extends StatefulWidget {
  const SearchAddress({Key? key}) : super(key: key);

  @override
  State<SearchAddress> createState() => _SearchAddressState();
}

class _SearchAddressState extends State<SearchAddress> {
  List<AutocompletePrediction> placePrediction = [];
  void placeAutocomplete(String query) async {
    Uri uri =
        Uri.https('maps.googleapis.com', 'maps/api/place/autocomplete/json', {
      "input": query, //query Parameter
      "key": apiKey,
    });
    String? response = await NetworkUtility.fetchUrl(uri);

    if (response != null) {
      PlaceAutocompleteResponse result =  PlaceAutocompleteResponse.parseAutocompleteResult(response);
      if (result.predictions != null) {

        setState(() {
          placePrediction = result.predictions!;
        });
      }

    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Form(
          child: Container(
            height: screenHeight/16.313,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: kWhiteColor),
              borderRadius: BorderRadius.circular(screenWidth/42.35),
              color: kWhiteColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: TextField(
                        onChanged: (value) {
                          placeAutocomplete(value);
                        },
                        decoration: InputDecoration(
                          prefixIcon:Icon(Icons.pin_drop_outlined,color: kBlackColor,),
                          enabledBorder:InputBorder.none,
                          focusedBorder: InputBorder.none,
                          counterText: "",
                          border: InputBorder.none,
                          hintText: "Search your office location",
                          hintStyle: kB1BodyText,
                        ),
                        textInputAction: TextInputAction.search,
                        //keyboardType: TextInputType.number,
                        cursorColor: kDividerColor,
                      ),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: screenHeight/89.72,  //height10
        ),
        Divider(
          height: screenHeight/897.254+screenHeight/897.254, //height2
          thickness: 2,
          color: kWhiteColor,
        ),
        SizedBox(
          height: screenHeight/89.72,  //height10
        ),
        ElevatedButton.icon(
          onPressed: () {
            // placeAutocomplete("Delhi");
          },
          icon: Icon(
            Icons.location_searching_rounded,
            color: Colors.grey,
          ),
          label: AutoSizeText(
            "Use my Current Location",
            style: kB1BodyText,
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              fixedSize: Size(double.maxFinite, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              )),
        ),
        SizedBox(
          height: screenHeight/89.72,  //height10
        ),
        Divider(
          height: screenHeight/897.254+screenHeight/897.254, //height2,
          thickness: 2,
          color: kLightGrey,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: placePrediction.length,
              itemBuilder: (context,index) =>
                  LocationListTile(
                    press: () {
                      print(placePrediction[index].description!);
                    },
                    location:placePrediction[index].description!,
                  )
          ),
        ),
      ],
    );
  }
}
