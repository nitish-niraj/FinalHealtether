import 'package:flutter/cupertino.dart';

class PaymentListModel{
  final String name;
  final String phoneNumber;
  final String lastVisit;
  final bool completed;
  PaymentListModel({
   required this.name,
   required this.phoneNumber,
   required this.lastVisit,
   required this.completed
});
}