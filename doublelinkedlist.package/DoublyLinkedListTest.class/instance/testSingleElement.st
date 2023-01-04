tests
testSingleElement

	| dll |
	dll := DoublyLinkedList new.

	"Test adding a single element to the list"
	dll add: 5.
	self assert: dll head value equals: 5.
	self assert: dll tail value equals: 5