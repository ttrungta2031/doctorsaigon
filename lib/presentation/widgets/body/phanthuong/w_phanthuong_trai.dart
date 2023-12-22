import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/core/utils/app_styles.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'package:gap/gap.dart';

class w_phanthuong_trai extends StatelessWidget {
  const w_phanthuong_trai({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      child: Column(
        children: [
          Text(
            "PHẦN THƯỞNG CỦA DOCTOR SAIGON",
            style: AppStyles.s32,
          ),
          Text(
            "Kiếm điểm thưởng khi bạn không dùng tiền mặt với DOCTOR SAIGON PAY - Tích điểm đổi thưởng ưu đãi và tiện lợi",
            style: AppStyles.s14,
          ),
          Text(
            "Theo dõi lịch sử chi tiêu và giao dịch của bạn và kiếm thêm gấp 2 lần điểm khi bạn giao dịch với DOCTORSAIGON Pay. Tích lũy điểm của bạn để đổi tín dụng và phần thưởng chăm sóc sức khỏe hấp dẫn từ Thị trường.",
            style: AppStyles.s12,
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            children: [
              getCard("", 'assets/images/healthcare01.png'),
              getCard("", 'assets/images/ongngheyte01.png'),
              getCard("", 'assets/images/chamsoctainha.png'),
              getCard("", 'assets/images/home01.png'),
            ],
          )
        ],
      ),
    );
  }

  Widget getCard(String tieude, String pathimg) {
    return Container(
      //color: Colors.blue,
      margin: const EdgeInsets.only(top: 24),
      width: 200,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            pathimg,
            width: 60,
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: Text(
              tieude,
              style: AppStyles.s14,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  double _getFormWidth(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return deviceWidth;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return deviceWidth / 1.6;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return deviceWidth / 2;
    } else {
      return deviceWidth / 2.5;
    }
  }
}
