Class {
	#name : #GoogleSheetQueryApi,
	#superclass : #GoogleVisualizationApi,
	#category : #'GSheets-API'
}

{ #category : #api }
GoogleSheetQueryApi >> apiName [
	^ 'sheets'
]

{ #category : #api }
GoogleSheetQueryApi >> basePath [
	^ 'https://docs.google.com/spreadsheets/d/'
]

{ #category : #execution }
GoogleSheetQueryApi >> execute: query for: aSheet [
	^ self toJson: ((self
		makeRequestTo: (self urlFor: aSheet with: query)
		usingMethod: #GET
		with: Dictionary new) at: 2)
]

{ #category : #'as yet unclassified' }
GoogleSheetQueryApi >> parse: response [
	^ response
		copyFrom: '/*O_o*/  google.visualization.Query.setResponse(' size
		to: response size - ');' size
]

{ #category : #accessing }
GoogleSheetQueryApi >> scopes [
	^ OrderedCollection withAll: #('https://www.googleapis.com/auth/spreadsheets.readonly')
]

{ #category : #'as yet unclassified' }
GoogleSheetQueryApi >> toJson: response [
	^ NeoJSONReader fromString: (self parse: response)
]

{ #category : #'as yet unclassified' }
GoogleSheetQueryApi >> urlFor: aSheet with: query [
	^ self basePath , aSheet spreadsheetId , '/gviz/tq?gid=' , aSheet id printString, '&tq=' , query
]
