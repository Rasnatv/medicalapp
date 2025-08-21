import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reports_controller.dart';

class Reportsview extends GetView<ReportsController> {
  const Reportsview({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReportsviewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ReportsviewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
