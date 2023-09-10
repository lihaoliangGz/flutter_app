void main() {
  var regexp= RegExp('(\\w+)');
  var matches = regexp.allMatches('abc');
  for (var value in matches) {
    var match = value[0];
    print(match);
  }
}
