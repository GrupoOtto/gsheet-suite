Class {
	#name : #Comparison,
	#superclass : #Expresion,
	#instVars : [
		'member',
		'operation'
	],
	#category : #'QuerySet-Descriptors'
}

{ #category : #'instance creation' }
Comparison class >> for: anObject and: anotherObject with: operation [
	^ (super for: anObject) and: anotherObject with: operation 
]

{ #category : #'as yet unclassified' }
Comparison >> and: anotherObject with: anOperation [
	member := anotherObject.
	operation := anOperation 
]

{ #category : #accessing }
Comparison >> member [
	^ member
]

{ #category : #accessing }
Comparison >> operation [
	^ operation
]

{ #category : #printing }
Comparison >> printString [
	^ self subject printString , ' ' , self operation , ' ' , self member printString
]
