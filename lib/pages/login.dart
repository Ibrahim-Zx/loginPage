import 'package:flutter/material.dart';
import 'package:login_page/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? rememberMe = false;

  promiloText() {
    return const Text(
      'Promilo',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  welcomeText() {
    return const Text(
      'Hi, Welcome Back!',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  usernameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Please Sign in to continue',
          style: TextStyle(
            color: Color(0xff0f364b),
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(15),
              hintText: 'Enter Email or Mob No.',
              hintStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Align(
          alignment: Alignment.bottomRight,
          child: Text(
            'Sign in with OTP',
            style: TextStyle(
              color: Color(0xff04689b),
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  passwordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(
            color: Color(0xff0f364b),
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(15),
              hintText: 'Enter Password',
              hintStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }

  rememberMeBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
                value: rememberMe,
                activeColor: const Color(0xff04689b),
                onChanged: (newBool) {
                  setState(() {
                    rememberMe = newBool;
                  });
                }),
            const Text('Remember Me'),
          ],
        ),
        const Row(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'Forget Password',
                style: TextStyle(
                  color: Color(0xff04689b),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  submitButton() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/homePage');
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffb4c6d3),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color(0xff0e8de9), width: 2.8),
        ),
        child: const Center(
          child: Text(
            'SUBMIT',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }

  orDivider() {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10), child: Text('Or')),
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ),
      ],
    );
  }

  loginOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: const DecorationImage(
              image: AssetImage('assets/logos/google.webp'),
            ),
          ),
        ),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: const DecorationImage(
                  image: AssetImage('assets/logos/in.png'))),
        ),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: const DecorationImage(
                  image: AssetImage('assets/logos/facebook.webp'))),
        ),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: const DecorationImage(
                  image: AssetImage('assets/logos/instagram.webp'))),
        ),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: const DecorationImage(
                  image: AssetImage('assets/logos/whatsapp.webp'))),
        ),
      ],
    );
  }

  businessOrSignUp() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Business User?',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              'Login Here',
              style: TextStyle(
                color: Color(0xff04689b),
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'dont\'t have an account',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              'Sign Up',
              style: TextStyle(
                color: Color(0xff04689b),
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        )
      ],
    );
  }

  termsAndCondition() {
    return const Column(
      children: [
        Text(
          'By Continuing, you agree to',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
        SizedBox(height: 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Promilo\'s ',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            Text(
              'Terms of Use & Privacy Policy.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  promiloText(),
                  const SizedBox(height: 60),
                  welcomeText(),
                  const SizedBox(height: 30),
                  usernameField(),
                  const SizedBox(height: 5),
                  passwordField(),
                  const SizedBox(height: 8),
                  rememberMeBox(),
                  const SizedBox(height: 20),
                  submitButton(),
                  const SizedBox(height: 35),
                  orDivider(),
                  const SizedBox(height: 25),
                  loginOptions(),
                  const SizedBox(height: 50),
                  businessOrSignUp(),
                  const SizedBox(height: 20),
                  termsAndCondition(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
