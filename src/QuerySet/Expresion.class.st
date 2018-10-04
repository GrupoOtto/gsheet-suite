Class {
	#name : #Expresion,
	#superclass : #Object,
	#instVars : [
		'subject'
	],
	#category : #'QuerySet-Descriptors'
}

{ #category : #'instance creation' }
Expresion class >> for: anObject [
	^ self new for: anObject
]

{ #category : #testing }
Expresion class >> is: anObject equal: anotherObject [
	^ Comparison for: anObject and: anotherObject with: #=
]

{ #category : #testing }
Expresion class >> is: anObject like: anotherObject [
	^ Comparison for: anObject and: anotherObject with: #like
]

{ #category : #testing }
Expresion class >> not: anObject [
	^ NotExpresion for: anObject 
]

{ #category : #'instance creation' }
Expresion >> for: anObject [
	subject := anObject 
]

{ #category : #'logical operations' }
Expresion >> not [
	^ Expresion not: self
]

{ #category : #accessing }
Expresion >> subject [
	^ subject
]
