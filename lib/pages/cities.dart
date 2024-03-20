import 'package:flutter/material.dart';
import 'package:yolcunun_defteri/custom_appbar.dart';
import 'package:yolcunun_defteri/navigation_bar.dart';
import 'package:yolcunun_defteri/pages/sidebar.dart';

class CitiesPage extends StatefulWidget {
  const CitiesPage({super.key});

  @override
  State<CitiesPage> createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {
  Widget cityCard(String cityText) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: EdgeInsets.all(5),
        child: ListTile(
          title: Text(
            cityText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
          onTap: () {},
        ),
      )
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          appBarTitle: "Şehirler",
          leadingIcon: Icons.menu,
          iconColor: Colors.white,
        ),
        drawer: SideBar(),
        body: ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: turkiyeIller.length,
          itemBuilder: (context, index) {
            return cityCard(turkiyeIller[index]);
          },
        ),
        bottomNavigationBar: BarNavigation(),
      ),
    );
  }
}

List<String> turkiyeIller = [
  'Adana', 'Adıyaman', 'Afyonkarahisar', 'Ağrı', 'Amasya', 'Ankara', 'Antalya', 'Artvin', 'Aydın', 'Balıkesir',
  'Bilecik', 'Bingöl', 'Bitlis', 'Bolu', 'Burdur', 'Bursa', 'Çanakkale', 'Çankırı', 'Çorum', 'Denizli', 'Diyarbakır',
  'Edirne', 'Elazığ', 'Erzincan', 'Erzurum', 'Eskişehir', 'Gaziantep', 'Giresun', 'Gümüşhane', 'Hakkari', 'Hatay',
  'Isparta', 'Mersin', 'İstanbul', 'İzmir', 'Kars', 'Kastamonu', 'Kayseri', 'Kırklareli', 'Kırşehir', 'Kocaeli',
  'Konya', 'Kütahya', 'Malatya', 'Manisa', 'Kahramanmaraş', 'Mardin', 'Muğla', 'Muş', 'Nevşehir', 'Niğde', 'Ordu',
  'Rize', 'Sakarya', 'Samsun', 'Siirt', 'Sinop', 'Sivas', 'Tekirdağ', 'Tokat', 'Trabzon', 'Tunceli', 'Şanlıurfa',
  'Uşak', 'Van', 'Yozgat', 'Zonguldak', 'Aksaray', 'Bayburt', 'Karaman', 'Kırıkkale', 'Batman', 'Şırnak', 'Bartın',
  'Ardahan', 'Iğdır', 'Yalova', 'Karabük', 'Kilis', 'Osmaniye', 'Düzce'
];


