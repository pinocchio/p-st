sourceCreation
writeAutoGenFileHeader
	stream << self autoGenHeader; lf.
	self include: 'plugin/Plugin.h'.
	self include: 'wchar.h'.
	self include: 'stdio.h'.
	(FileDirectory default fileExists: pluginSourcePath, 'Helper.h') ifTrue: [
		self include: 'plugin/', pluginIncludePrefix, '/', pluginName, 'Helper.c'].