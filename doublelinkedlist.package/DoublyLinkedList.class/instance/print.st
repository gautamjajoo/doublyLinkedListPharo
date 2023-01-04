printing
print
	| currentNode |
	currentNode := head.
	[ currentNode isNil ] whileFalse: [
		Transcript show: currentNode value; cr.
		currentNode := currentNode next ]