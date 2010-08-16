interpretation
shell
	| inspector readline |
	inspector := PStreamInspector on: output.
	readline := PReadLine from: input to: output for: self.
	^ true whileTrue: [
			self displayPrompt.
			inspector inspect: (self interpret: readline readLine). 
			output lf.
		]