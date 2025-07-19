import 'dart:ffi';

import '../../../../../data/model/leave/leave_stats_model.dart';

class LeaveStats implements LeaveStatsData {
  final String title;
  final double remaining;
  final double total;

  const LeaveStats({
    required this.title,
    required this.remaining,
    required this.total,
  });
}

var listLeaveStats = [
  LeaveStats(
      title: 'Annual Leave',
      remaining: 7.0,
      total: 12.0
  ),
  LeaveStats(
      title: 'Long Leave',
      remaining: 20.5,
      total: 30.0
  ),
  LeaveStats(
      title: 'Day off payment',
      remaining: 6.25,
      total: 9.0
  ),
];