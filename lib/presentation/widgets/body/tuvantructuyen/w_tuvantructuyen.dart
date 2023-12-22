import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/body/timbacsi/w_timbacsi_phai.dart';
import 'package:portfolio/presentation/widgets/body/timbacsi/w_timbacsi_trai.dart';
import 'package:portfolio/presentation/widgets/body/tuvantructuyen/w_tuvantructuyen_phai.dart';
import 'package:portfolio/presentation/widgets/body/tuvantructuyen/w_tuvantructuyen_trai.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';

class w_tuvantructuyen extends StatelessWidget {
  const w_tuvantructuyen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: context.width > DeviceType.ipad.getMaxWidth()
          ? const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: w_tuvantructuyen_phai(),
                ),
                SizedBox(width: 32),
                Expanded(child: w_tuvantructuyen_trai()),
              ],
            )
          : const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                w_tuvantructuyen_phai(),
                SizedBox(height: 32),
                w_tuvantructuyen_trai(),
              ],
            ),
    );
  }

  int _getCrossAxisCount(double deviceWidth) {
    int numOfServices = AppConstants.services.length;
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return 2;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 3;
    } else {
      return numOfServices > 4 ? 4 : numOfServices;
    }
  }

  double _getAspectRatio(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMinWidth()) {
      return 1.1;
    } else if (deviceWidth < DeviceType.ipad.getMinWidth()) {
      return 1.4;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 1.5;
    } else {
      return 1.6;
    }
  }
}
