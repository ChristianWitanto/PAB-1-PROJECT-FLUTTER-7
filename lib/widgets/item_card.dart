import 'package:flutter/material.dart';
import 'package:flutter_wisata_candi_34/models/candi.dart';

class ItemCard extends StatelessWidget {
  final Candi candi;
  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Card(
      //todo 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(5)),
      margin: EdgeInsets.all(4),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //todo 3
          Expanded(
            child: ClipRect(
              child: Image.asset(
                candi.imageAsset,
                width: double.infinity,
                fit : BoxFit.cover,
              ),
            ),
          ),
          //todo 4
          Padding(
            padding: const EdgeInsets.only(left: 16,top : 8),
            child: Text(
              candi.name,style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold) ,),
          ),
          //todo 5
        ],
      ),
    );
  }
}