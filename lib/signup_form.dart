// ignore_for_file: sized_box_for_whitespace, duplicate_ignore, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Animated Sign Up Form',
              style: GoogleFonts.nunito(fontWeight: FontWeight.w600))),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 410,
              width: 410,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(19))),
            ),
      
      
            // ignore: sized_box_for_whitespace
            AnimatedPositioned(
              curve: Curves.easeOutBack,
                 duration: Duration(milliseconds: 400),

              left: _isHover ? -9 : 0 ,
              right: _isHover ? 9 : 0,
              top: _isHover ?  -9 : 0,
              bottom: _isHover ? 9 : 0,
      
              child: InkWell(
                onTap: () {},
                onHover: (hover) {
                  setState(() {
                    _isHover = hover;
                  });
                },
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                child: AnimatedContainer(
                  
                  duration: const Duration(milliseconds: 220),
                  height: 410,
                  width: 410,
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                      color: _isHover ? Colors.purple[200] : Colors.white,
                      // ignore: prefer_const_constructors
                      borderRadius: BorderRadius.all(Radius.circular(19))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
