readline
historyPush: aText
	self history add: aText.
	self history next.