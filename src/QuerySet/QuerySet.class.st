Class {
	#name : #QuerySet,
	#superclass : #Object,
	#category : #'QuerySet-Core'
}

{ #category : #'brick-interactable-actions' }
QuerySet >> collect: projection [
	
]

{ #category : #'brick-interactable-actions' }
QuerySet >> reject: criteria [
	
]

{ #category : #'brick-interactable-actions' }
QuerySet >> select: criteria [
	^ Selection for: self with: criteria
]

{ #category : #'brick-interactable-actions' }
QuerySet >> size [
	
]
