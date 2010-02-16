examples-expecting-collections
shouldSignalWhenNotIncludeFails
	[ #(foo bar) should not include: #foo ] should signal: TestFailure