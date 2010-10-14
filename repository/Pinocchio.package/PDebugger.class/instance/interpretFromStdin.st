shell
interpretFromStdin
	| readline |
	readline := PReadLine from: PFile stdin to: PVTermOutputDriver stderr for: self.
	^ self interpretLine: readline readLine. 