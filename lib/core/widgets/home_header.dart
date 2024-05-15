import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello'
                // 'Hi, ${AppLocalStorage.getCachedData('name')}',
                //style: getBodyStyle(
                //  color: AppColors.primary, fontWeight: FontWeight.bold),
                ),
            const Gap(5),
            Text(
              'Have a Nice Day',
              //   style: getSmallStyle(),
            ),
          ],
        ),
        const Spacer(),
        //ClipRRect(
        //  borderRadius: BorderRadius.circular(360),
        //child: Image.file(
        //File(AppLocalStorage.getCachedData('image')),
        //width: 50,
        //height: 50,
        //fit: BoxFit.cover,
        //errorBuilder: (context, error, stackTrace) {
        // showErrorDialog(context, 'Error');
        //return Image.asset(
        //'assets/user.png',
        // width: 50,
        //);
        //},
        //))
      ],
    );
  }
}
