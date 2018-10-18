Class {
	#name : #GSheets,
	#superclass : #Object,
	#instVars : [
		'api',
		'queryApi'
	],
	#category : #'GSheets-Core'
}

{ #category : #generated }
GSheets >> api [
	^ api
]

{ #category : #execution }
GSheets >> execute: aQuery for: aSheet [
	^ (self queryApi execute: aQuery for: aSheet) at: 'table'
]

{ #category : #generated }
GSheets >> get: id [
	^ GSpreadsheet fromDictionary: ((self api get: id) at: 2)
]

{ #category : #generated }
GSheets >> initialize [
	api := GoogleSheetsApiSpreadsheets new.
	api authenticate.
	queryApi := GoogleSheetQueryApi new.
	queryApi authenticate
]

{ #category : #accessing }
GSheets >> queryApi [
	^ queryApi
]
