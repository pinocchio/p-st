exporting
outputFileBase
	^ 'lib/class/', (currentClass package fullName copyReplaceAll: '.' with: '/'), '/'.