import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:task/screen/raw_table.dart';
import 'package:task/screen/table.dart';
import 'package:task/utls/const.dart';
import 'package:task/utls/widgets.dart';

class ExpandableItemDrawer extends StatefulWidget {
  const ExpandableItemDrawer({super.key});

  @override
  State<ExpandableItemDrawer> createState() => _ExpandableItemDrawerState();
}

class _ExpandableItemDrawerState extends State<ExpandableItemDrawer> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
            padding: EdgeInsets.all(16),
            color: kMainColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_box_rounded,
                  color: kWhite,
                ),
                SizedBox(width: 10),
                HeadingText('Pay the balance'),
              ],
            )),
        key: _scaffoldKey,
        drawerScrimColor: kMainColor.withOpacity(.5),
        drawer: Drawer(

            // backgroundColor: Colors.transparent,
            // elevation: 0,
            child: SafeArea(
          child: Column(
            children: [
              Stack(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      color: kMainColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () => _scaffoldKey.currentState!.closeDrawer(),
                          child: SvgPicture.asset(
                            'assets/icons/close.svg',
                            height: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 115,
                      decoration: BoxDecoration(
                          // color: Color(0xffC9ECE3),
                          gradient: LinearGradient(
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight,
                              colors: [
                                Color(0xffC9ECE3).withOpacity(.12),
                                Color(0xFF10AB83).withOpacity(.64),
                              ],
                              stops: [
                                1,
                                1,
                              ]),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(80),
                            bottomRight: Radius.circular(12),
                          )),
                      width: 147,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 115,
                      width: 90,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight,
                              colors: [
                                Color(0xffC9ECE3).withOpacity(.15),
                                Color(0xFF10AB83).withOpacity(.15),
                              ],
                              stops: [
                                1,
                                1,
                              ]),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(90),
                            bottomRight: Radius.circular(12),
                          )),
                    ),
                  ),
                  Positioned(
                      left: 16,
                      bottom: 16,
                      child: HeadingText(
                        'Demo Limited Company',
                        fs: 18,
                      )),
                ],
              ),
              const SizedBox(height: 16),
              ExpansionTileTheme(
                data: ExpansionTileThemeData(
                  backgroundColor: selected ? Colors.transparent : kHoverColor,
                  // childrenPadding: EdgeInsets.all(0)

                  // collapsedBackgroundColor: kHoverColor,
                ),
                child: ExpansionTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/cart.svg',
                        color: selected ? Colors.black45 : kMainColor,
                      ),
                    ),
                    // collapsedBackgroundColor: Colors.red,
                    // backgroundColor: Colors.red,
                    // initiallyExpanded: true,
                    onExpansionChanged: (value) {
                      selected = !selected;
                      setState(() {});
                    },
                    title: SubtitleText14(
                      'Purchase',
                      clr: selected ? Colors.black45 : kMainColor,
                    ),
                    children: List.generate(
                      4,
                      (index) => Container(
                        padding: EdgeInsets.only(left: 55),
                        color: kWhite,
                        child: ListTileTheme(
                          selectedColor: kMainColor,
                          child: ListTile(
                            title: SubtitleText14(
                              'Purchase List',
                              clr: kMainColor,
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
              ExpansionTileTheme(
                data: ExpansionTileThemeData(
                  backgroundColor: selected ? Colors.transparent : kHoverColor,
                  // childrenPadding: EdgeInsets.all(0)

                  // collapsedBackgroundColor: kHoverColor,
                ),
                child: ExpansionTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/shop.svg',
                        color: selected ? Colors.black45 : kMainColor,
                      ),
                    ),
                    // collapsedBackgroundColor: Colors.red,
                    // backgroundColor: Colors.red,
                    // initiallyExpanded: true,
                    onExpansionChanged: (value) {
                      selected = !selected;
                      setState(() {});
                    },
                    title: SubtitleText14(
                      'Purchase',
                      clr: selected ? Colors.black45 : kMainColor,
                    ),
                    children: List.generate(
                      4,
                      (index) => Container(
                        padding: EdgeInsets.only(left: 55),
                        color: kWhite,
                        child: ListTileTheme(
                          selectedColor: kMainColor,
                          child: ListTile(
                            title: SubtitleText14(
                              'Purchase List',
                              clr: kMainColor,
                            ),
                          ),
                        ),
                      ),
                    )),
              )
            ],
          ),
        )),
        appBar: AppBar(
          elevation: 0,
          leading: InkWell(
              onTap: () => _scaffoldKey.currentState!.openDrawer(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SvgPicture.asset('assets/icons/menu.svg'),
              )),
          backgroundColor: Color(0xff10AB83),
          title: HeadingText('Table Data'),
          centerTitle: true,
        ),
        body: const TableContent()
        /* Table(
        defaultColumnWidth: FixedColumnWidth(120.0),
        border: TableBorder.all(color: Colors.red),
        children: [],
      ), */
        );
  }

  bool selected = true;
}
