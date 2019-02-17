Class {
	#name : #GField,
	#superclass : #Object,
	#instVars : [
		'value',
		'formatted',
		'row',
		'format'
	],
	#category : #'GSheets-Core'
}

{ #category : #'instance creation' }
GField class >> value: aValue format: aFormat for: aRow [
	^ self new value: aValue format: aFormat for: aRow
]

{ #category : #accessing }
GField >> format [
	^ format
]

{ #category : #accessing }
GField >> format: aFormat [
	format := aFormat
]

{ #category : #accessing }
GField >> formatted [
	^ formatted 
]

{ #category : #accessing }
GField >> formatted: anObject [
	formatted := anObject
]

{ #category : #accessing }
GField >> row [
	^ row
]

{ #category : #'private ' }
GField >> row: aDictionary [
	row := aDictionary
]

{ #category : #accessing }
GField >> value [
	self format = 'date'
		ifTrue: [ ^ self valueAsDate ].
	^ value
]

{ #category : #'private ' }
GField >> value: aValue [
	value := aValue.
	self format = 'date'
		ifTrue: [ value:= (self valueAsDate:aValue) ]
]

{ #category : #'instance creation' }
GField >> value: aValue format: aFormat for: aRow [
	| block |
	block := [ :key :default | [ aValue at: key ] ifError: [ default ] ].
	^ self
		value: (block cull: #v cull: nil);
		formatted: (block cull: #f cull: (self value));
		format: aFormat;
		row: aRow
]

{ #category : #accessing }
GField >> valueAsDate: aValue [
	^ Date
		readFrom:
			(aValue readStream
				upTo: $(;
				upTo: $)) readStream
		pattern: 'dd/mm/yyyy'
]
