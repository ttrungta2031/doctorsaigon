import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/core/utils/app_styles.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'package:gap/gap.dart';

class w_quanlybenh_trai extends StatelessWidget {
  const w_quanlybenh_trai({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      child: Column(
        children: [
          Text(
            "QUẢN LÝ BỆNH TIỆN LỢI DỄ DÀNG VỚI DOCTOR SAIGON",
            style: AppStyles.s32,
          ),
          Text(
            "Chăm sóc sức khoẻ chuyên nghiệp trong sự thoải mái tại nhà của bạn với DOCTOR SAIGON.",
            style: AppStyles.s14,
          ),
          Text(
            "Đội ngũ Chăm sóc DOCTOR SAIGON có thể đến nhà bạn để chăm sóc y tế hoặc thực hiện các thủ tục đơn giản, để bạn có thể tập trung hoàn toàn vào việc nghỉ ngơi và phục hồi trong sự thoải mái tại nhà.",
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
