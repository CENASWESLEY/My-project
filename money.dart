import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Moneybox extends StatelessWidget {
//สร้าง constructure จะได้เปลี่ยนที่เดียวสบายจกว่าไปกำหนดทีละตัว
  String title;
  double amount;
  Color color;
  double size;

  Moneybox(this.title, this.amount, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // ,margin
      child: Column(
        children: [
          //children รับตัวแปรได้หลายตัว,child รับตัวแปรตัวเดียว
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(20)),
            height: size,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Text(
                    '${NumberFormat("#,###.###").format(amount)}',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            //ทำให้กล่องห่างกัน
            height: 10,
          ),
        ],
      ),
    );
  }
}
