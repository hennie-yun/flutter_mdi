import 'package:flutter/material.dart';

class StockData {
  final int id;
  final String name;
  final double currentPrice;
  final double marketCapitalization;
  final String date;

  StockData({
    required this.id,
    required this.name,
    required this.currentPrice,
    required this.marketCapitalization,
    required this.date,
  });
}

class StockPriceScreen extends StatefulWidget {
  @override
  _StockPriceScreenState createState() => _StockPriceScreenState();
}

class _StockPriceScreenState extends State<StockPriceScreen> {
  int selectedPeriod = 1; // Default selected period is 1 day

  @override
  Widget build(BuildContext context) {
    List<StockData> filteredData = filterStockData(selectedPeriod);

    return Scaffold(
      appBar: AppBar(
        title: Text('네이버 주식 등락률'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedPeriod = 1;
                  });
                },
                child: Text('1일'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedPeriod = 3;
                  });
                },
                child: Text('3일'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedPeriod = 5;
                  });
                },
                child: Text('5일'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedPeriod = 10;
                  });
                },
                child: Text('10일'),
              ),
            ],
          ),
          StockPriceTable(stockData: filteredData),
        ],
      ),
    );
  }

  List<StockData> filterStockData(int period) {
    // Filter stock data based on the selected period
    DateTime currentDate = DateTime.parse(stockData.last.date);
    DateTime startDate = currentDate.subtract(Duration(days: period - 1));
    return stockData.where((data) {
      DateTime dataDate = DateTime.parse(data.date);
      return dataDate.isAfter(startDate) && dataDate.isBefore(currentDate);
    }).toList();
  }
}

class StockPriceTable extends StatelessWidget {
  final List<StockData> stockData;

  StockPriceTable({required this.stockData});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: <DataColumn>[
        DataColumn(label: Text('종목명')),
        DataColumn(label: Text('현재가')),
        DataColumn(label: Text('등락가')),
        DataColumn(label: Text('등락률')),
        DataColumn(label: Text('시가총액')),
      ],
      rows: stockData.map((data) {
        return DataRow(
          cells: [
            DataCell(Text(data.name)),
            DataCell(Text(data.currentPrice.toString())),
            DataCell(Text((data.currentPrice - data.currentPrice).toString())),
            DataCell(Text('0.0%')),
            DataCell(Text(data.marketCapitalization.toString())),
          ],
        );
      }).toList(),
    );
  }
}

List<StockData> stockData = [
  StockData(
    id: 1,
    name: "네이버",
    currentPrice: 324563.45,
    marketCapitalization: 73259846210.98,
    date: "2023-10-24",
  ),
  StockData(
    id: 2,
    name: "네이버",
    currentPrice: 318921.67,
    marketCapitalization: 76823491287.65,
    date: "2023-10-25",
  ),
  StockData(
    id: 3,
    name: "네이버",
    currentPrice: 333456.78,
    marketCapitalization: 72543198765.43,
    date: "2023-10-26",
  ),
  StockData(
    id: 4,
    name: "네이버",
    currentPrice: 322567.89,
    marketCapitalization: 70000098765.43,
    date: "2023-10-27",
  ),
  StockData(
    id: 5,
    name: "네이버",
    currentPrice: 338765.12,
    marketCapitalization: 78012345678.90,
    date: "2023-10-28",
  ),
  StockData(
    id: 6,
    name: "네이버",
    currentPrice: 329876.45,
    marketCapitalization: 75098765432.10,
    date: "2023-10-29",
  ),
  StockData(
    id: 7,
    name: "네이버",
    currentPrice: 326543.78,
    marketCapitalization: 72000000000.00,
    date: "2023-10-30",
  ),
  StockData(
    id: 8,
    name: "네이버",
    currentPrice: 340000.12,
    marketCapitalization: 76432198765.43,
    date: "2023-10-31",
  ),
  StockData(
    id: 9,
    name: "네이버",
    currentPrice: 335678.90,
    marketCapitalization: 78012345678.90,
    date: "2023-11-01",
  ),
  StockData(
    id: 10,
    name: "네이버",
    currentPrice: 319876.54,
    marketCapitalization: 75000098765.43,
    date: "2023-11-02",
  ),
];
