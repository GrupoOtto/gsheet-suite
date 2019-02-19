Class {
	#name : #GSheet,
	#superclass : #Object,
	#instVars : [
		'id',
		'title',
		'spreadsheet'
	],
	#category : #'GSheets-Core'
}

{ #category : #'instance creation' }
GSheet class >> fromDictionary: properties for: aSpreadsheet [
	^ self new id: (properties at: 'sheetId'); title: (properties at: 'title'); spreadsheet: aSpreadsheet; yourself 
]

{ #category : #running }
GSheet >> execute: aQuery [
	^ self map: (GSheets new execute: aQuery for: self)
]

{ #category : #accessing }
GSheet >> id [
	^ id
]

{ #category : #accessing }
GSheet >> id: anObject [
	id := anObject
]

{ #category : #running }
GSheet >> map: aSheet [
| rows cols |
	cols := aSheet at: #cols.
	rows := aSheet at: #rows.
	^ GTable new
		addAll:
			(rows
				collect: [ :row | 
					| dictionary |
					dictionary := Dictionary new.
					dictionary at: 'sheet' put: self.
					cols doWithIndex: [ :c :index | dictionary at: (c at: #label) put: (GField value: ((row at: #c) at: index) format: (c at: #type) for: dictionary) ].
					dictionary ]);
		yourself
]

{ #category : #accessing }
GSheet >> printOn: aStream [
	aStream
		nextPutAll: self title;
		nextPutAll: ' ('.
	super printOn: aStream.
	aStream nextPutAll: ')'
]

{ #category : #accessing }
GSheet >> spreadsheet [
	^ spreadsheet
]

{ #category : #accessing }
GSheet >> spreadsheet: anObject [
	spreadsheet := anObject
]

{ #category : #'as yet unclassified' }
GSheet >> spreadsheetId [
	^ self spreadsheet id
]

{ #category : #accessing }
GSheet >> title [
	^ title
]

{ #category : #accessing }
GSheet >> title: anObject [
	title := anObject
]
