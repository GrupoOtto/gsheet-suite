Class {
	#name : #Selection,
	#superclass : #QuerySet,
	#instVars : [
		'criteria',
		'querySet'
	],
	#category : #'QuerySet-Core'
}

{ #category : #'instance creation' }
Selection class >> for: querySet with: criteria [
^ self new for: querySet with: criteria 
]

{ #category : #accessing }
Selection >> criteria [
	^ criteria
]

{ #category : #accessing }
Selection >> criteria: anObject [
	criteria := anObject
]

{ #category : #accessing }
Selection >> for: qs with: description [
self querySet: qs.
self criteria: description.
]

{ #category : #printing }
Selection >> printString [
	^ 'Select ' , self criteria printString , ' (' , self querySet printString , ')'
]

{ #category : #accessing }
Selection >> querySet [
	^ querySet
]

{ #category : #accessing }
Selection >> querySet: anObject [
	querySet := anObject
]

{ #category : #'as yet unclassified' }
Selection >> relation [
	^ self querySet relation
]
