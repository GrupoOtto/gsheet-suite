Class {
	#name : #QuerySet,
	#superclass : #Object,
	#category : #'QuerySet-Core'
}

{ #category : #'brick-interactable-actions' }
QuerySet >> collect: projection [
	
]

{ #category : #'as yet unclassified' }
QuerySet >> describe: aBlock [
	^ aBlock cull: (RowDescriptor for: self relation)
]

{ #category : #'brick-interactable-actions' }
QuerySet >> reject: criteria [
	^ self select: [ :row | (criteria cull: row) not ]
]

{ #category : #'as yet unclassified' }
QuerySet >> relation [
	^ self subclassResponsibility 
]

{ #category : #'brick-interactable-actions' }
QuerySet >> select: criteria [
	^ Selection for: self with: (self describe: criteria)
]

{ #category : #'brick-interactable-actions' }
QuerySet >> size [
	
]
