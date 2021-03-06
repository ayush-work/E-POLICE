import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ComplaintScreen extends StatefulWidget {
  @override
  _ComplaintScreenState createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<ComplaintScreen> {
  final _formKey = GlobalKey<FormState>();

  bool checkedValue = false;

  Widget titleBuilder(String name) {
    return RichText(
      text: TextSpan(
          text: name,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              color: Colors.black),
          children: [
            TextSpan(
              text: ' * ',
              style: TextStyle(color: Colors.red, fontSize: 16.0),
            ),
            TextSpan(
              text: ' : ',
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(1), BlendMode.dstATop),
                fit: BoxFit.cover,
                image: const AssetImage('assets/images/police_logo.png'),
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.white54,
              appBar: AppBar(
                backgroundColor: Theme.of(context).backgroundColor,
                title: Text(
                  'LODGE COMPLAINT',
                  style: TextStyle(
                      fontSize: 30,
                      color: Theme.of(context).primaryColor,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 30),
                              child: titleBuilder("Complainant's Name")),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                width: MediaQuery.of(context).size.width * .45,
                                height: 60,
                                child: Card(
                                  color: Colors.grey[300],
                                  child: TextFormField(
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.text,
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        suffixStyle:
                                            TextStyle(color: Colors.red),
                                        labelText: 'First Name',
                                        labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.normal),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(10),
                                      )),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 20),
                                width: MediaQuery.of(context).size.width * .45,
                                height: 60,
                                child: Card(
                                  color: Colors.grey[300],
                                  child: TextFormField(
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.text,
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        labelText: 'Last Name',
                                        labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.normal),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(10),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 30),
                              child: titleBuilder('Phone Number')),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                width: MediaQuery.of(context).size.width * .45,
                                height: 60,
                                child: Card(
                                  color: Colors.grey[300],
                                  child: TextFormField(
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.number,
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        suffixStyle:
                                            TextStyle(color: Colors.red),
                                        labelText: 'Main Number',
                                        labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.normal),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(10),
                                      )),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 20),
                                width: MediaQuery.of(context).size.width * .45,
                                height: 60,
                                child: Card(
                                  color: Colors.grey[300],
                                  child: TextFormField(
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.number,
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        labelText: 'Alternate Number',
                                        labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.normal),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(10),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 30),
                              child: titleBuilder('Address')),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 1,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Card(
                              color: Colors.grey[300],
                              child: TextFormField(
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold),
                                  keyboardType: TextInputType.multiline,
                                  cursorColor: Theme.of(context).primaryColor,
                                  textInputAction: TextInputAction.next,
                                  maxLines: 2,
                                  decoration: InputDecoration(
                                    labelText: 'Street Address',
                                    labelStyle: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.normal),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                  )),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                width: MediaQuery.of(context).size.width * .45,
                                height: 60,
                                child: Card(
                                  color: Colors.grey[300],
                                  child: TextFormField(
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.text,
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        suffixStyle:
                                            TextStyle(color: Colors.red),
                                        labelText: 'City',
                                        labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.normal),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(10),
                                      )),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 20),
                                width: MediaQuery.of(context).size.width * .45,
                                height: 60,
                                child: Card(
                                  color: Colors.grey[300],
                                  child: TextFormField(
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.text,
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        labelText: 'State',
                                        labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.normal),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(10),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            width: MediaQuery.of(context).size.width * .45,
                            height: 60,
                            child: Card(
                              color: Colors.grey[300],
                              child: TextFormField(
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold),
                                  keyboardType: TextInputType.number,
                                  cursorColor: Theme.of(context).primaryColor,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: 'Pin Code',
                                    labelStyle: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.normal),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 30),
                              child: titleBuilder('E-mail Address')),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 1,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Card(
                              color: Colors.grey[300],
                              child: TextFormField(
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold),
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor: Theme.of(context).primaryColor,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.normal),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 30),
                              child: titleBuilder('Complaint Description')),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 1,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Card(
                              color: Colors.grey[300],
                              child: TextFormField(
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold),
                                  keyboardType: TextInputType.multiline,
                                  cursorColor: Theme.of(context).primaryColor,
                                  textInputAction: TextInputAction.next,
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    hintText: 'description...',
                                    labelStyle: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.normal),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 2,
                      ),

                      //* ===========================================================
                      //* ANCHOR Complainee  block starts
                      //* ===========================================================

                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 30),
                              child: titleBuilder("Complainee's Name")),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                width: MediaQuery.of(context).size.width * .45,
                                height: 60,
                                child: Card(
                                  color: Colors.grey[300],
                                  child: TextFormField(
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.text,
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        suffixStyle:
                                            TextStyle(color: Colors.red),
                                        labelText: 'First Name',
                                        labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.normal),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(10),
                                      )),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 20),
                                width: MediaQuery.of(context).size.width * .45,
                                height: 60,
                                child: Card(
                                  color: Colors.grey[300],
                                  child: TextFormField(
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.text,
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        labelText: 'Last Name',
                                        labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.normal),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(10),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 30),
                              child: titleBuilder('Phone Number')),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                width: MediaQuery.of(context).size.width * .45,
                                height: 60,
                                child: Card(
                                  color: Colors.grey[300],
                                  child: TextFormField(
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.number,
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        suffixStyle:
                                            TextStyle(color: Colors.red),
                                        labelText: 'Main Number',
                                        labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.normal),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(10),
                                      )),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 20),
                                width: MediaQuery.of(context).size.width * .45,
                                height: 60,
                                child: Card(
                                  color: Colors.grey[300],
                                  child: TextFormField(
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.number,
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        labelText: 'Alternate Number',
                                        labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.normal),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(10),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 30),
                              child: titleBuilder('Address')),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 1,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Card(
                              color: Colors.grey[300],
                              child: TextFormField(
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold),
                                  keyboardType: TextInputType.multiline,
                                  cursorColor: Theme.of(context).primaryColor,
                                  textInputAction: TextInputAction.next,
                                  maxLines: 2,
                                  decoration: InputDecoration(
                                    labelText: 'Street Address',
                                    labelStyle: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.normal),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                  )),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                width: MediaQuery.of(context).size.width * .45,
                                height: 60,
                                child: Card(
                                  color: Colors.grey[300],
                                  child: TextFormField(
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.text,
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        suffixStyle:
                                            TextStyle(color: Colors.red),
                                        suffixText: '*',
                                        labelText: 'City',
                                        labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.normal),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(10),
                                      )),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 20),
                                width: MediaQuery.of(context).size.width * .45,
                                height: 60,
                                child: Card(
                                  color: Colors.grey[300],
                                  child: TextFormField(
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.text,
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        labelText: 'State',
                                        labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.normal),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(10),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            width: MediaQuery.of(context).size.width * .45,
                            height: 60,
                            child: Card(
                              color: Colors.grey[300],
                              child: TextFormField(
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold),
                                  keyboardType: TextInputType.number,
                                  cursorColor: Theme.of(context).primaryColor,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: 'Pin Code',
                                    labelStyle: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.normal),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                  )),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      CheckboxListTile(
                        subtitle: Text(
                          '*fields are required',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.red),
                        ),
                        title: Text(
                          "*I certify that the above information is true and correct.",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                        value: checkedValue,
                        onChanged: (bool newValue) {
                          setState(() {
                            checkedValue = newValue;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: RaisedButton(
                          child: Text(
                            'Submit',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          onPressed: () {
                            if (checkedValue == false) {
                              Toast.show('Checkbox unchecked', context,
                                  duration: Toast.LENGTH_LONG);
                            }
                          },
                          color: Theme.of(context).primaryColor,
                        ),
                      )
                    ],
                  ), //!form column
                ),
              ),
            )),
      ),
    );
  }
}
