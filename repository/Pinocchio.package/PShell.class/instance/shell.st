interpretation
shell
	inspector := PStreamInspector on: output.
	^ true whileTrue:[ 
			self displayPrompt.
			inspector inspect: (self interpret: input readLine). 
			output lf.
		]