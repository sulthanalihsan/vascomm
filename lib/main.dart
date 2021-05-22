import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_test_vascomm/profile_page.dart';
import 'appstyle.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: Size(375, 812),
    builder: () => MaterialApp(
        title: 'Vascoom Project',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: materialPrimaryColor,
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(primary: primaryColor)),
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: IconThemeData(color: primaryColor))),
        home: App()),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      drawer: DrawerWidget(),
      appBar: AppBar(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                children: [
                  SliderWidget(),
                  SizedBox(height: 40.w),
                  SpecialServiceWidget(),
                  SizedBox(height: 20.w),
                  TrackCheckWidget(),
                  SizedBox(height: 20.w),
                  ProductList(),
                  SizedBox(height: 20.w),
                  HealthServices(),
                  SizedBox(height: 10.w),
                ],
              ),
            ),
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

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      child: Row(
        children: [
          Container(
            width: 55.w,
            height: 1.sh,
            color: primaryColor.withOpacity(0.8),
            child: Column(
              children: [
                SizedBox(height: ScreenUtil().statusBarHeight + 20.w),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: SizedBox(
                    width: 24.r,
                    height: 24.r,
                    child: CircleAvatar(
                      backgroundColor: white,
                      child: Icon(Icons.close),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            height: 1.sh,
            color: white,
            child: Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: ScreenUtil().statusBarHeight + 20.w),
                  Container(
                    margin: EdgeInsets.only(right: 24.w),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                              radius: 30.w,
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: 'Angga  ',
                                    style: AppTextStyle.ralewayBold(
                                        fontSize: 16.sp, color: primaryColor)),
                                TextSpan(
                                    text: 'Praja',
                                    style: AppTextStyle.ralewayMed(
                                        fontSize: 16.sp, color: primaryColor))
                              ]),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 6),
                              padding: const EdgeInsets.all(6),
                              child: Text('Member BBLK ',
                                  style: AppTextStyle.ralewayBold(
                                      fontSize: 14.sp, color: grey4)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: .5.sw,
                    child: ListTile(
                      title: Text('Profile Saya',
                          style: AppTextStyle.ralewayMed(
                              fontSize: 14.sp, color: grey3)),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => ProfilePage()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: .5.sw,
                    child: ListTile(
                      title: Text('Pengaturan',
                          style: AppTextStyle.ralewayMed(
                              fontSize: 14.sp, color: grey3)),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => ProfilePage()));
                      },
                    ),
                  ),
                  Padding(
                    padding:   EdgeInsets.only(left:8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Logout'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red, shape: StadiumBorder()),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class HealthServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Pilih Tipe Layanan Kesehatan Anda',
            style:
                AppTextStyle.ralewayBold(fontSize: 16.sp, color: primaryColor)),
        SizedBox(height: 20),
        Wrap(
          children: [
            Container(
              width: 250.w,
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
                    padding:
                        EdgeInsets.symmetric(vertical: 6.w, horizontal: 20.w),
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
                        'Satuan',
                        style: AppTextStyle.ralewayBold(
                            fontSize: 12.sp, color: primaryColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 6.w, horizontal: 20.w),
                    child: Text(
                      'Paket Pemeriksaan',
                      style: AppTextStyle.ralewayMed(
                          fontSize: 12.sp, color: primaryColor),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: 150.w,
          // padding: EdgeInsets.only(left: 30.w, right: 15.w),
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(16),
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
                width: .6.sw,
                padding: EdgeInsets.all(12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja',
                        style: AppTextStyle.ralewayBold(
                            fontSize: 13.sp, color: primaryColor)),
                    Text('Rp. 1.400.000',
                        style: AppTextStyle.ralewayBold(
                            fontSize: 14.sp, color: Color(0xffFF7200))),
                    Row(
                      children: [
                        Icon(
                          Icons.location_city_sharp,
                          color: primaryColor,
                        ),
                        Text(
                          'Lenmarc Surabaya',
                          style: AppTextStyle.ralewayBold(
                              fontSize: 11.sp, color: Color(0xffbebebe)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: primaryColor),
                        Text(
                          'Dukuh Pakis, Surabaya',
                          style: AppTextStyle.ralewayMed(
                              fontSize: 11.sp, color: Color(0xffbebebe)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(child: Image.asset('assets/img_rs1.png', height: 150.w))
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: 150.w,
          // padding: EdgeInsets.only(left: 30.w, right: 15.w),
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(16),
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
                width: .6.sw,
                padding: EdgeInsets.all(12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja',
                        style: AppTextStyle.ralewayBold(
                            fontSize: 13.sp, color: primaryColor)),
                    Text('Rp. 1.400.000',
                        style: AppTextStyle.ralewayBold(
                            fontSize: 14.sp, color: Color(0xffFF7200))),
                    Row(
                      children: [
                        Icon(
                          Icons.location_city_sharp,
                          color: primaryColor,
                        ),
                        Text(
                          'Lenmarc Surabaya',
                          style: AppTextStyle.ralewayBold(
                              fontSize: 11.sp, color: Color(0xffbebebe)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: primaryColor),
                        Text(
                          'Dukuh Pakis, Surabaya',
                          style: AppTextStyle.ralewayMed(
                              fontSize: 11.sp, color: Color(0xffbebebe)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(child: Image.asset('assets/img_res2.png', height: 150.w))
            ],
          ),
        ),
        SizedBox(height: 15),
        Image.asset('assets/load_more.png')
      ],
    );
  }
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 40.w,
              child: MaterialButton(
                child: SvgPicture.asset('assets/Group.svg'),
                shape: CircleBorder(),
                color: white,
                onPressed: () {},
              ),
            ),
            SizedBox(width: 30.w),
            Expanded(
              child: Container(
                height: 40.w,
                padding: EdgeInsets.only(left: 30.w, right: 15.w),
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffBEBEBE).withOpacity(.24),
                          offset: Offset(0, 16),
                          spreadRadius: 0,
                          blurRadius: 24)
                    ]),
                child: Row(
                  children: [
                    Text('Pencarian',
                        style: AppTextStyle.ralewayMed(
                            fontSize: 12.sp, color: grey3)),
                    Spacer(),
                    Icon(Icons.search, size: 25.w, color: primaryColor),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 15.w),
        SizedBox(
          height: 50.w,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(3, (index) {
              final categories = [
                'All Product',
                'Layanan Kesehatan',
                'Alat Kesehatan'
              ];

              return Row(
                children: [
                  Container(
                    height: 30.w,
                    margin: EdgeInsets.only(left: 20.w),
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    decoration: BoxDecoration(
                        color: index == 0 ? primaryColor : white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffBEBEBE).withOpacity(.24),
                              offset: Offset(0, 5),
                              spreadRadius: 4,
                              blurRadius: 20)
                        ]),
                    child: Center(
                        child: Text(
                      categories[index],
                      style: AppTextStyle.ralewayMed(
                          fontSize: 12.sp,
                          color: index == 0 ? white : primaryColor),
                    )),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 160.w,
              height: 176.h,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffBEBEBE).withOpacity(.16),
                        offset: Offset(0, 16),
                        spreadRadius: 0,
                        blurRadius: 24)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Spacer(),
                      Icon(Icons.star, color: Colors.yellow),
                      Text(
                        '5',
                        style: AppTextStyle.ralewayBold(
                            fontSize: 14.sp, color: grey4),
                      )
                    ],
                  ),
                  Center(child: Image.asset('assets/img_mikroskop.png')),
                  SizedBox(height: 10),
                  Text('Suntik Steril',
                      style: AppTextStyle.ralewayBold(
                          fontSize: 12.sp, color: primaryColor)),
                  Row(
                    children: [
                      Text('Rp. 10.000',
                          style: AppTextStyle.ralewayBold(
                              fontSize: 14.sp, color: Color(0xffFF7200))),
                      Spacer(),
                      Container(
                        width: 60.w,
                        height: 20.w,
                        child: Center(
                          child: Text('Ready Stok',
                              style: AppTextStyle.ralewayMed(
                                  fontSize: 10.sp, color: Color(0xff007025))),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xffB3FFCB),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xffBEBEBE).withOpacity(.16),
                                  offset: Offset(0, 16),
                                  spreadRadius: 0,
                                  blurRadius: 24)
                            ]),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 160.w,
              height: 176.h,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffBEBEBE).withOpacity(.16),
                        offset: Offset(0, 16),
                        spreadRadius: 0,
                        blurRadius: 24)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Spacer(),
                      Icon(Icons.star, color: Colors.yellow),
                      Text(
                        '5',
                        style: AppTextStyle.ralewayBold(
                            fontSize: 14.sp, color: grey4),
                      )
                    ],
                  ),
                  Center(child: Image.asset('assets/img_mikroskop.png')),
                  SizedBox(height: 10),
                  Text('Suntik Steril',
                      style: AppTextStyle.ralewayBold(
                          fontSize: 12.sp, color: primaryColor)),
                  Row(
                    children: [
                      Text('Rp. 10.000',
                          style: AppTextStyle.ralewayBold(
                              fontSize: 14.sp, color: Color(0xffFF7200))),
                      Spacer(),
                      Container(
                        width: 60.w,
                        height: 20.w,
                        child: Center(
                          child: Text('Ready Stok',
                              style: AppTextStyle.ralewayMed(
                                  fontSize: 10.sp, color: Color(0xff007025))),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xffB3FFCB),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xffBEBEBE).withOpacity(.16),
                                  offset: Offset(0, 16),
                                  spreadRadius: 0,
                                  blurRadius: 24)
                            ]),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class TrackCheckWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 120.w,
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(16.w),
            boxShadow: [
              BoxShadow(
                  color: Color(0xffBEBEBE).withOpacity(.16),
                  offset: Offset(0, 16),
                  spreadRadius: 0,
                  blurRadius: 24),
            ]),
        child: Row(
          children: [
            SvgPicture.asset('assets/vect_search.svg', width: 80.w),
            SizedBox(width: 24.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Track Pemeriksaan',
                      style: AppTextStyle.ralewayBold(
                          fontSize: 16.sp, color: primaryColor)),
                  SizedBox(height: 6.w),
                  SizedBox(
                    width: .6.sw,
                    child: Text(
                      'Kamu dapat mengecek progress pemeriksaanmu disini',
                      style:
                          AppTextStyle.ralewayReg(fontSize: 11.sp, color: grey3)
                              .copyWith(height: 1.3),
                    ),
                  ),
                  SizedBox(height: 16.w),
                  Row(
                    children: [
                      Text('Track',
                          style: AppTextStyle.ralewayBold(
                              fontSize: 13.sp, color: primaryColor)),
                      SizedBox(width: 10.w),
                      SvgPicture.asset('assets/ic_arrow_right.svg')
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class SpecialServiceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            width: double.infinity,
            height: 137.w,
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(16.w),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xffBEBEBE).withOpacity(.16),
                      offset: Offset(0, 16),
                      spreadRadius: 0,
                      blurRadius: 24),
                ]),
            child: SizedBox(
              width: 173.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Layanan Khusus',
                      style: AppTextStyle.ralewayBold(
                          fontSize: 16.sp, color: primaryColor)),
                  SizedBox(height: 6.w),
                  SizedBox(
                    width: .6.sw,
                    child: Text(
                      'Tes Covid 19, Cegah Corona Sedini Mungkin',
                      style:
                          AppTextStyle.ralewayReg(fontSize: 11.sp, color: grey3)
                              .copyWith(height: 1.3),
                    ),
                  ),
                  SizedBox(height: 16.w),
                  Row(
                    children: [
                      Text('Daftar Tes',
                          style: AppTextStyle.ralewayBold(
                              fontSize: 13.sp, color: primaryColor)),
                      SizedBox(width: 10.w),
                      SvgPicture.asset('assets/ic_arrow_right.svg')
                    ],
                  ),
                ],
              ),
            )),
        Positioned(
            top: -25.w,
            right: 16.w,
            child: SvgPicture.asset('assets/vect_vaccine.svg'))
      ],
    );
  }
}

class SliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          // height: 131.w,
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(16.w),
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                stops: [0.1, 0.6],
                colors: <Color>[
                  Color(0xffc9f0ef),
                  white,
                ], // red to yellow
              ),
              boxShadow: [
                BoxShadow(
                    color: primaryColor.withOpacity(0.1),
                    offset: Offset(0, 8),
                    spreadRadius: 6,
                    blurRadius: 15),
              ]),
          child: SizedBox(
            width: .5.sw,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text.rich(
                  TextSpan(
                    style:
                        AppTextStyle.ralewayMed(fontSize: 12.sp, color: grey4),
                    children: [
                      TextSpan(
                          text: 'Solusi,',
                          style: AppTextStyle.ralewayMed(
                              fontSize: 16.sp, color: primaryColor)),
                      TextSpan(
                        text: ' Kesehatan Anda ',
                        style: AppTextStyle.ralewayBold(
                            fontSize: 16.sp, color: primaryColor),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6.w),
                SizedBox(
                  width: .6.sw,
                  child: Text(
                    'Update informasi seputar kesehatan semua bisa disini !',
                    style:
                        AppTextStyle.ralewayReg(fontSize: 11.sp, color: grey3)
                            .copyWith(height: 1.3),
                  ),
                ),
                SizedBox(height: 8.w),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Selengkapnya'),
                      style: ElevatedButton.styleFrom(
                          elevation: 10,
                          shadowColor: Color(0xffc9f0ef),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          textStyle: AppTextStyle.ralewayBold(fontSize: 12.sp)),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        5,
                        (index) => Container(
                          margin: EdgeInsets.only(top: 15, right: 5),
                          width: index == 0 ? 40.w : 8.w,
                          height: 8.w,
                          decoration: BoxDecoration(
                              borderRadius:
                                  index == 0 ? BorderRadius.circular(5) : null,
                              shape: index == 0
                                  ? BoxShape.rectangle
                                  : BoxShape.circle,
                              color: white),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: -20.w,
            right: -10.w,
            child: SvgPicture.asset(
              'assets/vect_callendar.svg',
              height: 150.h,
            )),
      ],
    );
  }
}
