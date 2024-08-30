import 'package:flutter/material.dart';
import 'package:responsive_app/Presentation/Widgets/nav_menu.dart';
import 'package:responsive_app/Presentation/Widgets/responsive_builder.dart';

class HomeActivity extends StatefulWidget{
  const HomeActivity({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();

}

class HomeState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {

    return ResponsiveBuilder(
        mobile: buildMobileLayout(),
        tablet: buildTabletLayout(),
        desktop: buildDesktopLayout()
    );
  }

  Widget buildMobileLayout() {
    return Scaffold(
          appBar: AppBar(
            title: Text('Responsive'),
            backgroundColor: Colors.deepPurpleAccent,
          ),
          drawer: NavMenu(),
          body: Center(
            child: Text('Mobile'),
          )
      );
  }

  Widget buildTabletLayout() {
    return Scaffold(
          appBar: AppBar(
            title: Text('Responsive'),
            backgroundColor: Colors.deepPurpleAccent,
          ),
          drawer: NavMenu(),
          body: Center(
            child: Text('Tablet'),
          )
      );
  }

  Widget buildDesktopLayout() {
    return Scaffold(
          body: Row(
            children: [
              NavMenu(),
              Expanded(
                child: Center(
                  child: Text('This My desktop'),
                ),
              )
            ],
          ),
      );
  }
}
