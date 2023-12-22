import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/core/utils/app_styles.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'package:gap/gap.dart';

class w_market_phai extends StatelessWidget {
  const w_market_phai({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      child: Column(
        children: [
          Text(
            "PHIÊN CHỢ VỚI DOCTOR SAIGON",
            style: AppStyles.s32,
          ),
          Text(
            "Mua sắm sức khỏe & chăm sóc sức khỏe trong ứng dụng được quản lý đặc biệt DOCTOR SAIGON.",
            style: AppStyles.s14,
          ),
          Text(
            "Ngoài việc tư vấn trực tuyến với bác sĩ, bạn cũng có thể mua sắm ảo với DA. Mua sắm tất cả các nhu cầu về sức khỏe và thể chất của bạn trên DOCTORSAIGON Marketplace và nhận các mặt hàng được giao cho bạn trong phạm vi Việt Nam. Truy cập vào nhiều mặt hàng từ thực phẩm bổ sung dinh dưỡng, chăm sóc da, quản lý cân nặng cho đến các sản phẩm dành cho lối sống và thể dục – tất cả ở cùng một nơi..",
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
