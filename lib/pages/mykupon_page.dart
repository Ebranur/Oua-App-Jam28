import 'package:flutter/material.dart';

class RewardListScreen extends StatelessWidget {
  const RewardListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff9500),
        title: const Text('Kuponlarım',
        style: TextStyle(
          color: Colors.white,
        ),),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: _IconBigButton(label: 'Sahip Olunan Kupon 1', bgColor: Color(0xffff9500),fontColor: Colors.white
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: _IconBigButton(label: 'Sahip Olunan Kupon 2', bgColor: Color(0xffff9500),fontColor: Colors.white
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: _IconBigButton(label: 'Sahip Olunan Kupon 3', bgColor: Color(0xffff9500),fontColor: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}

class _IconBigButton extends StatelessWidget {
  const _IconBigButton({
    super.key, this.bgColor=Colors.white, this.fontColor=Colors.black, required this.label});

  final Color bgColor;
  final Color fontColor;
  final String label;
  
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
        child: _ButtonText(title: label, fontColor: fontColor,),
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
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
          color: fontColor,
      
        ),
      ),
    );
  }
}