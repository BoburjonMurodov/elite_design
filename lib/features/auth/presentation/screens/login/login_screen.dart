import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routes/route_manager.dart';
import '../../bloc/login/login_screen_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _login = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _login.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginScreenBloc(),
      child: BlocConsumer<LoginScreenBloc, LoginScreenState>(
        listener: (context, state) {
          var bloc = context.read<LoginScreenBloc>();
          if (state.status == Status.ERROR) {
            showDialog(
                context: context,
                builder: (_) {
                  return Dialog(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Wrap(
                        children: [
                          Icon(Icons.error,
                            color: Colors.red,
                          ),
                          SizedBox(width: 16),
                          Text(state.error)
                        ],
                      ),
                    ),
                  );
                }).then((value) {
              bloc.add(OnDismissDialog());
            });
          }
          if (state.status == Status.SUCCESS) {
            Navigator.pushNamed(context, RouteManager.mainScreen);
          }
        },
        builder: (context, state) {
          log(state.showPassword.toString());
          return Scaffold(
            backgroundColor: Color(0xFFf5f6fa),
            body: Column(
              children: [
                Expanded(
                  flex: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff1a1a16),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                    ),
                    child: Center(
                      child: SizedBox(
                          width: 180,
                          height: 180,
                          child:
                              Image.asset("assets/images/splash_image.webp")),
                    ),
                  ),
                ),
                Expanded(
                    flex: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Tizimga kirish",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 8),
                          TextField(
                            controller: _login,
                            autocorrect: false,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black45, width: .5),
                              ),
                              focusedBorder: OutlineInputBorder(),
                              contentPadding: EdgeInsets.only(left: 24),
                            ),
                          ),
                          SizedBox(height: 24),
                          Text(
                            "Parol",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 8),
                          TextField(
                            controller: _password,
                            textInputAction: TextInputAction.done,
                            obscureText: state.showPassword,
                            autocorrect: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black45, width: .5),
                              ),
                              focusedBorder: OutlineInputBorder(),
                              contentPadding: EdgeInsets.only(left: 24),
                              suffixIcon: IconButton(
                                  icon: Icon(Icons.remove_red_eye),
                                  onPressed: () {
                                    context
                                        .read<LoginScreenBloc>()
                                        .add(OnClickShowHidePassword());
                                  }),
                            ),
                          ),
                          SizedBox(height: 24),
                          InkWell(
                            onTap: () {
                              context.read<LoginScreenBloc>().add(
                                  OnClickLoginButton(
                                      _login.text, _password.text));
                            },
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.black87,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                    child: state.status == Status.LOADING
                                        ? CircularProgressIndicator(
                                            color: Colors.white,
                                          )
                                        : Text(
                                            "Kirish",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500),
                                          ))),
                          )
                        ],
                      ),
                    )),
                Expanded(flex: 10, child: Align()),
              ],
            ),
          );
        },
      ),
    );
  }
}
