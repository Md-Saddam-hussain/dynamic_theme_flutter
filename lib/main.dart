import 'package:dynamic_theme/theme/dark_theme.dart';
import 'package:dynamic_theme/theme/light_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(padding: const EdgeInsets.fromLTRB(14.0, 50.0, 14.0, 0.0),
          child: SingleChildScrollView(
              child: Column(
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                           Text(
                            'Login',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.tertiary,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 30,),
                          const Text(
                            'Username:',
                            style: TextStyle(
                              color: Color(0xFF828282),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 10,),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email, color: Theme.of(context).colorScheme.onSecondary,),//
                                border: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
                                  borderSide:  BorderSide(
                                    color: Theme.of(context).colorScheme.onSecondary,
                                  ),),
                                //
                                labelText: "user name"
                            ),
                          ),
               /*           SizedBox(height: 20,),
                          const Text(
                            'Password:',
                            style: TextStyle(
                              color: Color(0xFF828282),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 10,),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Color(0x94828282),
                                  ),),
                                labelText: "Enter password"
                            ),
                          ),*/
                        ]
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child:
                      TextButton(onPressed: (){}, child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xFF3365B9),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                        ),

                      ),)
                      ,
                    ),
                    const SizedBox(height: 50,),
                    /*Container(
                  alignment: Alignment.bottomCenter,
                ),*/
                    SizedBox(
                      width: 250,
                      height: 50,
                      // margin: EdgeInsets.only(left:15.0,top: 12.0,right:15.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60.0)
                            ),
                            backgroundColor: Theme.of(context).colorScheme.onTertiary,
                        ),
                        child: const Text('Sign In',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 20.0,
                          ),),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have account?",
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextButton(onPressed: (){}, child: const Text(
                            'Create account',
                            style: TextStyle(
                              color: Color(0xFF2F5FB6),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),

                          ),)
                        ]
                    ),
                    const SizedBox(height: 10,),
                    const Divider(
                      height: 20,
                      thickness: 1,
                      //color: Theme.of(context).colorScheme.onSecondary,
                      indent: 5,
                      endIndent: 5,
                    ),

                   Card(
                     elevation: 4,
                     shadowColor: Colors.black,
                     //color: Colors.red,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                     ),
                     child:SizedBox(
                       width: double.infinity,
                       height: 100,
                     ),
                   ),
                    const SizedBox(height: 10,),
                    FloatingActionButton(onPressed: (){},backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                        child: const Icon(Icons.add)),
                   /* Container(
                      width: 50,
                      height: 50,
                      child:  Checkbox(
                        value: false, // Change this to manage the checkbox state
                        onChanged: (bool? value) {
                          // Handle checkbox state change
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            side: BorderSide(color: Colors.deepOrange,width: 1)
                        ),
                      ),
                    )*/


                  ]


              )
          )
      ),

 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
/*
* appbar
* text
* icon
* elevatedButton
* floatingActionButton
* background
* divider
* card
* */