import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maloooook_coffee_shop/app_style.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType keyboardType;
  final bool obsecureText;
  final bool ispassword;
  final String? Function(String?) validator;
  final TextEditingController controller;

  const CustomTextFormField(
      {super.key,
      required this.label,
      required this.hint,
      this.keyboardType = TextInputType.text,
      this.obsecureText = false,
      this.ispassword = false,
      required this.validator,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.sora(
                      fontSize: 18,color: AppColors.primaryColor,fontWeight: FontWeight.w600
                    ),
        ),
        const SizedBox(height: 7),
        TextFormField(
          style: GoogleFonts.sora(
                      fontSize: 18,color: AppColors.ofWhiteColor,fontWeight: FontWeight.w600
                    ),
          controller: controller,
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: GoogleFonts.sora(
                      fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600
                    ) ,
              border: const OutlineInputBorder( ),
              suffixIcon: ispassword
                  ? IconButton(
                      icon: const Icon(Icons.visibility_off_outlined),
                      onPressed: () {})
                  : null),
          validator: validator,
        ),
      ],
    );
  }
}
