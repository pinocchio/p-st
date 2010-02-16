examples-expecting
shouldSignalWhenLesserThanFails
  [ 6 should < 5 ] should signal: TestFailure withMessageText: 'expected 5 but got 6 (using <)'.
  [ 4 should < 4 ] should signal: TestFailure withMessageText: 'expected 4 but got 4 (using <)'.