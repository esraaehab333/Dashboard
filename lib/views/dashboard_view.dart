import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/views/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/views/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
            elevation: 0,
            backgroundColor:const Color(0xfffafafa) ,
              leading:IconButton(
                onPressed: (){
                  scaffoldkey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),),
            )
          : null,
      backgroundColor: const Color(0xfff7f9fa),
      drawer:  MediaQuery.sizeOf(context).width < SizeConfig.tablet ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDektopLayout(),
      ),
    );
  }
}
