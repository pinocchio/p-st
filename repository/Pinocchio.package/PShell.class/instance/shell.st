interpretation
shell
	| inspector readline |
	inspector := PStreamInspector on: output.
	readline := PReadLine from: input to: output.
	^ true whileTrue: [ 
			self displayPrompt.
			inspector inspect: (self interpret: readline readLine). 
			output lf.
		]