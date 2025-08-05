import 'dart:ffi';

import '../../../../../data/model/performance/performance_stats_model.dart';

class PerformanceStats implements PerformanceStatsData {
  final String title;
  final double remaining;
  final double total;

  const PerformanceStats({
    required this.title,
    required this.remaining,
    required this.total,
  });
}

var listPerformanceStats = [
  PerformanceStats(
      title: 'New Prospect',
      remaining: 80,
      total: 100
  ),
  PerformanceStats(
      title: 'New Customer',
      remaining: 70,
      total: 90
  ),
  PerformanceStats(
      title: 'Credit Amount',
      remaining: 7,
      total: 10
  ),
  PerformanceStats(
      title: 'Event Generate',
      remaining: 10,
      total: 20
  ),
];