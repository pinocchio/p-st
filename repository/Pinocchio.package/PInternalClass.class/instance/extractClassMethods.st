as yet unclassified
extractClassMethods
	methods := super extractClassMethods.
	"overwrite existing ST methods with the ones defined in the InternalPClass"
	methods addAll: (self extractMethods: self sclass pClassMethods from: self sclass class).
	^ methods.