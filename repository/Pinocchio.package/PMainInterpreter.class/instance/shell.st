interpretation
shell
	^ true whileTrue:[ 
			self displayPrompt.
			self interpretFromStdin inspect. 
			PFile stdout lf.
		]