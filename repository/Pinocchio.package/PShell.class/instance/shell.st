interpretation
shell
	| inspector readline result |
	inspector := PStreamInspector on: output.
	readline := PReadLine from: input to: output for: self.
	^ true whileTrue: [
			self displayPrompt.
			result := self interpret: readline readLine.
			inspector inspect: result.
			output lf.
		]