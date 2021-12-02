import 'package:flutter/material.dart';

class PageModel{
  String _title;
  String _description;
  String _image;
  IconData _icon;
  PageModel(this._title, this._description, this._image, this._icon);

  IconData get icon => _icon;

  String get image => _image;

  String get description => _description;

  String get title => _title;


}