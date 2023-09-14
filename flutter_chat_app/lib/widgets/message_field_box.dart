import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context)
    .colorScheme;

    final textCotroller = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration(
        hintText: 'End your message with "?"',
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          filled: true,
          suffixIcon: IconButton(icon: const Icon(Icons.send_outlined), onPressed: () {
            final textValue = textCotroller.value.text;
            textCotroller.clear();
            print('button: $textValue');
          },)
        );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: textCotroller,
        focusNode: focusNode,
        decoration: inputDecoration,
        onFieldSubmitted:(value) {
          print('submited value: $value');
          textCotroller.clear();
          focusNode.requestFocus();
        },
        onTapOutside: (_) => focusNode.unfocus(),
      ),
    );
  }
}