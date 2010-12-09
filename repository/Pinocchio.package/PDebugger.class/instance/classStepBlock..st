stepping
classStepBlock: testClass
    ^ [ :receiver :class :message :action |
		(class inheritsFrom: testClass) ifTrue: [
        	self print: receiver class name, '>>', message].
		action value].
