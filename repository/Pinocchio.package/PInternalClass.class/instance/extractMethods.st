as yet unclassified
extractMethods
	<preventExport>
	methods := super extractMethods.
	"overwrite existing ST methods with the ones defined in the InternalPClass"
	methods addAll: (self extractMethods: self sclass pMethods from: self sclass).
	^ methods.