examples-expecting-collections
shouldSignalWhenIncludeFails
	[ #(foo bar) should include: #qux ] should signal: TestFailure