Class {
	#name : #GSpreadsheet,
	#superclass : #Object,
	#instVars : [
		'properties',
		'sheets',
		'id'
	],
	#category : #'GSheets-Core'
}

{ #category : #'instance creation' }
GSpreadsheet class >> fromDictionary: aDictionary [
	^ self new
		id: (aDictionary at: 'spreadsheetId');
		loadSheets: ((aDictionary at: 'sheets') collect: [ :sheet | sheet at: 'properties' ]);
		properties: (aDictionary at: 'properties');
		yourself
]

{ #category : #accessing }
GSpreadsheet >> id [
	^ id
]

{ #category : #accessing }
GSpreadsheet >> id: anObject [
	id := anObject
]

{ #category : #private }
GSpreadsheet >> loadSheets: anArray [
	self
		sheets: (anArray collect: [ :props | GSheet fromDictionary: props for: self ])
]

{ #category : #accessing }
GSpreadsheet >> properties [
	^ properties
]

{ #category : #accessing }
GSpreadsheet >> properties: anObject [
	properties := anObject
]

{ #category : #accessing }
GSpreadsheet >> sheets [
	^ sheets
]

{ #category : #accessing }
GSpreadsheet >> sheets: anObject [
	sheets := anObject
]
