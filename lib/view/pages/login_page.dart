import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:promilo_meetup/core/theme/app_theme.dart';
import 'package:promilo_meetup/view/widgets/social_media_row_widget.dart';
import 'package:promilo_meetup/view/widgets/submit_button_widget.dart';
import 'package:promilo_meetup/view/widgets/text_field_widget.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isEnabled = useState<bool>(false);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          title: const Text(
            'promilo',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 32, top: 16),
                    child: Text(
                      'Hi, welcome back',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.text),
                    ),
                  ),
                  TextFieldWidget(
                    isCheckBox: false,
                    fieledHead: '  Please Sign in to continue',
                    fieldtail: 'Sign In with OTP',
                    hintText: 'Enter Email or Mob no.',
                    controller: emailController,
                    isEnabled: isEnabled,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFieldWidget(
                    isCheckBox: true,
                    fieledHead: '  Password',
                    fieldtail: 'Forget password',
                    hintText: 'Enter password',
                    controller: passwordController,
                    isEnabled: isEnabled,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SubmitButtonWidget(
                    email: emailController.text,
                    password: passwordController.text,
                    formKey: formKey,
                    backgroundColor:
                        isEnabled.value ? AppTheme.button : AppTheme.submitBtn,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 32),
                    child: Row(
                      children: [
                        Expanded(child: Divider()),
                        Text(' or '),
                        Expanded(
                          child: Divider(),
                        ),
                      ],
                    ),
                  ),
                  const SocialMediaRowWidget(),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Business user?',
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 16),
                      ),
                      Text(
                        "Don't have an account",
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 16),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Login here',
                        style: TextStyle(
                            color: AppTheme.button,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Sign up',
                        style: TextStyle(
                            color: AppTheme.button,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: "By continuing, you agree to\npromilo's ",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                      children: [
                        TextSpan(
                            text: 'Terms of Use & Privacy Policy',
                            style: TextStyle(color: Colors.black))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
