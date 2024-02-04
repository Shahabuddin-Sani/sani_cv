import 'package:flutter/material.dart';
import '../../../../configs/configs.dart';

class  CardsectionTab extends StatelessWidget {
  const  CardsectionTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container( height: 500,color: AppTheme.c!.background,padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8), child: ClipRRect(  borderRadius: BorderRadius.circular(24),   child: Container(  color: Colors.white,     child: Row(children: [            Expanded( child: Container( color: AppTheme.c!.textSub2, ),),
  ]), ), ));
  }

  
}
