examples-expecting
shouldSignalWhenGreaterThanFails
  [ 5 should > 6 ] should signal: TestFailure withMessageText: 'expected 6 but got 5 (using >)'.
  [ 4 should > 4 ] should signal: TestFailure withMessageText: 'expected 4 but got 4 (using >)'.