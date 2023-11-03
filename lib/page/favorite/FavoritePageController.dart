
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
class ChartSampleData {
  ChartSampleData({
    required this.date,
    required this.lowPrice,
    required this.highPrice,
    required this.openPrice,
    required this.closePrice,
    required this.tradeAmount,
  });

  final DateTime date;
  final double lowPrice;
  final double highPrice;
  final double openPrice;
  final double closePrice;
  final double tradeAmount;
}

class FavoritePageController extends GetxController {


  List<ChartSampleData> chartData = <ChartSampleData>[
    ChartSampleData(
        date: DateTime.parse('2022-03-24 00:00:00.000'),
        lowPrice: 69600.0,
        highPrice: 70300.0,
        openPrice: 69600.0,
        closePrice: 69800.0,
        tradeAmount: 37943356.0),
    ChartSampleData(
        date: DateTime.parse('2022-03-25 00:00:00.000'),
        lowPrice: 69600.0,
        highPrice: 70200.0,
        openPrice: 70100.0,
        closePrice: 69800.0,
        tradeAmount: 12986010.0),
    ChartSampleData(
        date: DateTime.parse('2022-03-28 00:00:00.000'),
        lowPrice: 69200.0,
        highPrice: 69900.0,
        openPrice: 69500.0,
        closePrice: 69700.0,
        tradeAmount: 12619289.0),
    ChartSampleData(
        date: DateTime.parse('2022-03-29 00:00:00.000'),
        lowPrice: 69800.0,
        highPrice: 70300.0,
        openPrice: 70000.0,
        closePrice: 70200.0,
        tradeAmount: 13686208.0),
    ChartSampleData(
        date: DateTime.parse('2022-03-30 00:00:00.000'),
        lowPrice: 69800.0,
        highPrice: 70500.0,
        openPrice: 70300.0,
        closePrice: 69900.0,
        tradeAmount: 12670187.0),
    ChartSampleData(
        date: DateTime.parse('2022-03-31 00:00:00.000'),
        lowPrice: 69600.0,
        highPrice: 70200.0,
        openPrice: 69900.0,
        closePrice: 69600.0,
        tradeAmount: 12510366.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-01 00:00:00.000'),
        lowPrice: 69000.0,
        highPrice: 69500.0,
        openPrice: 69500.0,
        closePrice: 69100.0,
        tradeAmount: 15916846.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-04 00:00:00.000'),
        lowPrice: 68600.0,
        highPrice: 69300.0,
        openPrice: 68900.0,
        closePrice: 69300.0,
        tradeAmount: 11107905.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-05 00:00:00.000'),
        lowPrice: 69100.0,
        highPrice: 69600.0,
        openPrice: 69400.0,
        closePrice: 69200.0,
        tradeAmount: 8467248.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-06 00:00:00.000'),
        lowPrice: 68500.0,
        highPrice: 68800.0,
        openPrice: 68600.0,
        closePrice: 68500.0,
        tradeAmount: 15517308.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-07 00:00:00.000'),
        lowPrice: 68000.0,
        highPrice: 68500.0,
        openPrice: 68500.0,
        closePrice: 68000.0,
        tradeAmount: 20683328.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-08 00:00:00.000'),
        lowPrice: 67700.0,
        highPrice: 68300.0,
        openPrice: 68100.0,
        closePrice: 67800.0,
        tradeAmount: 15453191.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-11 00:00:00.000'),
        lowPrice: 67400.0,
        highPrice: 68100.0,
        openPrice: 67800.0,
        closePrice: 67900.0,
        tradeAmount: 12263735.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-12 00:00:00.000'),
        lowPrice: 67000.0,
        highPrice: 67700.0,
        openPrice: 67600.0,
        closePrice: 67000.0,
        tradeAmount: 13924389.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-13 00:00:00.000'),
        lowPrice: 67200.0,
        highPrice: 69000.0,
        openPrice: 67300.0,
        closePrice: 68700.0,
        tradeAmount: 17378620.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-14 00:00:00.000'),
        lowPrice: 67500.0,
        highPrice: 68700.0,
        openPrice: 68700.0,
        closePrice: 67500.0,
        tradeAmount: 16409494.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-15 00:00:00.000'),
        lowPrice: 66500.0,
        highPrice: 67300.0,
        openPrice: 67200.0,
        closePrice: 66600.0,
        tradeAmount: 13176415.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-18 00:00:00.000'),
        lowPrice: 66100.0,
        highPrice: 67100.0,
        openPrice: 66500.0,
        closePrice: 66700.0,
        tradeAmount: 10119203.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-19 00:00:00.000'),
        lowPrice: 67000.0,
        highPrice: 68000.0,
        openPrice: 67100.0,
        closePrice: 67300.0,
        tradeAmount: 12959434.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-20 00:00:00.000'),
        lowPrice: 66500.0,
        highPrice: 67400.0,
        openPrice: 67000.0,
        closePrice: 67400.0,
        tradeAmount: 16693293.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-21 00:00:00.000'),
        lowPrice: 67500.0,
        highPrice: 68300.0,
        openPrice: 67600.0,
        closePrice: 67700.0,
        tradeAmount: 12847448.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-22 00:00:00.000'),
        lowPrice: 66700.0,
        highPrice: 67300.0,
        openPrice: 67200.0,
        closePrice: 67000.0,
        tradeAmount: 11791478.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-25 00:00:00.000'),
        lowPrice: 66300.0,
        highPrice: 66700.0,
        openPrice: 66500.0,
        closePrice: 66300.0,
        tradeAmount: 11016474.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-26 00:00:00.000'),
        lowPrice: 66100.0,
        highPrice: 66700.0,
        openPrice: 66400.0,
        closePrice: 66100.0,
        tradeAmount: 12946923.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-27 00:00:00.000'),
        lowPrice: 64900.0,
        highPrice: 65500.0,
        openPrice: 65400.0,
        closePrice: 65000.0,
        tradeAmount: 18122084.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-28 00:00:00.000'),
        lowPrice: 64500.0,
        highPrice: 65500.0,
        openPrice: 65400.0,
        closePrice: 64800.0,
        tradeAmount: 16895528.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-29 00:00:00.000'),
        lowPrice: 65000.0,
        highPrice: 67600.0,
        openPrice: 65100.0,
        closePrice: 67400.0,
        tradeAmount: 26190390.0),
    ChartSampleData(
        date: DateTime.parse('2022-05-02 00:00:00.000'),
        lowPrice: 66500.0,
        highPrice: 67600.0,
        openPrice: 66600.0,
        closePrice: 67300.0,
        tradeAmount: 14106184.0),
    ChartSampleData(
        date: DateTime.parse('2022-05-03 00:00:00.000'),
        lowPrice: 67300.0,
        highPrice: 68400.0,
        openPrice: 67400.0,
        closePrice: 67500.0,
        tradeAmount: 14168875.0),
    ChartSampleData(
        date: DateTime.parse('2022-05-04 00:00:00.000'),
        lowPrice: 67500.0,
        highPrice: 68400.0,
        openPrice: 68000.0,
        closePrice: 67900.0,
        tradeAmount: 11505248.0),
    ChartSampleData(
        date: DateTime.parse('2022-05-06 00:00:00.000'),
        lowPrice: 66500.0,
        highPrice: 67100.0,
        openPrice: 67000.0,
        closePrice: 66500.0,
        tradeAmount: 14356156.0),
    ChartSampleData(
        date: DateTime.parse('2022-05-09 00:00:00.000'),
        lowPrice: 66100.0,
        highPrice: 66900.0,
        openPrice: 66300.0,
        closePrice: 66100.0,
        tradeAmount: 11858736.0),
    ChartSampleData(
        date: DateTime.parse('2022-05-10 00:00:00.000'),
        lowPrice: 65300.0,
        highPrice: 66300.0,
        openPrice: 65900.0,
        closePrice: 65700.0,
        tradeAmount: 17235604.0),
    ChartSampleData(
        date: DateTime.parse('2022-05-11 00:00:00.000'),
        lowPrice: 65200.0,
        highPrice: 66300.0,
        openPrice: 65500.0,
        closePrice: 65700.0,
        tradeAmount: 12264330.0)
  ];

}