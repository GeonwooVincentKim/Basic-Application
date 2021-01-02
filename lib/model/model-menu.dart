import 'package:flutter/cupertino.dart';

class MenuModel{
  final String menuID;
  final String menuTitle;
  final String menuContents;
  final int menuPrices;
  final String releaseDate;

  MenuModel({
    @required this.menuID,
    @required this.menuTitle,
    @required this.menuContents,
    @required this.menuPrices,
    @required this.releaseDate
  });

  factory MenuModel.fromMenuMap(Map<String, dynamic> menuMap){
    return MenuModel(
      menuID: menuMap['menuID'] ?? '',
      menuTitle: menuMap['menuTitle'] ?? '',
      menuContents: menuMap['menuContents'] ?? '',
      menuPrices: menuMap['menuPrices'] ?? '',
      releaseDate: menuMap['releaseDate'] ?? ''
    );
  }

  factory MenuModel.fromMenuInstance(MenuModel menuInstance){
    return MenuModel(
      menuID: menuInstance.menuID ?? '',
      menuTitle: menuInstance.menuTitle ?? '',
      menuContents: menuInstance.menuContents ?? '',
      menuPrices: menuInstance.menuPrices ?? 0,
      releaseDate: menuInstance.releaseDate ?? ''
    );
  }

  factory MenuModel.initialData(MenuModel initMenu){
    return MenuModel(
      menuID: '',
      menuTitle: '',
      menuContents: '',
      menuPrices: 0,
      releaseDate: ''
    );
  }
}