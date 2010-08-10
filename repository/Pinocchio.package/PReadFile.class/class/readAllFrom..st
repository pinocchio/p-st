instance creation
readAllFrom: filename
	| file contents |
	[ file := self open: filename. 
		contents := file readAll ] ensure: [ file close ].
	^ contents