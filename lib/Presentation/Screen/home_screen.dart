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
            actions: [
              Padding(padding: EdgeInsets.only(right: 19.0),
                child: Text('HUMMING\nBIRD',style: TextStyle(
                  fontSize: 17,
                ),),
              )
              
            ],
          ),
          drawer: const NavMenu(),
          body: Row(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('FLUTTER WEB.\n THE BASIC',style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                      ),
                        textAlign: TextAlign.center,),
                      SizedBox(height: 20,),
                      Text('In this course we will go over the basics of using\n'
                          'Flutter Web for development. Topics will inclute\n'
                          'Responsive Layout Deploying Font change,Hover\n'
                          'functionality,Models and more.',
                        textAlign: TextAlign.center,),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.greenAccent),
                        ),
                          onPressed: (){},
                          child: Text('Join course'))
                    ],
                  ),
                ),
              )
            ],
          ),
      );
  }

  Widget buildTabletLayout() {
    return Scaffold(
          appBar: AppBar(
            title: const Text('HUMMING\nBIRD',style: TextStyle(
              fontSize: 17,
            ),),
            actions: [
              TextButton(onPressed: (){}, child: Text('Episodes')),
              TextButton(onPressed: (){}, child: Text('About'))
            ],
          ),
          body: Row(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('FLUTTER WEB.\n THE BASIC',style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                        textAlign: TextAlign.center,),
                      SizedBox(height: 20,),
                      Text('In this course we will go over the basics of using\n'
                          'Flutter Web for development. Topics will inclute\n'
                          'Responsive Layout Deploying Font change,Hover\n'
                          'functionality,Models and more.',
                        style: TextStyle(fontSize: 20,),
                        textAlign: TextAlign.center,),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(Colors.greenAccent),
                          ),
                          onPressed: (){},
                          child: Text('Join course'))
                    ],
                  ),
                ),
              )
            ],
          ),
      );
  }

  Widget buildDesktopLayout() {
    return Scaffold(
          appBar: AppBar(
            title: const Text('HUMMING\nBIRD',style: TextStyle(
              fontSize: 17,
            ),),
            actions: [
              TextButton(onPressed: (){}, child: Text('Episodes')),
              TextButton(onPressed: (){}, child: Text('About'))
            ],
          ),
          body: Row(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('FLUTTER WEB.\nTHE BASIC',style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                        textAlign: TextAlign.start,),
                      SizedBox(height: 20,),
                      Text('In this course we will go over the basics of using\n'
                          'Flutter Web for development. Topics will inclute\n'
                          'Responsive Layout Deploying Font change,Hover\n'
                          'functionality,Models and more.',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.start,),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Center(
                    child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(Colors.greenAccent),
                          ),
                          onPressed: (){},
                          child: Text('Join course'))
              ))
            ],
          ),
      );
  }
}
