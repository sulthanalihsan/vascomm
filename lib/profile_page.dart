import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'appstyle.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey6,
      appBar: AppBar(
        title: Text('Profile Page',
            style:
                AppTextStyle.ralewayBold(fontSize: 16.sp, color: primaryColor)),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/ic_cart.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/ic_bell.svg'),
            onPressed: () {},
          )
        ],
      ),
      body: SizedBox(
        width: 1.sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 45.w,
                  padding: EdgeInsets.all(4.w),
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xffBEBEBE).withOpacity(.24),
                            offset: Offset(0, 16),
                            spreadRadius: 0,
                            blurRadius: 24)
                      ]),
                  child: Row(
                    children: [
                      Container(
                        height: 40.w,
                        padding: EdgeInsets.symmetric(
                            vertical: 6.w, horizontal: 20.w),
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xffBEBEBE).withOpacity(.24),
                                  offset: Offset(0, 16),
                                  spreadRadius: 0,
                                  blurRadius: 24)
                            ]),
                        child: Center(
                          child: Text(
                            'Profile',
                            style: AppTextStyle.ralewayBold(
                                fontSize: 12.sp, color: primaryColor),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 6.w, horizontal: 20.w),
                        child: Text(
                          'Pengaturan',
                          style: AppTextStyle.ralewayMed(
                              fontSize: 12.sp, color: primaryColor),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            // Stack(
            //   children: [
            //     SizedBox(
            //         width: 1.sw,
            //         child: SvgPicture.asset(
            //           'assets/member_card.svg',
            //           fit: BoxFit.fitHeight,
            //         )),
            //     Container(
            //       margin: EdgeInsets.symmetric(horizontal: 24.w),
            //       child: Row(
            //         children: [
            //           GestureDetector(
            //             onTap: () {},
            //             child: CircleAvatar(
            //                 radius: 30.w,
            //                 backgroundImage: NetworkImage(
            //                     'https://www.kirkham-legal.co.uk/wp-content/uploads/2017/02/profile-placeholder-250x250.png')),
            //           ),
            //           const SizedBox(width: 20),
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               RichText(
            //                 text: TextSpan(children: [
            //                   TextSpan(
            //                       text: 'Angga Praja',
            //                       style: AppTextStyle.ralewayBold(
            //                           fontSize: 16.sp, color: primaryColor)),
            //                   TextSpan(
            //                       text: 'Praja',
            //                       style: AppTextStyle.ralewayBold(
            //                           fontSize: 16.sp, color: primaryColor))
            //                 ]),
            //               ),
            //               Container(
            //                 margin: const EdgeInsets.only(top: 6),
            //                 padding: const EdgeInsets.all(6),
            //                 child: Text('Saldo ',
            //                     style: AppTextStyle.ralewayBold(
            //                         fontSize: 16.sp, color: primaryColor)),
            //               )
            //             ],
            //           ),
            //         ],
            //       ),
            //     )
            //   ],
            // ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/bg.png'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: .6.sw,
                      child: Text('Ingin mendapat update dari kami ?',
                          style: AppTextStyle.ralewayBold(
                              fontSize: 14.sp, color: white)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Text('Dapatkan\nnotifikasi',
                              textAlign: TextAlign.right,
                              style: AppTextStyle.ralewayMed(
                                  fontSize: 13.sp, color: white)),
                          SizedBox(width: 15),
                          SvgPicture.asset('assets/ic_arrow_right.svg',
                              color: white)
                        ],
                      ),
                    )
                  ],
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
