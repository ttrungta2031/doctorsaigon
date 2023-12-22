import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/core/utils/app_styles.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'package:gap/gap.dart';

class w_suckhoetamthan_phai extends StatelessWidget {
  const w_suckhoetamthan_phai({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      child: Column(
        children: [
          Text(
            "SỨC KHOẺ TÂM THẦN DOCTOR SAIGON",
            style: AppStyles.s32,
          ),
          Text(
            "Nói chuyện với các cố vấn và nhà tâm lý học được chứng nhận một cách bí mật với chuyên gia của DOCTOR SAIGON.",
            style: AppStyles.s14,
          ),
          Text(
            "Nói chuyện với một chuyên gia có trình độ để huấn luyện tư duy và sức khỏe tinh thần một cách bí mật thông qua tư vấn video trực tuyến. Duyệt qua và chọn một bác sĩ theo lựa chọn của bạn, và đặt một cuộc hẹn vào thời điểm thuận tiện cho bạn.",
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
