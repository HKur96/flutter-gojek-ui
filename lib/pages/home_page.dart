import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek_ui/datas/icon_data.dart';
import 'package:gojek_ui/datas/news_data.dart';
import 'package:gojek_ui/datas/transaction_history_data.dart';
import 'package:gojek_ui/theme.dart';
import 'package:gojek_ui/widgets/header_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: const HeaderWidget(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 23),
          child: Column(
            children: [
              _buildSearch(),
              _buildGopay(),
              _buildMainIcons(context),
              _buildGOClub(),
              _buildFastAccess(),
              _buildGOPaylater(),
              _buildNews(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearch() => Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              margin: const EdgeInsets.only(right: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color(0xffE8E8E8),
                  ),
                  color: const Color(0xffFAFAFA)),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    color: dark1,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Cari layanan, makanan, & tujuan',
                    style: regular14.copyWith(color: dark3),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 35,
            height: 35,
            child: Stack(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/Avatar.png',
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 16,
                    height: 16,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: dark4,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/star.svg',
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  Widget _buildGopay() => Container(
        height: 96,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 10, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: blue1,
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 2,
                  height: 8,
                  margin: const EdgeInsets.only(bottom: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xffBBBBBB),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  width: 2,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 18),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 11,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(8),
                      ),
                      color: Color(0xff9CCDDB),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 68,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 8,
                    ),
                    margin: const EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/icons/gopay.png',
                          width: 57,
                        ),
                        Text(
                          'Rp99.999',
                          style: bold16,
                        ),
                        Text(
                          'Klik & cek riwayat',
                          style: semibold12_5.copyWith(
                            color: green2,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...gGopayIcons.map(
                    (gopay) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          margin: const EdgeInsets.only(bottom: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/${gopay.icon}.svg',
                            color: blue1,
                            height: 27,
                          ),
                        ),
                        Text(
                          gopay.title,
                          style: semibold14.copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget _buildMainIcons(BuildContext context) => Container(
        height: 170,
        margin: const EdgeInsets.only(top: 32),
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          crossAxisSpacing: MediaQuery.of(context).size.width / 10,
          mainAxisSpacing: MediaQuery.of(context).size.width / 15,
          children: [
            ...gMenuIcons.map(
              (icon) => Column(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: icon.background,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/${icon.icon}.svg',
                      color: icon.iconColor,
                    ),
                  ),
                  Text(
                    icon.title,
                    style: regular12_5.copyWith(color: dark2),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _buildGOClub() => Container(
        width: double.infinity,
        height: 65,
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color(0xffE8E8E8),
          ),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.horizontal(left: Radius.circular(15)),
              child: Transform.translate(
                offset: const Offset(0, 2),
                child: SvgPicture.asset('assets/icons/dots.svg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/icons/star.svg'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '117 XP lagi ada Harta Karun',
                        style: semibold14,
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 209,
                        child: LinearProgressIndicator(
                          color: green1,
                          backgroundColor: const Color(0xffBBBBBB),
                          minHeight: 4,
                          value: 0.7,
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_right),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _buildFastAccess() => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Akses Cepat',
              style: bold18,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color(0xffE8E8E8),
                ),
              ),
              child: Column(
                children: gListTransactionHistory
                    .map((tr) => Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              margin: const EdgeInsets.only(right: 12),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: tr.bgColor,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/${tr.icon}.svg',
                                color: tr.iconColor,
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              child: Text(
                                tr.name,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.chevron_right),
                            ),
                          ],
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      );

  Widget _buildGOPaylater() => Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/icons/gopaylater.png',
              width: 98,
            ),
            const SizedBox(height: 8),
            Text(
              'Lebih hemat pake GoPayLater',
              style: bold16,
            ),
            const SizedBox(height: 8),
            Text(
              'Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~',
              style: regular14,
            ),
          ],
        ),
      );

  Widget _buildNews() => Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          children: gNews
              .map(
                (news) => Container(
                  margin: const EdgeInsets.only(bottom: 32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color(0xffE8E8E8),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(15)),
                        child: Image.asset('assets/images/${news.image}'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              news.title,
                              style: bold16,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              news.description,
                              style: regular14,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      );
}
