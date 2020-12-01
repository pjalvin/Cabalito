
import 'dart:io';
import 'dart:ui';

import 'package:cabalitoapp/bloc/bloc/NavigationBloc.dart';
import 'package:cabalitoapp/bloc/event/NavigationEvent.dart';
import 'package:cabalitoapp/model/Seller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../lib/Colors.dart';
import '../lib/ApiUrl.dart' as api;
class UpdateSeller extends StatefulWidget{
  Seller seller;

  UpdateSeller(this.seller);

  @override
  State createState() => UpdateSellerState(seller);
}

class UpdateSellerState extends State<UpdateSeller>{
  Seller seller;
  UpdateSellerState(this.seller){
    print(seller);
  }

  String mensaje="";

  TextEditingController name = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  File imageFile;

  _openGallery(BuildContext context) async{
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile=picture;
    });
    Navigator.of(context).pop();


    //this.setState({});
  }
  _openCamera(BuildContext context) async{
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile=picture;
    });
    Navigator.of(context).pop();
  }



  @override
  void initState(){
    super.initState();
  }
  Size size;
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;

    return new Scaffold(

        body: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                      margin: new EdgeInsets.only(top: 6.0),
                      padding: new EdgeInsets.only(top:25.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: ScrollConfiguration(
                              behavior: MyBehavior(),
                              child: ListView.builder(
                                padding: EdgeInsets.only(left: 50.0 ,right:50.0),
                                itemBuilder: (context,index){
                                  return Container(
                                    margin: EdgeInsets.only(bottom: 20.0),
                                    child: Stack(
                                      children: [
                                        Column(
                                          children: [
                                            _decideImageView(),
                                            IconButton(
                                                icon: Icon(Icons.add_a_photo),
                                                iconSize: size.width*0.1,
                                                color: PrimaryColor,

                                                onPressed: () {
                                                  _showChoiceDialog(context);
                                                }),
                                            input(name,"Nombre: "+seller.firstName,true),

                                            input(lastname,"Apellido: "+seller.lastName,true),

                                            input(phone,"Telefono: "+seller.phoneNumber,true),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            buildButton("Actualizar", PrimaryColor),
                                            buildButton("Cambiar Contraseña", PrimaryColor)
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                                itemCount: 1,
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
  Widget _decideImageView(){
    if(imageFile==null){
      return Container(
          width: size.width*0.5,
          height: size.width*0.5,
          decoration: BoxDecoration(
            border: Border.all(width: 4, color: PrimaryColor),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: seller.imagePath=="vacio"?(AssetImage("assets/user.png")):(NetworkImage(api.url+"sellerImage/"+seller.imagePath)),
                  ),
            borderRadius: BorderRadius.circular(15.0),
              )
      );
    }else{
      return Image.file(
          imageFile,
          width: size.width*0.5,
          height: size.width*0.5);
    }
  }
  Widget input(TextEditingController controller, String hint, bool flag){
    return  Padding(
      padding: EdgeInsets.only(top: size.height*0.015, left: size.width*0.05),
      child: TextField(
          controller: controller,
          obscureText: flag,
          style: TextStyle(fontSize: 18),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),

            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: PrimaryColor),

            ),

          )),
    );

  }

  Widget buildButton(String buttonText, Color buttonColor) {
    return Padding(
      padding: EdgeInsets.only(top: size.height*0.7, left: size.width*0.02),
      child: Container(
        width: size.width*0.35,
        height: size.height*0.08,
        child: RaisedButton(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: buttonColor,
          highlightElevation: 10.0,
          disabledColor: BorderListColor,
          onPressed: (){
            _buttonAction(context, buttonText);
          },
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0
            ),
          ),
        ),
      ),
    );
  }
  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Seleccione una opción",style:
        TextStyle(
            color: PrimaryColor,
            fontSize: 18.0),
        ),
        backgroundColor: SecondaryColor,
        content: SingleChildScrollView(

          child: ListBody(
            children: [
              Row(
                children: [
                  GestureDetector(
                    child: IconButton(icon: Icon(Icons.add_photo_alternate),iconSize: size.width*0.1,color: PrimaryColor,
                        onPressed: () {
                          _openGallery(context);
                        }),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  GestureDetector(
                    child: IconButton(icon: Icon(Icons.camera_enhance),iconSize: size.width*0.1,color: PrimaryColor,
                        onPressed: () {
                          _openCamera(context);
                        }),
                  ),
                ],
              )

            ],
          ),
        ),
      );
    });
  }
  /*decoration: BoxDecoration(
  color: SecondaryColor,
  shape: BoxShape.rectangle,
  borderRadius: BorderRadius.circular(17),*/
  Future<void> _changePassword(BuildContext context) {
    return showDialog(context: context, builder: (BuildContext context) {

      return Dialog(
        child: Container(
          height: size.height*0.45,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0.0,10.0),
                )
              ]
          ),
          child: Column(
            children: [
              Column(
                children: [
                  input(password,"Contraseña",true),
                  input(newPassword,"Nueva contraseña",true),
                  input(confirmPassword,"Confirmar contraseña",true),
                 RaisedButton(
                      elevation: 10.0,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: PrimaryColor,
                      highlightElevation: 10.0,
                      disabledColor: BorderListColor,
                      onPressed: (){
                        _change();
                      },
                      child: Text(
                        "Cambiar",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
                        ),
                      ),
                    ),
                  Text(mensaje,style: TextStyle(
                    color: Colors.black
                  ),)

                ],
              )

            ],
          ),
        ),
      );
    });
  }
  _change() async {
    print("----------------------------------------------");
    print(seller.idSeller);
    print(seller.password);
    print(password.text);
    print(newPassword.text);
    print(confirmPassword.text);
    if(seller.password==password.text && newPassword.text==confirmPassword.text){
      seller.password=newPassword.text;
      BlocProvider.of<NavigationBloc>(context).add(UpdateSellerEvent(seller,imageFile,false));
      setState(() {
        mensaje="Éxito";
      });
      Navigator.pop(context);
    }else{
      setState(() {
        mensaje="No coinciden los campos";
      });
    }
    setState(() {
      limpiar();
    });

  }

  _buttonAction(context, String option){
    if(option=="Actualizar"){
      _updateSeller(context, seller);
    }
    if(option=="Cambiar Contraseña"){
      _changePassword(context);
    }
    if(option=="Cambiar"){
      mensaje="";
      _change();
    }
  }
  limpiar(){
    password.text="";
    newPassword.text="";
    confirmPassword.text="";
  }
  _updateSeller(context,Seller seller){
    if(name.text.isNotEmpty){
      seller.firstName=name.text;
    }
    if(lastname.text.isNotEmpty){
      seller.lastName=lastname.text;
    }
    if(phone.text.isNotEmpty){
      seller.phoneNumber=phone.text;
    }
    bool flag=true;
    if(imageFile==null){
      flag=false;
    }
    BlocProvider.of<NavigationBloc>(context).add(UpdateSellerEvent(seller,imageFile,flag));

  }

}
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
