as yet unclassified
primeSampleAt: index
	"create the binary inverse of the index in respect to the given p Base"
  	| output fraction copyOfIndex remainder |
	output := 0.0.
     fraction := 1.0 / p.
     copyOfIndex := index * 1.0.
     [copyOfIndex > 0] 
		whileTrue: [
    		     remainder := copyOfIndex \\ p.
          	output := output + (fraction * remainder).
          	copyOfIndex := (copyOfIndex - remainder) / p.
          	fraction := fraction / p.
	].
	^ output