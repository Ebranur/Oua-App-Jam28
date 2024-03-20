import 'package:flutter/material.dart';
import 'package:yolcunun_defteri/navigation_bar.dart';
import 'package:yolcunun_defteri/pages/magaza_page.dart';
import 'package:yolcunun_defteri/pages/mykupon_page.dart';

class AdimScreen extends StatefulWidget {
  const AdimScreen({super.key});

  @override
  State<AdimScreen> createState() => _AdimScreenState();
}

class _AdimScreenState extends State<AdimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Yolcunun Rehberi'),
      ),
      body: Column(
        children: [
          const Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _IconTopButton(label: '86p',icon: Icons.emoji_events, bgColor: Color(0xffff9500),fontColor: Colors.white,iconColor: Color(0xffffdcaa)),
                    _IconTopButton(label: 'Kupon',icon: Icons.confirmation_num, bgColor: Color(0xffff9500),fontColor: Colors.white,iconColor: Color(0xffffdcaa)),
                  ],
                ),
              )),
          const Expanded(
              flex: 2,
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: _IconBigButton(label: 'Kupon Mağazası',icon: Icons.shopping_bag, bgColor: Color(0xffff9500),fontColor: Colors.white,iconColor: Color(0xffffdcaa)))),
          Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                  height: 100,
                  width: 400,
                  child: Card(
                    color: const Color(0xffff9500),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 8),
                          child: Align(alignment: Alignment.topLeft, child: Text('Günlük Adım',
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Align(alignment: Alignment.topLeft, child: Text('1224',
                          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                          )),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: _AdimRowReward(title: '1000 Adım',puan: 10,),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: _AdimRow(title: '5000 Adım',puan: 30,),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: _AdimRow(title: '10000 Adım',puan: 60,),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: _AdimRowReward(title: 'Reklam Ödülü',puan: 5,),
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
      bottomNavigationBar: BarNavigation(),
      // bottomNavigationBar: BottomNavigationBar(items: const [
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Ana Sayfa',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'Arama',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profil',
      //     ),
      // ],
      // currentIndex: _selectedIndex,
      // onTap: _onItemTapped
    );
  }
}

class _AdimRow extends StatelessWidget {
  const _AdimRow({
    super.key, required this.title, required this.puan,
  });

  final String title;
  final int puan;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _AdimCardText(title: title, fontColor: Colors.white,),
        SizedBox(
          height: 50,
          width: 80,
          child: _AdimRewardButton(puan: puan,buttonColor: const Color(0xffffdcaa),),
          )
      ],
    );
  }
}

class _AdimRowReward extends StatelessWidget {
  const _AdimRowReward({
    super.key, required this.title, required this.puan,
  });

  final String title;
  final int puan;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _AdimCardText(title: title, fontColor: Colors.white,),
        SizedBox(
          height: 50,
          width: 80,
          child: _AdimRewardButton(puan: puan,),
          )
      ],
    );
  }
}

class _AdimRewardButton extends StatelessWidget {
  const _AdimRewardButton({
    super.key,
    required this.puan, this.buttonColor = Colors.white,
  });

  final int puan;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {}, 
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: buttonColor,
      ),
      child: Text('$puan p',
      style: Theme.of(context).textTheme.titleMedium?.copyWith(

      ),
      ));
  }
}

class _IconBigButton extends StatelessWidget {
  const _IconBigButton({
    super.key, this.bgColor=Colors.white, this.fontColor=Colors.black, required this.icon, required this.label, this.iconColor = Colors.black,
  });

  final Color bgColor;
  final Color fontColor;
  final Color iconColor;
  final IconData icon;
  final String label;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 400,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: bgColor,
          foregroundColor: iconColor,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CouponListScreen()));
        },
        icon: Icon(icon,size: 30),
        label: _ButtonText(title: label, fontColor: fontColor,),
      ),
    );
  }
}

class _IconTopButton extends StatelessWidget {
  const _IconTopButton({
    super.key, required this.label, required this.icon, this.bgColor=Colors.white, this.fontColor=Colors.black, this.iconColor = Colors.black,
  });
  
  final Color bgColor;
  final Color fontColor;
  final Color iconColor;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 175,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: bgColor,
          foregroundColor: iconColor,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RewardListScreen()));
        },
        icon: Icon(icon,size: 30),
        label: _ButtonText(title: label,fontColor: fontColor,),
      ),
    );
  }
}

class _ButtonText extends StatelessWidget {
  const _ButtonText({super.key, required this.title, required this.fontColor});

  final String title;
  final Color fontColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
        color: fontColor,

      ),
    );
  }
}

class _AdimCardText extends StatelessWidget {
  const _AdimCardText({super.key, required this.title, this.fontColor=Colors.black});

  final String title;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
        color: fontColor,
      ),
    );
  }
}