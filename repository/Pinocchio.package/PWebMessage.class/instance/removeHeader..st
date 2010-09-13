headers
removeHeader: key
	"Removes ALL headers with the given key"

	headers := headers reject:[:assoc| assoc key asLowercase = key asLowercase].
