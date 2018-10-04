Class {
	#name : #NotExpresion,
	#superclass : #Expresion,
	#category : #'QuerySet-Descriptors'
}

{ #category : #printing }
NotExpresion >> printString [
	^ 'not(' , self subject printString , ')'
]
