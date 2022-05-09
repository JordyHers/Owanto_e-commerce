import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:owanto_app/src/const/app_colors.dart';
import 'package:owanto_app/src/const/app_font.dart';
import 'package:owanto_app/src/router/router_path.dart';
import 'package:owanto_app/src/viewmodel/auth_viemodel.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool isShowPass = false;

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context, listen: true);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(0.0),
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.black,
                      size: 20,
                    )),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    "Owant'O",
                    style: AppFont.bold.copyWith(
                      color: Colors.cyan.shade800,
                      fontSize: 42,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * .15,
                ),

                // TextFieldAddress(vi
                //     textEditingController: emailController, lableText: "Email"),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.2),
                          blurRadius: 1,
                          spreadRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ]),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Email",
                      alignLabelWithHint: true, // center labastyle
                      labelStyle: AppFont.regular.copyWith(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                const   SizedBox(
                  height: 10
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.2),
                          blurRadius: 1,
                          spreadRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ]),
                  child: TextFormField(
                    controller: passController,
                    obscureText: isShowPass,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Mot de passe",
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isShowPass = !isShowPass;
                            });
                          },
                          child: Icon(
                            isShowPass
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 16,
                          )),
                      alignLabelWithHint: true,

                      labelStyle: AppFont.regular.copyWith(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, ForgotPassScreens),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "mot de passe oublie?",
                      style: AppFont.medium.copyWith(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.primaryColorRed,
                      value: false,
                      onChanged: (value) {},
                    ),
                    Text(
                      "Rester connecté?",
                      style: AppFont.medium.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.primaryColorBlack,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {
                      // authViewModel.login().then((value) =>
                      //     Navigator.pushReplacementNamed(
                      //         context, DashBoardScreens));
                      Navigator.pushReplacementNamed(context, DashBoardScreens);
                    },
                    child: Text(
                      "Se Connecter".toUpperCase(),
                      style: AppFont.medium
                          .copyWith(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterScreens);
                  },
                  child: Center(
                      child: RichText(
                    text: TextSpan(
                        text: "Vous n'avez pas de compte? ",
                        style: AppFont.medium.copyWith(fontSize: 13),
                        children: [
                          TextSpan(
                            text: "S'inscrire",
                            style: AppFont.bold.copyWith(
                                fontSize: 13, color: AppColors.primaryColorRed),
                          )
                        ]),
                  )),
                ),
                SizedBox(
                  height: 10,
                ),

                Center(
                  child: Text(
                    'Or',
                    style: AppFont.medium.copyWith(
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 80,
                        height: 65,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.1),
                                offset: Offset(1, 1),
                                blurRadius: 1,
                                spreadRadius: 2,
                              )
                            ]),
                        child: SvgPicture.asset(
                          'assets/image/ic_google.svg',
                          width: 10,
                          height: 10,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 65,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.1),
                                offset: Offset(1, 1),
                                blurRadius: 1,
                                spreadRadius: 2,
                              )
                            ]),
                        child: SvgPicture.asset(
                          'assets/image/ic_fb.svg',
                          width: 10,
                          height: 10,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
