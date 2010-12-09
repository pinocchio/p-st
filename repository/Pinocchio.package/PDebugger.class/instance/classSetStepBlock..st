stepping
classSetStepBlock: testClasses
    ^ [ :receiver :class :message :action |
		(testClasses anySatisfy: [ :testClass| class inheritsFrom: testClass]) 
			ifTrue: [
        		self print: receiver class name, '>>', message].
		action value].
