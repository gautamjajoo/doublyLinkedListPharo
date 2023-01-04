adding
add: addNewNode
	"Add a new node to the end of the list with the given value"

	| newNode |
	newNode := Node new.
	newNode value: addNewNode.

	"sets the prev pointer to the current tail node"
	newNode prev: tail.

	"sets the next pointer to nil"
	newNode next: nil.

	"If tail is nil i.e. list is empty, then the head is the first node,
	and if the tail is not nil i.e. list is not empty, then the next of tail is newNode"
	tail ifNil: [ head := newNode ] ifNotNil: [ tail next: newNode ].
	tail := newNode