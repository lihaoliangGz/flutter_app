import 'package:flutterapp/test_debug/test/counter.dart';
import 'package:test/test.dart';

void main() {
  // test(
  //   "计数器数值应递增",
  //   () {
  //     final Counter counter= Counter();
  //     counter.increment();
  //     expect(counter.value, 1);
  //   },
  // );

  group("Counter", () {
    test("value should start at 0", () {
      final Counter counter = Counter();
      expect(counter.value, 0);
    });

    test('value should be incremented', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
  });
}
