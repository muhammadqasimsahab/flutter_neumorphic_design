import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class register_form extends StatefulWidget {
  const register_form({Key? key}) : super(key: key);

  @override
  _register_formState createState() => _register_formState();
}

class _register_formState extends State<register_form> {
  Color baseColor = Color(0xFFF2F2F2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(left: 20, top: 100),
              child:
                  Text('Registeration Form', style: TextStyle(fontSize: 25))),
          SizedBox(height: 10),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(children: [
                ClayContainer(
                    width: 220,
                    borderRadius: 10,
                    color: baseColor,
                    child: SizedBox(
                        child: Column(children: [
                      TextField(
                          decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            )),
                        labelText: 'First Name',
                        hintText: 'Enter First Name',
                      ))
                    ]))),
                SizedBox(width: 20),
                ClayContainer(
                    width: 220,
                    borderRadius: 10,
                    color: baseColor,
                    child: SizedBox(
                        child: Column(children: [
                      TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none)),
                              labelText: 'Last Name',
                              hintText: 'Enter Last Name'))
                    ])))
              ])),
          ////////////////////////////////////////////////////////
          SizedBox(height: 20),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(children: [
                Row(children: [
                  ClayContainer(
                      width: 220,
                      borderRadius: 10,
                      color: baseColor,
                      child: SizedBox(
                          child: Column(children: [
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    )),
                                labelText: 'Email',
                                hintText: 'Enter Email'))
                      ]))),
                  SizedBox(width: 20),
                  ClayContainer(
                      width: 220,
                      borderRadius: 10,
                      color: baseColor,
                      child: SizedBox(
                          child: Column(children: [
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                        width: 0, style: BorderStyle.none)),
                                labelText: 'Connect',
                                hintText: 'Enter Connect'))
                      ])))
                ])
              ])),
          //////////////////////////////////////////
          SizedBox(height: 20),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(children: [
                Row(children: [
                  ClayContainer(
                      width: 220,
                      borderRadius: 10,
                      color: baseColor,
                      child: SizedBox(
                          child: Column(children: [
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    )),
                                labelText: 'Date Of Barth',
                                hintText: 'dd/mm/yy'))
                      ]))),
                  SizedBox(width: 20),
                  ClayContainer(
                      width: 220,
                      borderRadius: 10,
                      color: baseColor,
                      child: SizedBox(
                          child: Column(children: [
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                        width: 0, style: BorderStyle.none)),
                                labelText: 'Address',
                                hintText: 'Enter Address'))
                      ])))
                ])
              ])),
          /////////////////////////////////////////////////////
          SizedBox(height: 30),
          Text(
            'Gender',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Container(
              margin: EdgeInsets.only(left: 140),
              child: Row(children: [
                NeumorphicRadio(
                    padding: EdgeInsets.all(20),
                    child: Column(
                        children: [Icon(Icons.account_box), Text('Male  ')])),
                SizedBox(width: 20),
                NeumorphicRadio(
                    padding: EdgeInsets.all(20),
                    child: Column(children: [
                      Icon(Icons.account_box_outlined),
                      Text('Female')
                    ]))
              ])),
          SizedBox(height: 40),
          NeumorphicButton(
            style: NeumorphicStyle(
              shape: NeumorphicShape.convex,
              depth: 8,
              lightSource: LightSource.topLeft,
            ),
            child: Text('Submit', style: TextStyle(fontSize: 17)),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
