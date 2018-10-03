Class {
	#name : #FieldDescriptor,
	#superclass : #Object,
	#instVars : [
		'name',
		'row'
	],
	#category : #'QuerySet-Descriptors'
}

{ #category : #'instance creation' }
FieldDescriptor class >> for: aRow named: aName [
	^ self new for: aRow named: aName
]

{ #category : #comparing }
FieldDescriptor >> , anObject [
	
]

{ #category : #comparing }
FieldDescriptor >> < anObject [
	
]

{ #category : #comparing }
FieldDescriptor >> <= anObject [
	
]

{ #category : #comparing }
FieldDescriptor >> = anObject [
]

{ #category : #comparing }
FieldDescriptor >> > anObject [
	
]

{ #category : #comparing }
FieldDescriptor >> >= anObject [
	
]

{ #category : #initialization }
FieldDescriptor >> for: aRow named: aName [
	name:= aName.
	row:= aRow
]

{ #category : #comparing }
FieldDescriptor >> like: anObject [
	
]

{ #category : #accessing }
FieldDescriptor >> name [
	^ name
]

{ #category : #accessing }
FieldDescriptor >> row [
	^ row
]
