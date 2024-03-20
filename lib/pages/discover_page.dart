import 'package:flutter/material.dart';
import 'package:yolcunun_defteri/custom_appbar.dart';
import 'package:yolcunun_defteri/navigation_bar.dart';
import 'package:yolcunun_defteri/pages/sidebar.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  Widget buildCard(String imageUrl, String cityName) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(imageUrl),
            child: InkWell(
              onTap: () {},
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            cityName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 60,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          appBarTitle: "Yerel Cevherler",
          leadingIcon: Icons.menu,
          iconColor: Colors.white,
        ),
        drawer: SideBar(),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            buildCard(
              'https://cdn.pixabay.com/photo/2017/08/22/21/27/celsus-library-2670527_1280.jpg',
              'İzmir',
            ),
            buildCard(
              'https://cdn.pixabay.com/photo/2013/11/23/18/40/hagia-sophia-216471_960_720.jpg',
              'İstanbul',
            ),
            buildCard(
              'https://cdn.pixabay.com/photo/2017/10/12/13/06/ataturk-2844548_1280.jpg',
              'Ankara',
            ),
            buildCard(
              'https://cdn.pixabay.com/photo/2014/05/27/14/12/turkey-355498_960_720.jpg',
              'Nevşehir',
            ),
          ],
        ),
        bottomNavigationBar: BarNavigation(),
      ),
    );
  }
}