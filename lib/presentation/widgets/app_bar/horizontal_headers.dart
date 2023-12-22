import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/presentation/widgets/app_bar/home_app_bar.dart';

import '../../../core/utils/app_enums.dart';
import '../../blocs/home_bloc/home_bloc.dart';
import 'custom_header_btn.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class HorizontalHeaders2 extends StatelessWidget {
  const HorizontalHeaders2({super.key});
  // menuheader
  @override
  Widget build(BuildContext context) {
    return Container();
    // return Row(
    //   children: [
    //     Text(
    //       "Giới thiệu",
    //       style: TextStyle(color: Colors.white),
    //     ),
    //     Text("Dịch vụ", style: TextStyle(color: Colors.white)),
    //     ElevatedButton.icon(
    //       icon: const Icon(Icons.search),
    //       label: const Text(
    //         'Tìm kiếm',
    //         style: TextStyle(
    //             fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue),
    //       ),
    //       onPressed: () {
    //         // print(_formkey.currentState!.value);
    //         Navigator.pop(context);
    //         Navigator.push(context, MaterialPageRoute(builder: (_) => page4()));
    //       },
    //     ),
    //   ],
    // );

    // return BlocBuilder<HomeBloc, HomeState>(
    //   builder: (context, state) {
    //     return Row(
    //       children: List.generate(
    //         AppBarHeaders.values.length,
    //         (index) => CustomHeaderBtn(headerIndex: index),
    //       ),
    //     );
    //   },
    // );
  }
}

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  void message(context, String text) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    final snackBar = SnackBar(
      content: Text(text),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  List<PlutoMenuItem> _makeMenus(BuildContext context) {
    return [
      PlutoMenuItem(
        title: 'Menu 1',
        icon: Icons.home,
        children: [
          PlutoMenuItem(
            title: 'Menu 1-1',
            icon: Icons.group,
            onTap: () => message(context, 'Menu 1-1 tap'),
            children: [
              PlutoMenuItem(
                title: 'Menu 1-1-1',
                onTap: () => message(context, 'Menu 1-1-1 tap'),
                children: [
                  PlutoMenuItem(
                    title: 'Menu 1-1-1-1',
                    onTap: () => message(context, 'Menu 1-1-1-1 tap'),
                  ),
                  PlutoMenuItem(
                    title: 'Menu 1-1-1-2',
                    onTap: () => message(context, 'Menu 1-1-1-2 tap'),
                  ),
                ],
              ),
              PlutoMenuItem(
                title: 'Menu 1-1-2',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
            ],
          ),
          PlutoMenuItem(
            title: 'Menu 1-2',
            onTap: () => message(context, 'Menu 1-2 tap'),
          ),
          PlutoMenuItem.divider(height: 10),
          PlutoMenuItem.checkbox(
            title: 'Menu 1-3',
            initialCheckValue: true,
            // onTap: () => message(context, 'Menu 1-3 tap'),
            onChanged: (flag) => print(flag),
          ),
          PlutoMenuItem.divider(height: 10),
          PlutoMenuItem.radio(
            title: 'Menu 1-3',
            initialRadioValue: _RadioItems.one,
            radioItems: _RadioItems.values,
            // onTap: () => message(context, 'Menu 1-3 tap'),
            onChanged: (item) => print(item),
            getTitle: (item) {
              switch (item as _RadioItems) {
                case _RadioItems.one:
                  return 'One';
                case _RadioItems.two:
                  return 'Two';
                case _RadioItems.three:
                  return 'Three';
              }
            },
          ),
          PlutoMenuItem(
            title: 'Menu 1-4',
            icon: Icons.group,
            onTap: () => message(context, 'Menu 1-4 tap'),
            children: [
              PlutoMenuItem(
                title: 'Menu 1-4-1',
                onTap: () => message(context, 'Menu 1-4-1 tap'),
                children: [
                  PlutoMenuItem(
                    title: 'Menu 1-4-1-1',
                    onTap: () => message(context, 'Menu 1-4-1-1 tap'),
                  ),
                  PlutoMenuItem(
                    title: 'Menu 1-4-1-2',
                    onTap: () => message(context, 'Menu 1-4-1-2 tap'),
                  ),
                ],
              ),
              PlutoMenuItem(
                title: 'Menu 1-4-2',
                onTap: () => message(context, 'Menu 1-4-2 tap'),
              ),
            ],
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'Menu 2',
        icon: Icons.add_circle,
        children: [
          PlutoMenuItem(
            title: 'Menu 2-1',
            onTap: () => message(context, 'Menu 2-1 tap'),
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'Menu 3',
        icon: Icons.apps_outlined,
        onTap: () => message(context, 'Menu 3 tap'),
      ),
      PlutoMenuItem(
        title: 'Menu 4',
        onTap: () => message(context, 'Menu 4 tap'),
      ),
      PlutoMenuItem(
        title: 'Menu 5',
        onTap: () => message(context, 'Menu 5 tap'),
      ),
      PlutoMenuItem(
        title: 'Menu 6',
        children: [
          PlutoMenuItem(
            title: 'Menu 6-1',
            onTap: () => message(context, 'Menu 6-1 tap'),
            children: [
              PlutoMenuItem(
                title: 'Menu 6-1-1',
                onTap: () => message(context, 'Menu 6-1-1 tap'),
                children: [
                  PlutoMenuItem(
                    title: 'Menu 6-1-1-1',
                    onTap: () => message(context, 'Menu 6-1-1-1 tap'),
                  ),
                  PlutoMenuItem(
                    title: 'Menu 6-1-1-2',
                    onTap: () => message(context, 'Menu 6-1-1-2 tap'),
                  ),
                ],
              ),
              PlutoMenuItem(
                title: 'Menu 6-1-2',
                onTap: () => message(context, 'Menu 6-1-2 tap'),
              ),
            ],
          ),
          PlutoMenuItem(
            title: 'Menu 6-2',
            onTap: () => message(context, 'Menu 6-2 tap'),
          ),
        ],
      ),
    ];
  }

  Widget getmenu() {
    late final List<PlutoMenuItem> whiteHoverMenus;

    late final List<PlutoMenuItem> orangeHoverMenus;

    late final List<PlutoMenuItem> whiteTapMenus;

    late final List<PlutoMenuItem> orangeTapMenus;
    whiteHoverMenus = _makeMenus(context);
    orangeHoverMenus = _makeMenus(context);
    whiteTapMenus = _makeMenus(context);
    orangeTapMenus = _makeMenus(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Text('Hover-open Menu', style: TextStyle(fontSize: 30)),
          const Text('Works normally in an environment with a mouse.'),
          const SizedBox(height: 30),
          PlutoMenuBar(
            mode: PlutoMenuBarMode.hover,
            menus: whiteHoverMenus,
          ),
          const SizedBox(height: 30),
          PlutoMenuBar(
            mode: PlutoMenuBarMode.hover,
            backgroundColor: Colors.deepOrange,
            itemStyle: const PlutoMenuItemStyle(
              activatedColor: Colors.white,
              indicatorColor: Colors.deepOrange,
              textStyle: TextStyle(color: Colors.white),
              iconColor: Colors.white,
              moreIconColor: Colors.white,
            ),
            menus: orangeHoverMenus,
          ),
          const SizedBox(height: 30),
          const Text('Tap-open Menu', style: TextStyle(fontSize: 30)),
          const SizedBox(height: 30),
          PlutoMenuBar(
            mode: PlutoMenuBarMode.tap,
            menus: whiteTapMenus,
          ),
          const SizedBox(height: 30),
          PlutoMenuBar(
            backgroundColor: Colors.deepOrange,
            itemStyle: const PlutoMenuItemStyle(
              activatedColor: Colors.white,
              indicatorColor: Colors.deepOrange,
              textStyle: TextStyle(color: Colors.white),
              iconColor: Colors.white,
              moreIconColor: Colors.white,
            ),
            menus: orangeTapMenus,
          ),
          const SizedBox(height: 30),
          const Text('Selected top menu', style: TextStyle(fontSize: 30)),
          const SizedBox(height: 30),
          PlutoMenuBar(
            mode: PlutoMenuBarMode.tap,
            itemStyle: const PlutoMenuItemStyle(
              enableSelectedTopMenu: true,
            ),
            menus: [
              PlutoMenuItem(
                title: 'Select1',
                id: 'Select1',
                onTap: () => message(context, 'Select1'),
              ),
              PlutoMenuItem(
                title: 'Select2',
                id: 'Select2',
                onTap: () => message(context, 'Select2'),
              ),
              PlutoMenuItem(
                title: 'Select3',
                id: 'Select3',
                onTap: () => message(context, 'Select3'),
              ),
              PlutoMenuItem(
                title: 'Select4',
                id: 'Select4',
                onTap: () => message(context, 'Select4'),
              ),
              PlutoMenuItem(
                title: 'Select5',
                id: 'Select5',
                onTap: () => message(context, 'Select5'),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Text('Toggled top menu', style: TextStyle(fontSize: 30)),
          const SizedBox(height: 30),
          PlutoMenuBar(
            mode: PlutoMenuBarMode.tap,
            itemStyle: PlutoMenuItemStyle(
              enableSelectedTopMenu: true,
              selectedTopMenuResolver: (menu, enabled) {
                final description = enabled == true ? 'disabled' : 'enabled';
                message(context, '${menu.title} $description');
                return enabled == true ? null : true;
              },
            ),
            menus: [
              PlutoMenuItem(
                title: 'Toggle1',
                id: 'Toggle1',
              ),
              PlutoMenuItem(
                title: 'Toggle2',
                id: 'Toggle2',
              ),
              PlutoMenuItem(
                title: 'Toggle3',
                id: 'Toggle3',
              ),
              PlutoMenuItem(
                title: 'Toggle4',
                id: 'Toggle4',
              ),
              PlutoMenuItem(
                title: 'Toggle5',
                id: 'Toggle5',
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: HorizontalHeaders19(),
    );
    // return Scaffold(
    //   //appBar: AppBar(title: const Text('Page4')),
    //   body: Center(
    //     child: Column(
    //       children: [
    //         Text(
    //           'Page4',
    //           style: TextStyle(fontSize: 30, color: Colors.white),
    //         ),

    //         /*ElevatedButton(
    //              onPressed: (){
    //                Navigator.push(context, MaterialPageRoute(builder: (_)=>Page2());
    //                child: Text('Go page2'),
    //           )*/
    //       ],
    //     ),
    //   ),
    // );
  }
}

class HorizontalHeaders19 extends StatelessWidget {
  const HorizontalHeaders19({super.key});

  void message(context, String text) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    final snackBar = SnackBar(
      content: Text(text),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  List<PlutoMenuItem> _makeMenus(BuildContext context) {
    return [
      PlutoMenuItem(
        title: 'Menu 1',
        icon: Icons.home,
        children: [
          PlutoMenuItem(
            title: 'Menu 1-1',
            icon: Icons.group,
            onTap: () => message(context, 'Menu 1-1 tap'),
            children: [
              PlutoMenuItem(
                title: 'Menu 1-1-1',
                onTap: () => message(context, 'Menu 1-1-1 tap'),
                children: [
                  PlutoMenuItem(
                    title: 'Menu 1-1-1-1',
                    onTap: () => message(context, 'Menu 1-1-1-1 tap'),
                  ),
                  PlutoMenuItem(
                    title: 'Menu 1-1-1-2',
                    onTap: () => message(context, 'Menu 1-1-1-2 tap'),
                  ),
                ],
              ),
              PlutoMenuItem(
                title: 'Menu 1-1-2',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
            ],
          ),
          PlutoMenuItem(
            title: 'Menu 1-2',
            onTap: () => message(context, 'Menu 1-2 tap'),
          ),
          PlutoMenuItem.divider(height: 10),
          PlutoMenuItem.checkbox(
            title: 'Menu 1-3',
            initialCheckValue: true,
            // onTap: () => message(context, 'Menu 1-3 tap'),
            onChanged: (flag) => print(flag),
          ),
          PlutoMenuItem.divider(height: 10),
          PlutoMenuItem.radio(
            title: 'Menu 1-3',
            initialRadioValue: _RadioItems.one,
            radioItems: _RadioItems.values,
            // onTap: () => message(context, 'Menu 1-3 tap'),
            onChanged: (item) => print(item),
            getTitle: (item) {
              switch (item as _RadioItems) {
                case _RadioItems.one:
                  return 'One';
                case _RadioItems.two:
                  return 'Two';
                case _RadioItems.three:
                  return 'Three';
              }
            },
          ),
          PlutoMenuItem(
            title: 'Menu 1-4',
            icon: Icons.group,
            onTap: () => message(context, 'Menu 1-4 tap'),
            children: [
              PlutoMenuItem(
                title: 'Menu 1-4-1',
                onTap: () => message(context, 'Menu 1-4-1 tap'),
                children: [
                  PlutoMenuItem(
                    title: 'Menu 1-4-1-1',
                    onTap: () => message(context, 'Menu 1-4-1-1 tap'),
                  ),
                  PlutoMenuItem(
                    title: 'Menu 1-4-1-2',
                    onTap: () => message(context, 'Menu 1-4-1-2 tap'),
                  ),
                ],
              ),
              PlutoMenuItem(
                title: 'Menu 1-4-2',
                onTap: () => message(context, 'Menu 1-4-2 tap'),
              ),
            ],
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'Menu 2',
        icon: Icons.add_circle,
        children: [
          PlutoMenuItem(
            title: 'Menu 2-1',
            onTap: () => message(context, 'Menu 2-1 tap'),
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'Menu 3',
        icon: Icons.apps_outlined,
        onTap: () => message(context, 'Menu 3 tap'),
      ),
      PlutoMenuItem(
        title: 'Menu 4',
        onTap: () => message(context, 'Menu 4 tap'),
      ),
      PlutoMenuItem(
        title: 'Menu 5',
        onTap: () => message(context, 'Menu 5 tap'),
      ),
      PlutoMenuItem(
        title: 'Menu 6',
        children: [
          PlutoMenuItem(
            title: 'Menu 6-1',
            onTap: () => message(context, 'Menu 6-1 tap'),
            children: [
              PlutoMenuItem(
                title: 'Menu 6-1-1',
                onTap: () => message(context, 'Menu 6-1-1 tap'),
                children: [
                  PlutoMenuItem(
                    title: 'Menu 6-1-1-1',
                    onTap: () => message(context, 'Menu 6-1-1-1 tap'),
                  ),
                  PlutoMenuItem(
                    title: 'Menu 6-1-1-2',
                    onTap: () => message(context, 'Menu 6-1-1-2 tap'),
                  ),
                ],
              ),
              PlutoMenuItem(
                title: 'Menu 6-1-2',
                onTap: () => message(context, 'Menu 6-1-2 tap'),
              ),
            ],
          ),
          PlutoMenuItem(
            title: 'Menu 6-2',
            onTap: () => message(context, 'Menu 6-2 tap'),
          ),
        ],
      ),
    ];
  }

  Widget getmenu(BuildContext context) {
    late final List<PlutoMenuItem> whiteHoverMenus;

    late final List<PlutoMenuItem> orangeHoverMenus;

    late final List<PlutoMenuItem> whiteTapMenus;

    late final List<PlutoMenuItem> orangeTapMenus;
    //whiteHoverMenus = _makeMenus(context);
    orangeHoverMenus = _makeMenus(context);
    // whiteTapMenus = _makeMenus(context);
    // orangeTapMenus = _makeMenus(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          // const SizedBox(height: 30),
          // const Text('Hover-open Menu',
          //     style: TextStyle(fontSize: 30, color: Colors.white)),
          // const Text('Works normally in an environment with a mouse.'),
          // const SizedBox(height: 30),
          // PlutoMenuBar(
          //   mode: PlutoMenuBarMode.hover,
          //   menus: whiteHoverMenus,
          // ),
          //const SizedBox(height: 30),
          PlutoMenuBar(
            mode: PlutoMenuBarMode.hover,
            backgroundColor: AppColors.primaryColor,
            itemStyle: PlutoMenuItemStyle(
              activatedColor: Colors.white,
              indicatorColor: AppColors.primaryColor,
              textStyle: TextStyle(color: Colors.white),
              iconColor: Colors.white,
              moreIconColor: Colors.white,
            ),
            menus: orangeHoverMenus,
          ),
          // const SizedBox(height: 30),
          // const Text('Tap-open Menu',
          //     style: TextStyle(fontSize: 30, color: Colors.white)),
          // const SizedBox(height: 30),
          // PlutoMenuBar(
          //   mode: PlutoMenuBarMode.tap,
          //   menus: whiteTapMenus,
          // ),
          // const SizedBox(height: 30),
          // PlutoMenuBar(
          //   backgroundColor: Colors.deepOrange,
          //   itemStyle: const PlutoMenuItemStyle(
          //     activatedColor: Colors.white,
          //     indicatorColor: Colors.deepOrange,
          //     textStyle: TextStyle(color: Colors.white),
          //     iconColor: Colors.white,
          //     moreIconColor: Colors.white,
          //   ),
          //   menus: orangeTapMenus,
          // ),
          // const SizedBox(height: 30),
          // const Text('Selected top menu',
          //     style: TextStyle(fontSize: 30, color: Colors.white)),
          // const SizedBox(height: 30),
          // PlutoMenuBar(
          //   mode: PlutoMenuBarMode.tap,
          //   itemStyle: const PlutoMenuItemStyle(
          //     enableSelectedTopMenu: true,
          //   ),
          //   menus: [
          //     PlutoMenuItem(
          //       title: 'Select1',
          //       id: 'Select1',
          //       onTap: () => message(context, 'Select1'),
          //     ),
          //     PlutoMenuItem(
          //       title: 'Select2',
          //       id: 'Select2',
          //       onTap: () => message(context, 'Select2'),
          //     ),
          //     PlutoMenuItem(
          //       title: 'Select3',
          //       id: 'Select3',
          //       onTap: () => message(context, 'Select3'),
          //     ),
          //     PlutoMenuItem(
          //       title: 'Select4',
          //       id: 'Select4',
          //       onTap: () => message(context, 'Select4'),
          //     ),
          //     PlutoMenuItem(
          //       title: 'Select5',
          //       id: 'Select5',
          //       onTap: () => message(context, 'Select5'),
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 30),
          // const Text('Toggled top menu',
          //     style: TextStyle(fontSize: 30, color: Colors.white)),
          // const SizedBox(height: 30),
          // PlutoMenuBar(
          //   mode: PlutoMenuBarMode.tap,
          //   itemStyle: PlutoMenuItemStyle(
          //     enableSelectedTopMenu: true,
          //     selectedTopMenuResolver: (menu, enabled) {
          //       final description = enabled == true ? 'disabled' : 'enabled';
          //       message(context, '${menu.title} $description');
          //       return enabled == true ? null : true;
          //     },
          //   ),
          //   menus: [
          //     PlutoMenuItem(
          //       title: 'Toggle1',
          //       id: 'Toggle1',
          //     ),
          //     PlutoMenuItem(
          //       title: 'Toggle2',
          //       id: 'Toggle2',
          //     ),
          //     PlutoMenuItem(
          //       title: 'Toggle3',
          //       id: 'Toggle3',
          //     ),
          //     PlutoMenuItem(
          //       title: 'Toggle4',
          //       id: 'Toggle4',
          //     ),
          //     PlutoMenuItem(
          //       title: 'Toggle5',
          //       id: 'Toggle5',
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 50),
        ],
      ),
    );
  }

  // menuheader
  @override
  Widget build(BuildContext context) {
    return getmenu(context);
    // return Row(
    //   children: [
    //     Text(
    //       "Giới thiệu",
    //       style: TextStyle(color: Colors.white),
    //     ),
    //     Text("Dịch vụ", style: TextStyle(color: Colors.white)),
    //     ElevatedButton.icon(
    //       icon: const Icon(Icons.search),
    //       label: const Text(
    //         'Tìm kiếm',
    //         style: TextStyle(
    //             fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue),
    //       ),
    //       onPressed: () {
    //         // print(_formkey.currentState!.value);
    //         Navigator.pop(context);
    //         Navigator.push(context, MaterialPageRoute(builder: (_) => page4()));
    //       },
    //     ),
    //   ],
    // );
  }
}

class HorizontalHeaders extends StatelessWidget {
  const HorizontalHeaders({super.key});
  void message(context, String text) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    final snackBar = SnackBar(
      content: Text(text),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  List<PlutoMenuItem> _makeMenus(BuildContext context) {
    return [
      PlutoMenuItem(
        title: 'Gặp bác sĩ',
        //icon: Icons.home_mini_sharp,
        children: [
          PlutoMenuItem(
            title: 'Gặp bác sĩ trực tuyến',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Bản đồ phòng khám',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Hướng dẫn viên y tế',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Gặp chuyên gia trực tuyến',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Câu hỏi thường gặp',
            onTap: () => message(context, 'gapbacsi'),
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'Đặt dịch vụ',
        //icon: Icons.home_mini_sharp,
        children: [
          PlutoMenuItem(
            title: 'Gói theo dõi khám thai kỳ',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Gói sanh thiên thần',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Gói phẫu thuật lấy thai',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Gói phẫu thuật phụ khoa',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Gói khám sức khỏe',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Gói khám tại nhà',
            onTap: () => message(context, 'gapbacsi'),
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'Sức khỏe',
        //icon: Icons.home_mini_sharp,
        children: [
          PlutoMenuItem(
            title: 'Sức khỏe phụ nữ',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Sức khỏe nam giới',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Du lịch sức khỏe',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Sức khỏe tinh thần',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Doctor Saigon Market',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Hướng dẫn viên chăm sóc sức khỏe',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Huấn luyện viên da',
            onTap: () => message(context, 'gapbacsi'),
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'Gia đình',
        //icon: Icons.home_mini_sharp,
        children: [
          PlutoMenuItem(
            title: 'Tài khoản gia đình',
            onTap: () => message(context, 'gapbacsi'),
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'Khám công ty',
        //icon: Icons.home_mini_sharp,
        children: [
          PlutoMenuItem(
            title: 'Dịch vụ công ty',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Lợi ích nhân viên',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Khám sức khỏe xin việc',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Khám sức khỏe doanh nghiệp và tiêm chủng',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Sức khỏe nơi làm việc',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Đăng nhập doanh nghiệp',
            onTap: () => message(context, 'gapbacsi'),
          ),
          PlutoMenuItem(
            title: 'Liên hệ chúng tôi',
            onTap: () => message(context, 'gapbacsi'),
          ),
        ],
      ),
    ];
  }

  Widget getmenu(BuildContext context) {
    late final List<PlutoMenuItem> whiteHoverMenus;

    late final List<PlutoMenuItem> orangeHoverMenus;

    late final List<PlutoMenuItem> whiteTapMenus;

    late final List<PlutoMenuItem> orangeTapMenus;
    //whiteHoverMenus = _makeMenus(context);
    orangeHoverMenus = _makeMenus(context);
    // whiteTapMenus = _makeMenus(context);
    // orangeTapMenus = _makeMenus(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          // const SizedBox(height: 30),
          // const Text('Hover-open Menu',
          //     style: TextStyle(fontSize: 30, color: Colors.white)),
          // const Text('Works normally in an environment with a mouse.'),
          // const SizedBox(height: 30),
          // PlutoMenuBar(
          //   mode: PlutoMenuBarMode.hover,
          //   menus: whiteHoverMenus,
          // ),
          //const SizedBox(height: 30),
          PlutoMenuBar(
            mode: PlutoMenuBarMode.hover,
            backgroundColor: AppColors.primaryColor,
            itemStyle: PlutoMenuItemStyle(
              activatedColor: Colors.white,
              indicatorColor: AppColors.primaryColor,
              textStyle: TextStyle(color: Colors.white),
              iconColor: Colors.white,
              moreIconColor: Colors.white,
            ),
            menus: orangeHoverMenus,
          ),
          // const SizedBox(height: 30),
          // const Text('Tap-open Menu',
          //     style: TextStyle(fontSize: 30, color: Colors.white)),
          // const SizedBox(height: 30),
          // PlutoMenuBar(
          //   mode: PlutoMenuBarMode.tap,
          //   menus: whiteTapMenus,
          // ),
          // const SizedBox(height: 30),
          // PlutoMenuBar(
          //   backgroundColor: Colors.deepOrange,
          //   itemStyle: const PlutoMenuItemStyle(
          //     activatedColor: Colors.white,
          //     indicatorColor: Colors.deepOrange,
          //     textStyle: TextStyle(color: Colors.white),
          //     iconColor: Colors.white,
          //     moreIconColor: Colors.white,
          //   ),
          //   menus: orangeTapMenus,
          // ),
          // const SizedBox(height: 30),
          // const Text('Selected top menu',
          //     style: TextStyle(fontSize: 30, color: Colors.white)),
          // const SizedBox(height: 30),
          // PlutoMenuBar(
          //   mode: PlutoMenuBarMode.tap,
          //   itemStyle: const PlutoMenuItemStyle(
          //     enableSelectedTopMenu: true,
          //   ),
          //   menus: [
          //     PlutoMenuItem(
          //       title: 'Select1',
          //       id: 'Select1',
          //       onTap: () => message(context, 'Select1'),
          //     ),
          //     PlutoMenuItem(
          //       title: 'Select2',
          //       id: 'Select2',
          //       onTap: () => message(context, 'Select2'),
          //     ),
          //     PlutoMenuItem(
          //       title: 'Select3',
          //       id: 'Select3',
          //       onTap: () => message(context, 'Select3'),
          //     ),
          //     PlutoMenuItem(
          //       title: 'Select4',
          //       id: 'Select4',
          //       onTap: () => message(context, 'Select4'),
          //     ),
          //     PlutoMenuItem(
          //       title: 'Select5',
          //       id: 'Select5',
          //       onTap: () => message(context, 'Select5'),
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 30),
          // const Text('Toggled top menu',
          //     style: TextStyle(fontSize: 30, color: Colors.white)),
          // const SizedBox(height: 30),
          // PlutoMenuBar(
          //   mode: PlutoMenuBarMode.tap,
          //   itemStyle: PlutoMenuItemStyle(
          //     enableSelectedTopMenu: true,
          //     selectedTopMenuResolver: (menu, enabled) {
          //       final description = enabled == true ? 'disabled' : 'enabled';
          //       message(context, '${menu.title} $description');
          //       return enabled == true ? null : true;
          //     },
          //   ),
          //   menus: [
          //     PlutoMenuItem(
          //       title: 'Toggle1',
          //       id: 'Toggle1',
          //     ),
          //     PlutoMenuItem(
          //       title: 'Toggle2',
          //       id: 'Toggle2',
          //     ),
          //     PlutoMenuItem(
          //       title: 'Toggle3',
          //       id: 'Toggle3',
          //     ),
          //     PlutoMenuItem(
          //       title: 'Toggle4',
          //       id: 'Toggle4',
          //     ),
          //     PlutoMenuItem(
          //       title: 'Toggle5',
          //       id: 'Toggle5',
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 50),
        ],
      ),
    );
  }

  // menuheader
  @override
  Widget build(BuildContext context) {
    bool test = true;
    late final List<PlutoMenuItem> whiteHoverMenus;

    late final List<PlutoMenuItem> orangeHoverMenus;

    late final List<PlutoMenuItem> whiteTapMenus;

    late final List<PlutoMenuItem> orangeTapMenus;
    //whiteHoverMenus = _makeMenus(context);
    orangeHoverMenus = _makeMenus(context);
    if (test) {
      return Center(
        child: Column(
          children: [
            Container(
              width: 800,
              child: PlutoMenuBar(
                mode: PlutoMenuBarMode.hover,
                backgroundColor: Colors.transparent,
                itemStyle: PlutoMenuItemStyle(
                  activatedColor: Colors.white,
                  indicatorColor: AppColors.primaryColor,
                  textStyle: TextStyle(color: Colors.white),
                  iconColor: Colors.white,
                  moreIconColor: Colors.white,
                ),
                menus: orangeHoverMenus,
              ),
            )
          ],
        ),
      );
    } else {
      return Column(
        children: [
          // Text(
          //   "Giới thiệu",
          //   style: TextStyle(color: Colors.white),
          // ),
          // Text("Dịch vụ", style: TextStyle(color: Colors.white)),
          ElevatedButton.icon(
            icon: const Icon(Icons.search),
            label: const Text(
              'Tìm kiếm',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.blue),
            ),
            onPressed: () {
              // print(_formkey.currentState!.value);
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => page4()));
            },
          ),
        ],
      );
    }
  }
}

class PlutoMenuBarDemo extends StatefulWidget {
  const PlutoMenuBarDemo({
    super.key,
  });

  @override
  State<PlutoMenuBarDemo> createState() => _PlutoMenuBarDemoState();
}

class _PlutoMenuBarDemoState extends State<PlutoMenuBarDemo> {
  late final List<PlutoMenuItem> whiteHoverMenus;

  late final List<PlutoMenuItem> orangeHoverMenus;

  late final List<PlutoMenuItem> whiteTapMenus;

  late final List<PlutoMenuItem> orangeTapMenus;

  @override
  void initState() {
    super.initState();

    whiteHoverMenus = _makeMenus(context);
    orangeHoverMenus = _makeMenus(context);
    whiteTapMenus = _makeMenus(context);
    orangeTapMenus = _makeMenus(context);
  }

  void message(context, String text) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    final snackBar = SnackBar(
      content: Text(text),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  List<PlutoMenuItem> _makeMenus(BuildContext context) {
    return [
      PlutoMenuItem(
        title: 'Menu 1',
        icon: Icons.home,
        children: [
          PlutoMenuItem(
            title: 'Menu 1-1',
            icon: Icons.group,
            onTap: () => message(context, 'Menu 1-1 tap'),
            children: [
              PlutoMenuItem(
                title: 'Menu 1-1-1',
                onTap: () => message(context, 'Menu 1-1-1 tap'),
                children: [
                  PlutoMenuItem(
                    title: 'Menu 1-1-1-1',
                    onTap: () => message(context, 'Menu 1-1-1-1 tap'),
                  ),
                  PlutoMenuItem(
                    title: 'Menu 1-1-1-2',
                    onTap: () => message(context, 'Menu 1-1-1-2 tap'),
                  ),
                ],
              ),
              PlutoMenuItem(
                title: 'Menu 1-1-2',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
            ],
          ),
          PlutoMenuItem(
            title: 'Menu 1-2',
            onTap: () => message(context, 'Menu 1-2 tap'),
          ),
          PlutoMenuItem.divider(height: 10),
          PlutoMenuItem.checkbox(
            title: 'Menu 1-3',
            initialCheckValue: true,
            // onTap: () => message(context, 'Menu 1-3 tap'),
            onChanged: (flag) => print(flag),
          ),
          PlutoMenuItem.divider(height: 10),
          PlutoMenuItem.radio(
            title: 'Menu 1-3',
            initialRadioValue: _RadioItems.one,
            radioItems: _RadioItems.values,
            // onTap: () => message(context, 'Menu 1-3 tap'),
            onChanged: (item) => print(item),
            getTitle: (item) {
              switch (item as _RadioItems) {
                case _RadioItems.one:
                  return 'One';
                case _RadioItems.two:
                  return 'Two';
                case _RadioItems.three:
                  return 'Three';
              }
            },
          ),
          PlutoMenuItem(
            title: 'Menu 1-4',
            icon: Icons.group,
            onTap: () => message(context, 'Menu 1-4 tap'),
            children: [
              PlutoMenuItem(
                title: 'Menu 1-4-1',
                onTap: () => message(context, 'Menu 1-4-1 tap'),
                children: [
                  PlutoMenuItem(
                    title: 'Menu 1-4-1-1',
                    onTap: () => message(context, 'Menu 1-4-1-1 tap'),
                  ),
                  PlutoMenuItem(
                    title: 'Menu 1-4-1-2',
                    onTap: () => message(context, 'Menu 1-4-1-2 tap'),
                  ),
                ],
              ),
              PlutoMenuItem(
                title: 'Menu 1-4-2',
                onTap: () => message(context, 'Menu 1-4-2 tap'),
              ),
            ],
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'Menu 2',
        icon: Icons.add_circle,
        children: [
          PlutoMenuItem(
            title: 'Menu 2-1',
            onTap: () => message(context, 'Menu 2-1 tap'),
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'Menu 3',
        icon: Icons.apps_outlined,
        onTap: () => message(context, 'Menu 3 tap'),
      ),
      PlutoMenuItem(
        title: 'Menu 4',
        onTap: () => message(context, 'Menu 4 tap'),
      ),
      PlutoMenuItem(
        title: 'Menu 5',
        onTap: () => message(context, 'Menu 5 tap'),
      ),
      PlutoMenuItem(
        title: 'Menu 6',
        children: [
          PlutoMenuItem(
            title: 'Menu 6-1',
            onTap: () => message(context, 'Menu 6-1 tap'),
            children: [
              PlutoMenuItem(
                title: 'Menu 6-1-1',
                onTap: () => message(context, 'Menu 6-1-1 tap'),
                children: [
                  PlutoMenuItem(
                    title: 'Menu 6-1-1-1',
                    onTap: () => message(context, 'Menu 6-1-1-1 tap'),
                  ),
                  PlutoMenuItem(
                    title: 'Menu 6-1-1-2',
                    onTap: () => message(context, 'Menu 6-1-1-2 tap'),
                  ),
                ],
              ),
              PlutoMenuItem(
                title: 'Menu 6-1-2',
                onTap: () => message(context, 'Menu 6-1-2 tap'),
              ),
            ],
          ),
          PlutoMenuItem(
            title: 'Menu 6-2',
            onTap: () => message(context, 'Menu 6-2 tap'),
          ),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Text('Hover-open Menu', style: TextStyle(fontSize: 30)),
          const Text('Works normally in an environment with a mouse.'),
          const SizedBox(height: 30),
          PlutoMenuBar(
            mode: PlutoMenuBarMode.hover,
            menus: whiteHoverMenus,
          ),
          const SizedBox(height: 30),
          PlutoMenuBar(
            mode: PlutoMenuBarMode.hover,
            backgroundColor: Colors.deepOrange,
            itemStyle: const PlutoMenuItemStyle(
              activatedColor: Colors.white,
              indicatorColor: Colors.deepOrange,
              textStyle: TextStyle(color: Colors.white),
              iconColor: Colors.white,
              moreIconColor: Colors.white,
            ),
            menus: orangeHoverMenus,
          ),
          const SizedBox(height: 30),
          const Text('Tap-open Menu', style: TextStyle(fontSize: 30)),
          const SizedBox(height: 30),
          PlutoMenuBar(
            mode: PlutoMenuBarMode.tap,
            menus: whiteTapMenus,
          ),
          const SizedBox(height: 30),
          PlutoMenuBar(
            backgroundColor: Colors.deepOrange,
            itemStyle: const PlutoMenuItemStyle(
              activatedColor: Colors.white,
              indicatorColor: Colors.deepOrange,
              textStyle: TextStyle(color: Colors.white),
              iconColor: Colors.white,
              moreIconColor: Colors.white,
            ),
            menus: orangeTapMenus,
          ),
          const SizedBox(height: 30),
          const Text('Selected top menu', style: TextStyle(fontSize: 30)),
          const SizedBox(height: 30),
          PlutoMenuBar(
            mode: PlutoMenuBarMode.tap,
            itemStyle: const PlutoMenuItemStyle(
              enableSelectedTopMenu: true,
            ),
            menus: [
              PlutoMenuItem(
                title: 'Select1',
                id: 'Select1',
                onTap: () => message(context, 'Select1'),
              ),
              PlutoMenuItem(
                title: 'Select2',
                id: 'Select2',
                onTap: () => message(context, 'Select2'),
              ),
              PlutoMenuItem(
                title: 'Select3',
                id: 'Select3',
                onTap: () => message(context, 'Select3'),
              ),
              PlutoMenuItem(
                title: 'Select4',
                id: 'Select4',
                onTap: () => message(context, 'Select4'),
              ),
              PlutoMenuItem(
                title: 'Select5',
                id: 'Select5',
                onTap: () => message(context, 'Select5'),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Text('Toggled top menu', style: TextStyle(fontSize: 30)),
          const SizedBox(height: 30),
          PlutoMenuBar(
            mode: PlutoMenuBarMode.tap,
            itemStyle: PlutoMenuItemStyle(
              enableSelectedTopMenu: true,
              selectedTopMenuResolver: (menu, enabled) {
                final description = enabled == true ? 'disabled' : 'enabled';
                message(context, '${menu.title} $description');
                return enabled == true ? null : true;
              },
            ),
            menus: [
              PlutoMenuItem(
                title: 'Toggle1',
                id: 'Toggle1',
              ),
              PlutoMenuItem(
                title: 'Toggle2',
                id: 'Toggle2',
              ),
              PlutoMenuItem(
                title: 'Toggle3',
                id: 'Toggle3',
              ),
              PlutoMenuItem(
                title: 'Toggle4',
                id: 'Toggle4',
              ),
              PlutoMenuItem(
                title: 'Toggle5',
                id: 'Toggle5',
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

enum _RadioItems {
  one,
  two,
  three,
}
