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
	^ Expresion is: self equal: anObject 
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
	^ Expresion is: self like: anObject 
]

{ #category : #accessing }
FieldDescriptor >> name [
	^ name
]

{ #category : #printing }
FieldDescriptor >> printString [
	^ self row printString, '.' , self name
]

{ #category : #accessing }
FieldDescriptor >> row [
	^ row
]
