import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class ChatSupport extends StatefulWidget {
  const ChatSupport({Key? key}) : super(key: key);
  static String routeName ="/chat_support";

  @override
  State<ChatSupport> createState() => _ChatSupportState();
}

class _ChatSupportState extends State<ChatSupport> {
  // final String title="Online Agent";
  // final String selectedUrl="";
  // late final WebViewController controller;
  // int position =1;
  // final key= UniqueKey();
  // doneLoading(String A){
  //   setState(() {
  //     position=0;
  //   });
  // }
  // startLoading(String A){
  //   setState(() {
  //     position=1;
  //   });}

  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://tawk.to/chat/6425a3ff31ebfa0fe7f592d2/1gspgh8f6')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://tawk.to/chat/6425a3ff31ebfa0fe7f592d2/1gspgh8f6'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:WebViewWidget(
          controller: controller),


      // Container(
      //   height: MediaQuery.of(context).size.height,
      //   width: MediaQuery.of(context).size.width,
      //   child: IndexedStack(index: position,children:<Widget>[
      //     WebViewWidget(
      //       // initialUrl: 'https://tawk.to/chat/6425a3ff31ebfa0fe7f592d2/1gspgh8f6',
      //       // javascriptMode: JavascriptMode.unrestricted,
      //       // key: key,
      //       // onPageFinished: doneLoading,
      //       // onPageStarted: startLoading,
      //       controller: controller,
      //     ),
      //     // Container(
      //     //   color: Colors.white,
      //     //   child: Center(child: CircularProgressIndicator(),),
      //     // )
      //   ],),
      // ),
    );
  }
}
