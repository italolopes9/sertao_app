import 'package:flutter/material.dart';
import 'package:sertao_app/utilities/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _buildEmailTF() {
    return Container(
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          enabledBorder: new UnderlineInputBorder(
              borderSide: new BorderSide(color: Colors.white)),
          prefixIcon: Icon(
            Icons.email,
            color: Colors.white,
          ),
          hintText: 'Escreva seu email',
          hintStyle: kHintTextStyle,
        ),
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildPasswordTF() {
    return Container(
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          enabledBorder: new UnderlineInputBorder(
              borderSide: new BorderSide(color: Colors.white)),
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          hintText: 'Senha',
          hintStyle: kHintTextStyle,
        ),
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildForgotPassword() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Esqueceu sua senha botão pressionado'),
        padding: EdgeInsets.only(left: 0.0),
        child: Text(
          'Esqueceu sua senha?',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildSignup() {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        onPressed: () => print('Cadastre-se'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Cadastre-se',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 50.0),
      width: 130,
      height: 50,
      child: RaisedButton(
        elevation: 11.0,
        onPressed: () => print('Login'),
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
              color: Color.fromRGBO(36, 114, 183, 1.0),
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(150, 250, 150, 1.0),
                  Color.fromRGBO(20, 70, 200, 1.0),
                ],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Logo',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 150.0,
                  ),
                  _buildEmailTF(),
                  SizedBox(
                    height: 30.0,
                  ),
                  _buildPasswordTF(),
                  _buildForgotPassword(),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(vertical: 0.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     children: <Widget>[
                  //       _buildSignup(),
                  //       _buildForgotPassword(),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(
                    height: 100.0,
                  ),
                  _buildLoginBtn(),
                  SizedBox(
                    height: 10.0,
                  ),
                  _buildSignup()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
