as yet unclassified
shell
	| inspector result |
	inspector := PStreamInspector on: output.
	readline := PHistoryReadLine from: input to: output for: self.
	^ [true] whileTrue: [
			self displayPrompt.
			result := self interpret: readline readLine.
			result == PVoid ifFalse: [
				inspector inspect: result.
				output lf ]]