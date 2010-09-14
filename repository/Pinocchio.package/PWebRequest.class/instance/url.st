accessing
url
	"The url without fragment or arguments"

	"DG: lets try unescaped"
	"^((rawUrl copyUpTo: $#) copyUpTo: $?) unescapePercentsWithTextEncoding: nil"
	^(rawUrl copyUpTo: $#) copyUpTo: $?