import 'package:clay_containers/clay_containers.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:design_app/register_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(0xFFF2F2F2);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: baseColor,
        appBar: AppBar(title: Text('Design_App')),
        body: design_app(),
      ),
    );
  }
}

class design_app extends StatefulWidget {
  const design_app({Key? key}) : super(key: key);

  @override
  _design_appState createState() => _design_appState();
}

class _design_appState extends State<design_app> {
  Color baseColor = Color(0xFFF2F2F2);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ClayContainer(
            height: 600,
            width: 400,
            color: baseColor,
            curveType: CurveType.concave,
            child: Container(
                decoration: BoxDecoration(),
                // width: 330,
                margin: EdgeInsets.only(top: 100, left: 40, right: 40),
                child: Column(
                  children: [
                    ClayContainer(
                        color: baseColor,
                        height: 150,
                        width: 150,
                        borderRadius: 100,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://picsum.photos/id/237/200/300'),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ClayContainer(
                        borderRadius: 10,
                        color: baseColor,
                        child: SizedBox(
                            child: TextField(
                                decoration: InputDecoration(
                                    // icon: Icon(Icons.title),
                                    // border: InputBorder.none,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                            width: 0, style: BorderStyle.none)),
                                    labelText: 'Name',
                                    hintText: 'Enter Name')))),
                    //////////////////////////////
                    SizedBox(
                      height: 20,
                    ),
                    ClayContainer(
                        borderRadius: 10,
                        color: baseColor,
                        child: SizedBox(
                            child: TextField(
                                decoration: InputDecoration(
                          // icon: Icon(Icons.title),
                          // border: InputBorder.none,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  width: 0, style: BorderStyle.none)),
                          labelText: 'Password',
                          hintText: 'Enter Password',
                        )))),
                    SizedBox(height: 20),
                    ClayContainer(
                        borderRadius: 10,
                        child: FlatButton.icon(
                          hoverColor: Colors.red,
                          icon: Icon(Icons.login),
                          label: Text('LogIn'),
                          onPressed: () {},
                        )),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text('New User!'),
                      FlatButton.icon(
                          icon: Icon(Icons.login),
                          label: TextButton(
                              child: Text('Register',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const register_form()));
                              }),
                          onPressed: () {})
                    ])
                  ],
                ))));
  }
}
