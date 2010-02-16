extracting
transformNext
	| aClass wrapped |
	self transformClass: todo removeFirst.
	progress :=  done size / (todo size + done size).