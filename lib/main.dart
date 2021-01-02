import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        
      ],
      child: MaterialApp(
        title: "Example Design",
        routes: {
          "/": (context) => MyApp(),
        },
        initialRoute: "/",
        onGenerateRoute: (settings){
          final List<String> routeGenerator = settings.name.split("/");
          if(routeGenerator[0] != '') return null;
          if(routeGenerator[1] == '/detail'){
            String detailID = routeGenerator[2];
            // return MaterialPageRoute(builder: (context) => Detail(detailID: detailID));
          }
        },
        onUnknownRoute: (settings) => MaterialPageRoute(builder: (context) => MyApp()),
      )
    );
  }
}