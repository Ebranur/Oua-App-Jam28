import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 53),
              Image.asset('assets/ggl.png'),
              const SizedBox(height: 32),
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Source Sans Pro',
                  color: Color(0xFF868686),
                ),
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Source Sans Pro',
                    color: Color(0xFF868686),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF4F4F4),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Şifre',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Source Sans Pro',
                  color: Color(0xFF868686),
                ),
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Şifre',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Source Sans Pro',
                    color: Color(0xFF868686),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF4F4F4),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'E-posta adresinizi mi unuttunuz?',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  color: Color(0xFFFF9500),
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: Container(
                  width: 124,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: const Color(0xFFFF9500),
                  ),
                  child: const Center(
                    child: Text(
                      'Sonraki',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Center(
                child: Text(
                  'Hesap Oluşturun',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    color: Color(0xFFFF9500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}