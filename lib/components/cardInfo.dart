import 'package:flutter/material.dart';

class CSCCardInfo extends StatelessWidget {
  const CSCCardInfo({super.key, required this.child, this.width, this.title});
  final Widget child;
  final double? width;
  final String? title;
  @override
  Widget build(BuildContext context) {
    // const width = MediaQuery.of(context).size.width;
    return Container(
      // width: MediaQuery.of(context).size.width,
      width: width ?? 100,
      height: 100,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(150, 0, 0, 0).withOpacity(0.25),
              offset: Offset(0, 4),
              blurRadius: 16,
              spreadRadius: 0,
            )
          ]),
      child: Column(
        children: [
          if (title != null && title!.isNotEmpty) 
            Text(title!, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),),
          child],
      ),
    );
  }
}
