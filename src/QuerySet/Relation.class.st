Class {
	#name : #Relation,
	#superclass : #QuerySet,
	#instVars : [
		'name'
	],
	#category : #'QuerySet-Core'
}

{ #category : #'instance creation' }
Relation class >> named: aName [
	^ self new name: aName
]

{ #category : #accessing }
Relation >> name [
	^ name
]

{ #category : #accessing }
Relation >> name: anObject [
	name := anObject
]

{ #category : #printing }
Relation >> printString [
	^ self name
]

{ #category : #'as yet unclassified' }
Relation >> relation [
	^ self
]
