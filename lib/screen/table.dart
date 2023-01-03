import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:task/utls/const.dart';
import 'package:task/utls/widgets.dart';

class TableContent extends StatelessWidget {
  const TableContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: kMainColor)),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(width: 1, color: kMainColor))),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          width: double.infinity,
                          height: 50,
                          color: kMainColor,
                          child: HeadingText('Purchase'),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          width: double.infinity,
                          height: 50,
                          color: kHoverColor.withOpacity(.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: SubtitleText12(
                                        'Invoice Date :',
                                        fw: FontWeight.w400,
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: SubtitleText12(
                                        '01 January 2022',
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: SubtitleText12(
                                        'Invoice No. :',
                                        fw: FontWeight.w400,
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: SubtitleText12(
                                        '5386328',
                                      )),
                                ],
                              ),

                              // SubtitleText12('Purchase'),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  top:
                                      BorderSide(width: 1, color: kMainColor))),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                                width: 1, color: kMainColor))),
                                    child: Column(
                                        children: List.generate(
                                      5,
                                      (index) => const ListTile(
                                        title:
                                            SubtitleText12('Test product 01'),
                                        subtitle: SubtitleText12(
                                          '200 pcs x 200',
                                          fw: FontWeight.w400,
                                        ),
                                      ),
                                    )),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Column(
                                        children: List.generate(
                                      5,
                                      (index) => ListTile(
                                        subtitle: Align(
                                          alignment: Alignment.centerRight,
                                          child: SubtitleText12(
                                            '\$40000',
                                            clr: kBlack,
                                          ),
                                        ),
                                      ),
                                    )),
                                  )),
                            ],
                          ),
                        ),
                        Divider(
                          color: kMainColor,
                          thickness: 1,
                          height: 0,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          right: BorderSide(
                                              width: 1, color: kMainColor))),
                                  child: const ListTile(
                                    title: SubtitleText12('DIscount'),
                                    subtitle: SubtitleText12(
                                      'Vat',
                                      // fw: FontWeight.w400,
                                    ),
                                  ),
                                )),
                            const Expanded(
                                flex: 2,
                                child: ListTile(
                                  title: Align(
                                      alignment: Alignment.centerRight,
                                      child: SubtitleText12('\$ 0')),
                                  subtitle: Align(
                                    alignment: Alignment.centerRight,
                                    child: SubtitleText12(
                                      '\$ 0',
                                      // fw: FontWeight.w400,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        Divider(
                          color: kMainColor,
                          thickness: 1,
                          height: 0,
                        ),
                        CustomTable(
                          total1: '0',
                          total2: '0',
                          t1: 'Grand Total',
                          t2: 'Previous Due',
                        ),
                        Divider(
                          color: kMainColor,
                          thickness: 1,
                          height: 0,
                        ),
                        CustomTable(
                          total1: '0',
                          total2: '0',
                          t1: 'Total Amount',
                          t2: 'Total Payment',
                        ),
                        Divider(
                          color: kMainColor,
                          thickness: 1,
                          height: 0,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: SubtitleText14(
                                    'ROY',
                                    clr: kBlack,
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: SubtitleText12(
                                      '\$0',
                                      // clr: kBlack,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Center(
                        child: Column(
                          children: [
                            SubtitleText12(
                              'Due',
                              clr: kBlack,
                              fw: FontWeight.w500,
                            ),
                            SizedBox(height: 5),
                            SubtitleText12(
                              '\$2000',
                              clr: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 0, bottom: 16, right: 16, left: 16),
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: kMainColor)),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(width: 1, color: kMainColor))),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          width: double.infinity,
                          height: 50,
                          color: kMainColor,
                          child: HeadingText('Purchase'),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          width: double.infinity,
                          height: 50,
                          color: kHoverColor.withOpacity(.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: SubtitleText12(
                                        'Invoice Date :',
                                        fw: FontWeight.w400,
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: SubtitleText12(
                                        '01 January 2022',
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: SubtitleText12(
                                        'Invoice No. :',
                                        fw: FontWeight.w400,
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: SubtitleText12(
                                        '5386328',
                                      )),
                                ],
                              ),

                              // SubtitleText12('Purchase'),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  top:
                                      BorderSide(width: 1, color: kMainColor))),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                                width: 1, color: kMainColor))),
                                    child: Column(
                                        children: List.generate(
                                      5,
                                      (index) => const ListTile(
                                        title:
                                            SubtitleText12('Test product 01'),
                                        subtitle: SubtitleText12(
                                          '200 pcs x 200',
                                          fw: FontWeight.w400,
                                        ),
                                      ),
                                    )),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Column(
                                        children: List.generate(
                                      5,
                                      (index) => ListTile(
                                        subtitle: Align(
                                          alignment: Alignment.centerRight,
                                          child: SubtitleText12(
                                            '\$40000',
                                            clr: kBlack,
                                          ),
                                        ),
                                      ),
                                    )),
                                  )),
                            ],
                          ),
                        ),
                        Divider(
                          color: kMainColor,
                          thickness: 1,
                          height: 0,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          right: BorderSide(
                                              width: 1, color: kMainColor))),
                                  child: const ListTile(
                                    title: SubtitleText12('DIscount'),
                                    subtitle: SubtitleText12(
                                      'Vat',
                                      // fw: FontWeight.w400,
                                    ),
                                  ),
                                )),
                            const Expanded(
                                flex: 2,
                                child: ListTile(
                                  title: Align(
                                      alignment: Alignment.centerRight,
                                      child: SubtitleText12('\$ 0')),
                                  subtitle: Align(
                                    alignment: Alignment.centerRight,
                                    child: SubtitleText12(
                                      '\$ 0',
                                      // fw: FontWeight.w400,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        Divider(
                          color: kMainColor,
                          thickness: 1,
                          height: 0,
                        ),
                        CustomTable(
                          total1: '0',
                          total2: '0',
                          t1: 'Grand Total',
                          t2: 'Previous Due',
                        ),
                        Divider(
                          color: kMainColor,
                          thickness: 1,
                          height: 0,
                        ),
                        CustomTable(
                          total1: '0',
                          total2: '0',
                          t1: 'Total Amount',
                          t2: 'Total Payment',
                        ),
                        Divider(
                          color: kMainColor,
                          thickness: 1,
                          height: 0,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: SubtitleText14(
                                    'ROY',
                                    clr: kBlack,
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: SubtitleText12(
                                      '\$0',
                                      // clr: kBlack,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Center(
                        child: Column(
                          children: [
                            SubtitleText12(
                              'Due',
                              clr: kBlack,
                              fw: FontWeight.w500,
                            ),
                            SizedBox(height: 5),
                            SubtitleText12(
                              '\$2000',
                              clr: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CustomTable extends StatelessWidget {
  const CustomTable({
    Key? key,
    required this.total1,
    required this.total2,
    required this.t1,
    required this.t2,
  }) : super(key: key);
  final String total1;
  final String total2;
  final String t1, t2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border(right: BorderSide(width: 1, color: kMainColor))),
              child: ListTile(
                title: SubtitleText12(t1.toString()),
                subtitle: SubtitleText12(
                  t2.toString(),
                  // fw: FontWeight.w400,
                ),
              ),
            )),
        Expanded(
            flex: 2,
            child: ListTile(
              title: Align(
                  alignment: Alignment.centerRight,
                  child: SubtitleText12('\$ ${total1}')),
              subtitle: Align(
                alignment: Alignment.centerRight,
                child: SubtitleText12(
                  '\$ ${total2}',
                  // fw: FontWeight.w400,
                ),
              ),
            )),
      ],
    );
  }
}
