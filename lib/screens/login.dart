import 'package:flutter/material.dart';
import 'package:sport_app/utils/responsive.dart';
import 'package:sport_app/widgets/button.dart';
import 'package:sport_app/widgets/input.dart';

int modalBg = 0xFF222232;

showLoginModal({required BuildContext context}) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          // height: 50,
          padding: EdgeInsets.all(20),
          color: Color(modalBg),
          child: Column(
            children: [
              LoginTitle(),
              CustomInput(
                text: "Email",
                icon: Icons.email,
              ),
              CustomInput(
                text: "Password",
                icon: Icons.lock,
                secure: true,
              ),
              LoginRemember(),
              LoginButton(),
              LoginBase()
            ],
          ),
        );
      });
}

class LoginTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Container(
      margin: EdgeInsets.only(
          bottom: getResponsiveHeight(context: context, height: 3)),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Welcome",
          style: theme.textTheme.headline3,
        ),
      ),
    ));
  }
}

class LoginRemember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Container(
      margin: EdgeInsets.only(
          bottom: getResponsiveHeight(context: context, height: 3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(value: true, onChanged: (_) {}),
              Text(
                "Remember me",
                style: theme.textTheme.caption,
              )
            ],
          ),
          Text(
            "Forgot password",
            style: theme.textTheme.caption,
          )
        ],
      ),
    ));
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
      margin: EdgeInsets.only(
          bottom: getResponsiveHeight(context: context, height: 3)),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            text: "Sign in",
            onPress: () {},
          ))
        ],
      ),
    ));
  }
}

class LoginBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Container(
      margin: EdgeInsets.only(
          bottom: getResponsiveHeight(context: context, height: 3)),
      child: Center(
        child: Text(
          "Don’t have account? Sign Up",
          style: theme.textTheme.caption,
        ),
      ),
    ));
  }
}
