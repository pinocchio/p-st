accessing
at: key ifAbsent: aBlock
	<pinocchioPrimitive: #at:ifAbsent: module: #'Collection.Dictionary'>
	| bucket |
	buckets size = 1 ifTrue: [
		^ (buckets at: 1) atKey: key ifAbsent: aBlock.
	].
	"TODO make sure hash is always positive"
	bucket := buckets at: (key hash \\ buckets size + buckets size \\ buckets size) + 1.
	bucket ifNil: [ ^ aBlock value ].
	^ bucket atKey: key ifAbsent: aBlock.