import 'package:flutter/material.dart';
import 'package:login/utilities/constants.dart';

class EmailTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: labelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              hintText: 'Enter your email address',
              hintStyle: hintTextStyle,
            ),
          ),
        )
      ],
    );
  }
}

class PasswordTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: labelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              hintText: 'Enter your password',
              hintStyle: hintTextStyle,
            ),
          ),
        )
      ],
    );
  }
}

class RememberMeCheckBox extends StatefulWidget {
  @override
  _RememberMeCheckBoxState createState() => _RememberMeCheckBoxState();
}

class _RememberMeCheckBoxState extends State<RememberMeCheckBox> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember Me',
            style: labelStyle,
          )
        ],
      ),
    );
  }
}

class ForgotPasswordButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () => print('Forgot Button pressed!'),
        child: Text(
          'Forgot Password',
          style: labelStyle,
        ),
      ),
    );
  }
}

class LogInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => print('Log In pressed!'),
        style: ElevatedButton.styleFrom(
          elevation: 5.0,
          padding: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          primary: Colors.green, // Ubah warna latar belakang menjadi putih
        ),
        child: Text(
          'LOG IN',
          style: TextStyle(
            color: Color.fromARGB(
                255, 255, 255, 255), // Ubah warna teks menjadi hijau
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
}

class SignInWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Sign In with',
          style: labelStyle,
        )
      ],
    );
  }
}

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('Sign Up button pressed!'),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: 'Don\'t have an account? ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'Sign Up',
            style: TextStyle(
              color: Color.fromARGB(255, 19, 159, 47),
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          )
        ]),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  Function onTap;
  AssetImage logo;

  SocialButton(Function onTap, AssetImage logo) {
    this.onTap = onTap;
    this.logo = logo;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(
            image: logo,
          ),
        ),
      ),
    );
  }
}
