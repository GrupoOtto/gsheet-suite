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
	^ GSheets new execute: aQuery for: self
]

{ #category : #accessing }
GSheet >> id [
	^ id
]

{ #category : #accessing }
GSheet >> id: anObject [
	id := anObject
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
