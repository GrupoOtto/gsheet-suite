Class {
	#name : #Expresion,
	#superclass : #Object,
	#instVars : [
		'a',
		'op'
	],
	#category : #'QuerySet-Descriptors'
}

{ #category : #'logical operations' }
Expresion >> not [
	^ Expresion for: self op: #not
]
