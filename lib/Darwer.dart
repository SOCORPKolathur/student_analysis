import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jkserp/Dashboard.dart';
import 'package:jkserp/studentlist.dart';

import 'package:sidebarx/sidebarx.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import 'Branch.dart';

class Drawercus extends StatefulWidget {
  const Drawercus({Key? key}) : super(key: key);

  @override
  State<Drawercus> createState() => _DrawercusState();
}

class _DrawercusState extends State<Drawercus> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return ScaffoldGradientBackground(
      gradient:RadialGradient(
        colors: [
          Color(0xFF2D2D6D),
          Color(0xFF090522) ,
        ],

      ),
      key: _key,
      appBar: AppBar(
        backgroundColor: canvasColor,
        title: Text("JSKFI  ERP"),
        leading: IconButton(
          onPressed: () {
            // if (!Platform.isAndroid && !Platform.isIOS) {
            //   _controller.setExtended(true);
            // }
            _key.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
      ),

      drawer: ExampleSidebarX(controller: _controller),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ExampleSidebarX(controller: _controller),
          ),
          Expanded(
            child: Center(
              child: _ScreensExample(
                controller: _controller,
              ),
            ),
          ),
        ],
      ),
    );

  }
}

class ExampleSidebarX extends StatelessWidget {
  const ExampleSidebarX({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.white54
          )
        ),
        hoverColor: scaffoldBackgroundColor,
        textStyle: GoogleFonts.poppins(fontWeight:FontWeight.w500,color: Colors.white.withOpacity(0.7)),
        selectedTextStyle: GoogleFonts.poppins(fontWeight:FontWeight.w500,color: Colors.white.withOpacity(0.7)),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: canvasColor),

        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: actionColor.withOpacity(0.37),
          ),
          gradient:  LinearGradient(
            colors: [accentCanvasColor, canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme:  SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.circular(20)
        ),
      ),

      items: [

        SidebarXItem(
          icon: Icons.dashboard,
          label: 'Dash Board',
          onTap: () {
            debugPrint('Home');
          },
        ),
        const SidebarXItem(
          icon: Icons.people,
          label: 'Students',
        ),
        const SidebarXItem(
          icon: Icons.place,
          label: 'Branches',
        ),
        const SidebarXItem(
          icon: Icons.sticky_note_2_outlined,
          label: 'Attendance',
        ),
        const SidebarXItem(
          icon: Icons.monetization_on_outlined,
          label: 'Accounts',
        ),
        const SidebarXItem(
          icon: Icons.settings,
          label: 'Setting',
        ),

      ],
    );
  }
}

class _ScreensExample extends StatelessWidget {
  const _ScreensExample({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final pageTitle = _getTitleByIndex(controller.selectedIndex);
        switch (controller.selectedIndex) {

          case 0:
            return Dashboard();
          case 1:
            return Student();
          case 2:
            return Branchs();
          case 3:
            return Container();
          case 4:
            return Container();
          case 5:
            return Container();
          case 6:
            return Container();


          default:
            return Text(
              pageTitle,
              style: theme.textTheme.headline5,
            );
        }
      },
    );
  }
}

String _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Home';
    case 1:
      return 'Search';
    case 2:
      return 'People';
    case 3:
      return 'Favorites';
    case 4:
      return 'Custom iconWidget';
    case 5:
      return 'index 5';
    default:
      return 'Not found page';
  }
}

final primaryColor = Color(0xFFE7E7E7).withOpacity(0.32);
final canvasColor = Color(0xFFE7E7E7).withOpacity(0.32);
final scaffoldBackgroundColor = Color(0xFFE7E7E7).withOpacity(0.32);
final accentCanvasColor = Color(0xFFE7E7E7).withOpacity(0.32);
const white = Colors.white;
final actionColor = const Color(0xFFFFFFFF).withOpacity(0.6);