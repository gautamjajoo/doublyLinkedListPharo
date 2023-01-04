tests
testRemoveElement

	| dll |
	dll := DoublyLinkedList new.

	dll add: 5.
	dll add: 10.
	dll add: 15.

	"Test removing an element from the list"
	dll remove: 15.
	self assert: dll head value equals: 5.
	self assert: dll tail value equals: 10