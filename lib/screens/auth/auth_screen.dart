import 'package:flutter/material.dart';
import 'package:nekidaem_test/data/server_api/models/user_model.dart';
import 'package:nekidaem_test/screens/task_list/task_list_screen.dart';
import 'package:nekidaem_test/theme/color_theme.dart';
import 'package:nekidaem_test/theme/text_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _userApp = context.read<UserApp>();
    return Scaffold(
      backgroundColor: ColorPalette.backgroundBlack,
      appBar: AppBar(
        backgroundColor: ColorPalette.gray,
        title: Text(AppLocalizations.of(context)!.kanban),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _InputTextField(
                userName: true,
              ),
              // TextFormField(
              //     onChanged: (userName) =>
              //         _userApp.changeData(userName: userName),
              //     // controller: model?.loginTextController,
              //     textAlign: TextAlign.center,
              //     style: TextThemes.inputText,
              //     decoration: InputDecoration(
              //       hintText: AppLocalizations.of(context)!.enterUserName,
              //       hintStyle: TextThemes.hintText,
              //       border: OutlineInputBorder(
              //           borderSide:
              //               BorderSide(color: ColorPalette.outlinedBorder)),
              //       enabledBorder: OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.grey, width: 2),
              //         borderRadius: BorderRadius.circular(25.0),
              //       ),
              //       // enabledBorder: OutlineInputBorder(
              //       //   borderRadius: BorderRadius.circular(25.0),
              //       //   borderSide: BorderSide(
              //       //     color: ColorPalette.focusedBorder,
              //       //     width: 2.0,
              //       //   ),
              //       // ),
              //       focusedBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(25.0),
              //           borderSide: BorderSide(
              //               color: ColorPalette.focusedBorder, width: 2)),
              //       errorBorder: OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.red, width: 2),
              //         borderRadius: BorderRadius.circular(25.0),
              //       ),
              //       // errorBorder:
              //       //     OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
              //       focusedErrorBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(25.0),
              //           borderSide: BorderSide(color: Colors.purple, width: 2)),
              //       // errorStyle: TextStyle(color: Colors.purple),
              //     )),
              const _ErrorMessageWidget(
                userName: true,
                userPassword: false,
              ),
              _InputTextField(
                userName: false,
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              // TextFormField(
              //     obscureText: true,
              //     onChanged: (password) =>
              //         _userApp.changeData(password: password),
              //     // controller: model?.passwordTextController,
              //     textAlign: TextAlign.center,
              //     style: TextThemes.inputText,
              //     decoration: InputDecoration(
              //       hintText: AppLocalizations.of(context)!.enterUserPass,
              //       hintStyle: TextThemes.hintText,
              //       border: OutlineInputBorder(
              //           borderSide:
              //               BorderSide(color: ColorPalette.outlinedBorder)),
              //       enabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(25.0),
              //         borderSide: BorderSide(
              //           color: ColorPalette.focusedBorder,
              //           width: 2.0,
              //         ),
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(25.0),
              //           borderSide:
              //               BorderSide(color: ColorPalette.focusedBorder)),
              //       // errorBorder:
              //       //     OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
              //       focusedErrorBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(25.0),
              //           borderSide:
              //               BorderSide(color: ColorPalette.focusedBorder)),
              //       // errorStyle: TextStyle(color: Colors.purple),
              //     )),
              const _ErrorMessageWidget(
                userName: false,
                userPassword: true,
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              InkWell(
                onTap: context.watch<UserApp>().activeButton
                    ? () async {
                        await _userApp.auth();
                        context.read<UserApp>().authSuccess
                            ? Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TaskList()),
                                (Route<dynamic> route) => false,
                              )
                            // ignore: unnecessary_statements
                            : null;
                      }
                    : () {},
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppLocalizations.of(context)!.logIn,
                      style: TextThemes.hintText,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: ColorPalette.focusedBorder,
                      borderRadius: BorderRadius.circular(25)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ErrorMessageWidget extends StatelessWidget {
  final bool userName;
  final bool userPassword;
  const _ErrorMessageWidget(
      {Key? key, required this.userName, required this.userPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userApp = context.watch<UserApp>();
    if (userName) {
      if (userApp.errorUser != null)
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            userApp.errorUser!,
            style: TextThemes.errorText,
          ),
        );
    }
    if (userPassword) {
      if (userApp.errorPassword != null)
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            userApp.errorPassword!,
            style: TextThemes.errorText,
          ),
        );
    }
    return const SizedBox(
      height: 20,
    );
  }
}

class _InputTextField extends StatelessWidget {
  final bool userName;
  const _InputTextField({
    Key? key,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _userApp = context.read<UserApp>();
    return TextFormField(
        obscureText: !userName,
        onChanged: userName
            ? (userName) => _userApp.changeData(userName: userName)
            : (password) => _userApp.changeData(password: password),
        textAlign: TextAlign.center,
        style: TextThemes.inputText,
        decoration: InputDecoration(
          hintText: userName
              ? AppLocalizations.of(context)!.enterUserName
              : AppLocalizations.of(context)!.enterUserPass,
          hintStyle: TextThemes.hintText,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: ColorPalette.outlinedBorder)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(25.0),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide:
                  BorderSide(color: ColorPalette.focusedBorder, width: 2)),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(25.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(color: Colors.purple, width: 2)),
        ));
  }
}
