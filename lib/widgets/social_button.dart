import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_form_validation/pallete.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  const SocialButton({
    super.key,
    required this.iconPath,
    required this.label,
    this.horizontalPadding = 100,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      // style: ButtonStyle(
      //   padding: WidgetStatePropertyAll(
      //     .symmetric(vertical: 30, horizontal: horizontalPadding),
      //   ),
      //   shape: WidgetStatePropertyAll(
      //     RoundedRectangleBorder(
      //       side: const BorderSide(color: Pallete.borderColor, width: 3),
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //   ),
      // ),
      onPressed: () {},
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        // color: Pallete.whiteColor, // deprecated -> ColorFilter
        colorFilter: .mode(Pallete.whiteColor, .srcIn),
      ),
      label: Text(
        label,
        style: const TextStyle(color: Pallete.whiteColor, fontSize: 17),
      ),
      // BETTER APPROACH FOR STYLING
      style: TextButton.styleFrom(
        padding: .symmetric(vertical: 30, horizontal: horizontalPadding),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Pallete.borderColor, width: 3),
          borderRadius: .circular(10),
        ),
      ),
    );
  }
}
