adding
remove: anObject
	"Remove the first node in the list with the given value"

	| currentNode |
	currentNode := head.
	[ currentNode isNil ] whileFalse: [
		currentNode value = anObject ifTrue: [
			currentNode prev
				ifNil: [ head := currentNode next ]
				ifNotNil: [ currentNode prev next: currentNode next ].
			currentNode next
				ifNil: [ tail := currentNode prev ]
				ifNotNil: [ currentNode next prev: currentNode prev ].
			^ currentNode ].
		currentNode := currentNode next ]