void main() {
  var list = ['a', 'b', 'c'];
  var listInt = [1, 2, 3];
  List<List<int>> listOfLists = [
    [1, 2, 3],
    [4, 5],
    [6, 7, 8, 9]
  ];

  print('asMap: ${list.asMap()}');

  //print('cast: ${list2.cast<String>()}');
  print('elementAt: ${list.elementAt(2)}');

  print('every: ${list.every((element) {
    return element is String;
  })}');

  print('expand: ${listOfLists.expand((element) {
    return element;
  })}');

  list.forEach((element) {
    print(element);
  });

  print('indexOf: ${list.indexOf('b')}');

  print('join: ${list.join('-')}');

  print('remove: ${list.remove('d')}');
  print('$list');

  print('reduce: ${list.reduce((value, element) => value + element)}');
}
