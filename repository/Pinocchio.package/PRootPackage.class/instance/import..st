accessing
import: package
	package keysAndValuesDo: [ :key :value |
		imports at: key ifAbsentPut: [ value ]].