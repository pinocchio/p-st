opening
open: aCommandString withMode: readMode
	^ self new 
		command: aCommandString; 
		mode: readMode;
		open