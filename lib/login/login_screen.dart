import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:get/get.dart';
import 'package:quiz_demo/buiesness/controller.dart';
import 'package:quiz_demo/home/home_screen.dart';
import 'package:quiz_demo/login/bloc/my_form_bloc.dart';
import 'package:quiz_demo/login/bloc/my_form_event.dart';
import 'package:quiz_demo/login/bloc/my_form_state.dart';
import 'package:quiz_demo/utils/app_style.dart';
import 'package:quiz_demo/utils/extensions.dart';
import 'package:quiz_demo/utils/string_const.dart';
import 'package:quiz_demo/widget/password_text_field.dart';
import 'package:quiz_demo/widget/textformfield.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  final controller = Get.put(Controller());

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(() {
      if (!_emailFocusNode.hasFocus) {
        context.read<MyFormBloc>().add(EmailUnfocused());
        FocusScope.of(context).requestFocus(_passwordFocusNode);
      }
    });
    _passwordFocusNode.addListener(() {
      if (!_passwordFocusNode.hasFocus) {
        context.read<MyFormBloc>().add(PasswordUnfocused());
      }
    });
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isValid = context.select((MyFormBloc bloc) => bloc.state.isValid);
    return BlocListener<MyFormBloc, MyFormState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          //_showSnackBar('login successfully!');
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
              const HomeScreen()
              ));
          /*showDialog<void>(
            context: context,
            builder: (_) => const SuccessDialog(),
          );*/
        }
        if (state.status.isInProgress) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Submitting...')),
            );
        }
      },
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20),
          width: double.infinity,
          height: double.infinity,
          color: HexColor.fromHex("#00573D"),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 124.25,
                ),
                Image.asset(
                  'assets/images/logo-sp.png',
                  height: 95,
                  width: 184,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  height: 10.25,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    Strings.welcome_splash,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'OpenSens',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                EditTextWidget(
                  suffixName: "",
                  hintText: Strings.user_name,
                  isVisibleSuffix: false,
                  icon: Image.asset("assets/images/Username.png"),
                  isPasswordField: false,
                  controller: _emailController,
                  isPasswordEditText: false,
                  focusNode: _emailFocusNode,
                ),
                const SizedBox(height: 16),
                Obx(
                  () => PasswordEditTextField(
                    suffixName: "Show",
                    hintText: Strings.password,
                    isVisibleSuffix: true,
                    icon: Image.asset("assets/images/Password.png"),
                    isPasswordField: widget.controller.isPassword.value,
                    showPassword: () {
                      widget.controller.showPassword();
                    },
                    controller: _passwordController,
                    isPasswordEditText: true,
                    focusNode: _passwordFocusNode,
                  ),
                ),
                const SizedBox(height: 30),
                const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      Strings.forgot_password,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontFamily: 'OpenSens',
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          decorationStyle: TextDecorationStyle.solid,
                          color: Colors.white,
                          fontSize: 14.0),
                    )),
                const SizedBox(height: 11),
                const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      Strings.forgot_username,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontFamily: 'OpenSens',
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          decorationStyle: TextDecorationStyle.solid,
                          color: Colors.white,
                          fontSize: 14.0),
                    )),
                const SizedBox(height: 32),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    if (isValid) {
                      context.read<MyFormBloc>().add(FormSubmitted());
                    }
                  }

                  /*() {
                    if (_formKey.currentState!.validate()) {
                      _showSnackBar('login successfully!');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    }
                  }*/
                  ,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        Strings.sign_in,
                        style: TextStyle(
                            fontSize: 16,
                            color: HexColor.fromHex("#067755"),
                            fontFamily: 'OpenSens',
                            fontWeight: FontWeight.w600),
                      )),
                ),
                const SizedBox(height: 54),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    children: [
                      TextSpan(
                          text: 'This app is intended for ',
                          style: AppStyle.openSens300),
                      TextSpan(
                          text: 'Health Care Professionals ',
                          style: AppStyle.openSens600),
                      const TextSpan(text: 'with '),
                      TextSpan(
                        text: 'Standard Process accounts. ',
                        style: AppStyle.openSens600,
                      ),
                      TextSpan(
                          text: 'If you don’t have an account, sign up at ',
                          style: AppStyle.openSens300),
                      TextSpan(
                        text: '\nstandardprocess.com',
                        style: TextStyle(
                          fontFamily: 'OpenSens',
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                          color: HexColor.fromHex(
                            "#A7CA64",
                          ),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("click event");
                          },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showSnackBar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(value)),
    );
  }
}

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Row(
              children: <Widget>[
                Icon(Icons.info),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Form Submitted Successfully!',
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              child: const Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
