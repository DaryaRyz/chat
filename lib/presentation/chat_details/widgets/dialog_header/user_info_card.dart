import 'package:chat/domain/models/user_info.dart';
import 'package:chat/presentation/styles/color_styles.dart';
import 'package:chat/presentation/widgets/app_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  final UserInfo userInfo;
  final VoidCallback onTap;

  const UserInfoCard(
    this.userInfo, {
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 279,
      child: Material(
        color: ColorStyles.mainItemsColor,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(9),
            child: Row(
              children: [
                AppNetworkImage(
                  userInfo.image,
                  width: 44,
                  height: 44,
                  borderRadius: BorderRadius.circular(8),
                ),
                const SizedBox(width: 17),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userInfo.userName,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'License: ${userInfo.license}',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.3),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Icon(
                  CupertinoIcons.forward,
                  size: 25,
                  color: Colors.black.withOpacity(0.3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
