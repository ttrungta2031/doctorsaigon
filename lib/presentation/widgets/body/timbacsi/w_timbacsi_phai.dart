import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/core/utils/app_styles.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'package:gap/gap.dart';

class w_timbacsi_phai extends StatelessWidget {
  const w_timbacsi_phai({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      child: Column(
        children: [
          Text(
            "TÌM BÁC SĨ TRỰC TUYẾN TẠI SÀI GÒN VỚI DOCTOR SAIGON",
            style: AppStyles.s32,
          ),
          Text(
            "Truy cập một bộ đầy đủ các dịch vụ chăm sóc sức khỏe và thể chất để chăm sóc mọi khía cạnh nhu cầu chăm sóc sức khỏe của bạn.",
            style: AppStyles.s14,
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            children: [
              getCard("Phòng khám ảo DoctorSaigon",
                  'assets/images/phongkhamao.png'),
              getCard("Phòng khám vệ tinh DoctorSaigon",
                  'assets/images/hospital.png'),
              getCard("Dịch vụ chăm sóc tại nhà 123 DoctorSaigon",
                  'assets/images/chamsoctainha.png'),
              getCard("Chương trình quản lý bệnh nhân mãn tính",
                  'assets/images/quanlybenhnhanmantinh.png'),
              getCard("Chợ DoctorSaigon", 'assets/images/chodoctorsaigon.png'),
              getCard("Sức khỏe tâm thần", 'assets/images/suckhoetinhthan.png'),
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
