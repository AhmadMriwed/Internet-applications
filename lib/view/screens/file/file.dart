import 'package:flutter/material.dart';


import 'package:flutter/material.dart';
class File {
  String kind;
  String name;
  String admin;
  // ignore: non_constant_identifier_names
  File_kind file_kind;

  File(
      // ignore: non_constant_identifier_names
      {required this.kind, required this.name, required this.admin,required this.file_kind}
      );


}
enum File_kind{
  checked_In, checked_out, IN_USE
}