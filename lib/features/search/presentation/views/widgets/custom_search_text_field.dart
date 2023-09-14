import 'package:booka/constants.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16.0,

      ),
      cursorColor: Colors.white,
      autofocus: true,
      cursorRadius:const Radius.circular(kPrimaryBorderRadius),
      keyboardAppearance:Brightness.dark ,
      keyboardType: TextInputType.text,

      decoration: InputDecoration(
          hintText: "Enter to Search...",
          hintStyle:const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            letterSpacing: 1.1,

          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kPrimaryBorderRadius),

          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kPrimaryBorderRadius),
              borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.0
              )

          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kPrimaryBorderRadius),
              borderSide: const BorderSide(
                color: Colors.white,
                width: 2.0,

              )

          ),
          errorBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(kPrimaryBorderRadius),
              borderSide: const BorderSide(
                color: Colors.redAccent,
                width: 2.0,

              )

          ),
          alignLabelWithHint: true,
          helperText: "Enter",

          suffixIcon: IconButton(
              onPressed: (){},
              icon:const Icon(Icons.search_outlined,color: Colors.white,size: 30.0,))
      ),
    );
  }
}
