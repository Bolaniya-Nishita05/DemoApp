import 'package:flutter/material.dart';

class NewListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Base list
    List<int> numbers = [1, 2, 3, 4, 5, 6];
    List<int> other = [7, 8, 9];

    // 1️⃣ sublist()
    var sub = numbers.sublist(2, 5); // [3, 4, 5]

    // 2️⃣ shuffle()
    var shuffled = List.from(numbers);
    shuffled.shuffle(); // random order

    // 3️⃣ reversed
    var rev = numbers.reversed.toList(); // [6,5,4,3,2,1]

    // 4️⃣ asMap()
    var mapped = numbers.asMap(); // {0:1, 1:2, 2:3,...}

    // 5️⃣ whereType()
    var mixed = [1, 'two', 3, 'four'];
    var onlyInts = mixed.whereType<int>(); // [1,3]

    // 6️⃣ getRange()
    var range = numbers.getRange(1, 4).toList(); // [2,3,4]

    // 7️⃣ replaceRange()
    var replaced = List.from(numbers);
    replaced.replaceRange(1, 3, [99, 100]); // [1,99,100,4,5,6]

    // 8️⃣ firstWhere()
    var firstEven = numbers.firstWhere((e) => e.isEven); // 2

    // 9️⃣ singleWhere()
    var singleThree = numbers.singleWhere((e) => e == 3); // 3

    // 🔟 fold()
    var sumFold = numbers.fold(0, (sum, e) => sum + e); // 21

    // 11️⃣ reduce()
    var sumReduce = numbers.reduce((a, b) => a + b); // 21

    // 12️⃣ followedBy()
    var combined = numbers.followedBy(other).toList(); // [1..9]

    // 13️⃣ any()
    var hasEven = numbers.any((e) => e.isEven); // true

    // 14️⃣ every()
    var allPositive = numbers.every((e) => e > 0); // true

    // 15️⃣ take()
    var firstThree = numbers.take(3).toList(); // [1,2,3]

    // 16️⃣ skip()
    var skipTwo = numbers.skip(2).toList(); // [3,4,5,6]

    // 17️⃣ add()
    var added = List.from(numbers);
    added.add(7); // [1,2,3,4,5,6,7]

    // 18️⃣ length
    var len = numbers.length; // 6

    // 19️⃣ isEmpty / isNotEmpty
    var emptyList = [];
    bool checkEmpty = emptyList.isEmpty; // true
    bool checkNotEmpty = numbers.isNotEmpty; // true

    // 20️⃣ first / last
    var first = numbers.first; // 1
    var last = numbers.last; // 6

    // 21️⃣ clear()
    var clearList = List.from(numbers);
    clearList.clear(); // []

    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Original List: $numbers"),
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
    );
  }
}
