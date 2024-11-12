import 'package:flutter/material.dart';
import '../models/data_layer.dart';

class PlanProvider extends InherittedNotifier<ValueNotifier<plan>> {
  const PlanProvider({super.key, required Widget child, required ValueNotifier<Plan> notifier});
  : super(child: child, notifier: notifier);

  static ValueNotifier<Plan> of(BuildContext context) {
    return context.
    dependOnInheritedWidgetOfExactType<PlanProvider>()!.notifier!;
  }
}