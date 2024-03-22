import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_demo/login/bloc/my_form_bloc.dart';
import 'package:quiz_demo/login/bloc/my_form_event.dart';
import 'package:quiz_demo/login/bloc/my_form_state.dart';
import 'package:quiz_demo/utils/extensions.dart';

class EditTextWidget extends StatelessWidget {
  const EditTextWidget(
      {super.key,
      required this.suffixName,
      required this.hintText,
      required this.isVisibleSuffix,
      required this.icon,
      required this.controller,
      required this.isPasswordField,
      this.showPassword,
      required this.isPasswordEditText,
      required this.focusNode});

  final String suffixName, hintText;
  final bool isVisibleSuffix, isPasswordEditText;
  final Image icon;
  final TextEditingController controller;
  final bool isPasswordField;
  final void Function()? showPassword;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyFormBloc, MyFormState>(builder: (context, state) {
      return TextFormField(
        focusNode: focusNode,
        maxLines: 1,
        controller: controller,
        obscureText: isPasswordField,
        obscuringCharacter: "*",
        cursorColor: Colors.white,
        textInputAction: TextInputAction.next,
        onChanged: (value) {
          context.read<MyFormBloc>().add(EmailChanged(email: value));
        }
        /*validator: (value) {
            if(isPasswordEditText) {
              return ValidationMixin().passwordValidationMixin(value!);
            } else {
              return ValidationMixin().emailValidationMixin(value!);
            }
          }*/
        ,
        style: const TextStyle(
            fontSize: 16.0,
            color: Colors.white,
            fontFamily: 'OpenSens',
            fontWeight: FontWeight.w300),
        decoration: InputDecoration(
          errorStyle: const TextStyle(
              fontSize: 12.0,
              color: Colors.white,
              fontFamily: 'OpenSens',
              fontWeight: FontWeight.w300),
          prefixIcon: icon,
          suffixIcon: Visibility(
            visible: isVisibleSuffix,
            child: GestureDetector(
              onTap: () {
                showPassword!();
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0, left: 16),
                child: Text(
                  suffixName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                      fontFamily: 'OpenSens',
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ),
          helperStyle: const TextStyle(
              fontSize: 12.0,
              color: Colors.white,
              fontWeight: FontWeight.normal),
          errorMaxLines: 2,
          errorText: _getError(state),
          suffixIconConstraints:
              const BoxConstraints(maxHeight: double.infinity),
          hintText: hintText,
          filled: true,
          fillColor: HexColor.fromHex("#067755"),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          hintStyle: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
              fontWeight: FontWeight.normal),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: HexColor.fromHex("#067755")),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: HexColor.fromHex("#067755")),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      );
    });
  }

  String? _getError(MyFormState state) {
    String? message;
    if (state.email.displayError != null) {
      message = 'Please ensure the email entered is valid';
    }

    return message;
  }
}
