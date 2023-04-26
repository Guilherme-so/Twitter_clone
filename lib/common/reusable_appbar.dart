import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_clone/theme/pallete.dart';
import '../constants/assets_constants.dart';

class ReusableAppBar extends StatelessWidget with PreferredSizeWidget {
  const ReusableAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SvgPicture.asset(
        AssetsConstants.twitterLogo,
        colorFilter: const ColorFilter.mode(
          Pallete.blueColor,
          BlendMode.color,
        ),
        height: 30,
      ),
      centerTitle: true,
    );
  }
}
