tests
testMultipleElements

	| dll |
	dll := DoublyLinkedList new.

	"Test adding multiple elements to the list"
	dll add: 5.
	dll add: 10.
	dll add: 15.
	self assert: dll head value equals: 5.
	self assert: dll tail value equals: 15