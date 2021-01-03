import 'package:flutter/material.dart';


class Detail extends StatelessWidget{
  Widget _detailAppBar(){
    return AppBar(
      title: Text("Detail"),
      centerTitle: true,
      actions: [

      ],
    );
  }

  Widget _detailBody(){
    return Container(
      child: Column(
        children: [
          
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _detailAppBar(),
      body: _detailBody(),
      // drawer: SideMenu(),
    );
  }
}