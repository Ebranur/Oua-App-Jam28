import 'package:flutter/material.dart';
import 'package:yolcunun_defteri/pages/pageLogin.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Arka plan resmi
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.7), // Saydamlık ayarı
              BlendMode.dstATop,
            ),
            child: Image.asset(
              'assets/pr1.png', // Arka plan resminin yolu
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          // Buton ve diğer widget'lar
          Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Icon(Icons.location_on,
                  color: Colors.white,size: 160),
                ),
                Center(
                  child: Text('Yolcunun Rehberi',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80,left: 5,right: 5),
                  child: Center(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Keşfedin, Kaydedin, Paylaşın, Kazanın Gezginlerin Buluşma Noktası',
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:350),
                  child: SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffff9500)
                      ),
                      child: Text(
                      'Keşfet ve Katıl',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}