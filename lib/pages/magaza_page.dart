import 'package:flutter/material.dart';

class CouponListScreen extends StatelessWidget {
  const CouponListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff9500),
        title: const Text('Kupon Al',
        style: TextStyle(
          color: Colors.white,
        ),),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: _IconBigButton(label: 'Etkinlik Kuponu', bgColor: Color(0xffff9500),fontColor: Colors.white,puan: '6000',
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: _IconBigButton(label: 'Konser Bileti', bgColor: Color(0xffff9500),fontColor: Colors.white,puan: '9000',
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: _IconBigButton(label: 'Alışveriş Kuponu', bgColor: Color(0xffff9500),fontColor: Colors.white,puan: '8000',
            ),
          ),
        ],
      ),
    );
  }
}

class _IconBigButton extends StatelessWidget {
  const _IconBigButton({
    super.key, this.bgColor=Colors.white, this.fontColor=Colors.black, required this.label, required this.puan});

  final Color bgColor;
  final Color fontColor;
  final String label;
  final String puan;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 400,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: bgColor,
        ),
        onPressed: () {},
        child: _ButtonText(title: label, fontColor: fontColor,puan: puan,),
      ),
    );
  }
}
class _ButtonText extends StatelessWidget {
  const _ButtonText({super.key, required this.title, required this.fontColor, required this.puan});

  final String title;
  final String puan;
  final Color fontColor;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: fontColor,
            ),
          ),
          Text(
            '$puan p',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: fontColor,
            ),
          ),
        ],
      ),
    );
  }
}