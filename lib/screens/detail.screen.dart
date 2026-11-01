import 'package:flutter/material.dart';
import 'package:flutter_wisata_candi_34/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  
  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body : Column(
        children : [
          //detailHeader
          Stack(
            children:[Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius : BorderRadius.circular(20),
                child : Image.asset(
                  candi.imageAsset,
                  width : double.infinity,
                  height : 250,
                  fit : BoxFit.cover,
                )
              ),
            ),
            Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100]?.withValues(alpha: 0.7),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      )),
                ),
            ]
        ),

          //detailInfo
          //detailgallery
        ]
      ) 
    );
  }

  
}