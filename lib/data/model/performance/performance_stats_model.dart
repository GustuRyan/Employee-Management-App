import 'dart:ffi';

abstract class PerformanceStatsData {
  String get title;
  double get remaining;
  double get total;
}