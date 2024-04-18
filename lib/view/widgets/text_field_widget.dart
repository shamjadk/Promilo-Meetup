import 'package:flutter/material.dart';
import 'package:promilo_meetup/core/theme/app_theme.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  final bool isCheckBox;
  final String fieledHead;
  final String fieldtail;
  final String hintText;
  late ValueNotifier<bool> isEnabled;
  final TextEditingController controller;

  TextFieldWidget(
      {super.key,
      required this.fieledHead,
      required this.fieldtail,
      required this.hintText,
      required this.controller,
      required this.isCheckBox,
      required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieledHead,
          style: const TextStyle(
              color: AppTheme.text, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          onChanged: (value) {
            if (value.isEmpty) {
              isEnabled.value = false;
            } else {
              isEnabled.value = true;
            }
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'This field is Required';
            } else if (isCheckBox == false &&
                !controller.text.endsWith('com')) {
              return 'Enter a valid emali ID';
            }
            return null;
          },
          cursorColor: AppTheme.button,
          controller: controller,
          decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(width: 1.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(color: AppTheme.button, width: 1.5),
              )),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            isCheckBox
                ? Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  )
                : const Text(''),
            Text(
              fieldtail,
              style: const TextStyle(
                  color: AppTheme.button,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
