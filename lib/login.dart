import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  // Create focus nodes for each text field
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF012150),
      appBar: AppBar(
        backgroundColor: const Color(0xFF012150),
        title: Text(
          "Login",
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Center(
              child: Text(
                "Hello Welcome Back",
                style: GoogleFonts.roboto(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                "Welcome back please \nsign in again",
                style: GoogleFonts.roboto(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),

            // Email Field
            TextFormField(
              focusNode: _emailFocusNode,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SizedBox(
                    width: 16,
                    height: 12,
                    child: SvgPicture.asset(
                      "assets/images/email.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                labelText: "Email",
                labelStyle: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 14,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF12325D)),
                ),
                focusedBorder: UnderlineInputBorder(
                  // Add this
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Password Field
            TextFormField(
              focusNode: _passwordFocusNode,
              style: const TextStyle(color: Colors.white),
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SizedBox(
                    width: 16,
                    height: 12,
                    child: SvgPicture.asset(
                      "assets/images/password.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                labelText: "Password",
                labelStyle: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 14,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF12325D)),
                ),
                focusedBorder: UnderlineInputBorder(
                  // Add this
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Rest of your widgets remain the same...
            // Login Button
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _emailFocusNode.unfocus();
                      _passwordFocusNode.unfocus();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 19),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // OR Divider
            Row(
              children: [
                Expanded(child: Divider(color: Color(0xFF12325D))),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "or",
                    style: GoogleFonts.roboto(color: Colors.white),
                  ),
                ),
                Expanded(child: Divider(color: Color(0xFF12325D))),
              ],
            ),
            const SizedBox(height: 20),

            // Facebook Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  _emailFocusNode.unfocus();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: const Color(0xFF11325C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                icon: SvgPicture.asset("assets/images/btnSigninwithFb.svg"),
                label: Text(
                  "Facebook",
                  style: GoogleFonts.roboto(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            const SizedBox(height: 14),

            // Google Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  _emailFocusNode.unfocus();
                  _passwordFocusNode.unfocus();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: const Color(0xFF11325C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                icon: SvgPicture.asset("assets/images/btnSigninwithGoogle.svg"),
                label: Text(
                  "Gmail",
                  style: GoogleFonts.roboto(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Sign Up Option
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: GoogleFonts.roboto(color: Colors.white, fontSize: 12),
                  children: [
                    TextSpan(
                      text: "Sign In",
                      style: GoogleFonts.roboto(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
