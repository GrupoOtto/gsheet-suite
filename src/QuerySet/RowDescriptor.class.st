Class {
	#name : #RowDescriptor,
	#superclass : #Object,
	#instVars : [
		'relation'
	],
	#category : #'QuerySet-Descriptors'
}

{ #category : #'instance creation' }
RowDescriptor class >> for: aRelation [
	^ self new relation: aRelation
]

{ #category : #accessing }
RowDescriptor >> @ aName [
	^ self at: aName
]

{ #category : #accessing }
RowDescriptor >> _relation [
	^ relation
]

{ #category : #accessing }
RowDescriptor >> at: aName [
	^ FieldDescriptor for: self named: aName
]

{ #category : #'reflective operations' }
RowDescriptor >> doesNotUnderstand: aMessage [
	aMessage hasArguments
		ifTrue: [ self @ aMessage selector ]
		ifFalse: [ ^ super doesNotUnderstand: aMessage ]
]

{ #category : #accessing }
RowDescriptor >> relation: anObject [
	relation := anObject
]
