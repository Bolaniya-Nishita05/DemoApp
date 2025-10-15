import 'package:flutter/material.dart';

class ListMethodsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> numbers = [1, 2, 3, 4, 5, 6];
    List<int> other = [7, 8, 9];

    var sub = numbers.sublist(2, 5);
    var shuffled = List.from(numbers);
    shuffled.shuffle();
    var rev = numbers.reversed.toList();
    var mapped = numbers.asMap();
    var mixed = [1, 'two', 3, 'four'];
    var onlyInts = mixed.whereType<int>();
    var range = numbers.getRange(1, 4).toList();
    var replaced = List.from(numbers);
    replaced.replaceRange(1, 3, [99, 100]);
    var firstEven = numbers.firstWhere((e) => e.isEven);
    var singleThree = numbers.singleWhere((e) => e == 3);
    var sumFold = numbers.fold(0, (sum, e) => sum + e);
    var sumReduce = numbers.reduce((a, b) => a + b);
    var combined = numbers.followedBy(other).toList();
    var hasEven = numbers.any((e) => e.isEven);
    var allPositive = numbers.every((e) => e > 0);
    var firstThree = numbers.take(3).toList();
    var skipTwo = numbers.skip(2).toList();
    var added = List.from(numbers);
    added.add(7);
    var len = numbers.length;
    var emptyList = [];
    bool checkEmpty = emptyList.isEmpty;
    bool checkNotEmpty = numbers.isNotEmpty;
    var first = numbers.first;
    var last = numbers.last;
    var clearList = List.from(numbers);
    clearList.clear();

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Original List: $numbers", style: TextStyle(fontWeight: FontWeight.bold),),
            Text("sublist(2,5): $sub"),
            Text("shuffled: $shuffled"),
            Text("reversed: $rev"),
            Text("asMap(): $mapped"),
            Text("whereType<int>(): $onlyInts"),
            Text("getRange(1,4): $range"),
            Text("replaceRange(1,3,[99,100]): $replaced"),
            Text("firstWhere(even): $firstEven"),
            Text("singleWhere(==3): $singleThree"),
            Text("fold(sum): $sumFold"),
            Text("reduce(sum): $sumReduce"),
            Text("followedBy(): $combined"),
            Text("any(even): $hasEven"),
            Text("every(>0): $allPositive"),
            Text("take(3): $firstThree"),
            Text("skip(2): $skipTwo"),
            Text("add(7): $added"),
            Text("length: $len"),
            Text("isEmpty: $checkEmpty, isNotEmpty: $checkNotEmpty"),
            Text("first: $first, last: $last"),
            Text("clear(): $clearList"),
          ],
        ),
      ),
    );
  }
}
