void main() {

  var students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78]
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95]
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85]
    },
  ];


  var averages = <String, double>{};

  for (var student in students) {
    var name = student["name"] as String;
    var scores = student["scores"] as List<int>;
    var sum = scores.reduce((a, b) => a + b);
    var avg = sum / scores.length;
    averages[name] = double.parse(avg.toStringAsFixed(2));
  }


  var entries = averages.entries.toList();
  entries.sort((a, b) => b.value.compareTo(a.value));
  var sortedAverages = Map.fromEntries(entries);

  print(sortedAverages);
}
