// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  final int currentTab;

  const DashboardPage({
    Key? key,
    required this.currentTab,
  }) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
