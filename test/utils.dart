import 'dart:collection';

import 'package:mockito/mockito.dart';

extension When<T> on PostExpectation<Future<T>> {
  void thenAnswerInOrder(List<T> expects) {
    final answers = Queue.of(expects);
    thenAnswer((_) => Future.value(answers.removeFirst()));
  }
}
