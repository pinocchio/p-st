private
rawBucketForHash: hash
	"TODO make sure hash is always positive"

	^ buckets at: (hash \\ buckets size + buckets size) \\ buckets size + 1