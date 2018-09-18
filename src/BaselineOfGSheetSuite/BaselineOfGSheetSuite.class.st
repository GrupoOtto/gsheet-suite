Class {
	#name : #BaselineOfGSheetSuite,
	#superclass : #BaselineOf,
	#category : #BaselineOfGSheetSuite
}

{ #category : #baselines }
BaselineOfGSheetSuite >> baseline: spec [
	<baseline>
	spec for: #common do: [ self neoJson: spec. self zinc: spec ]
]

{ #category : #dependencies }
BaselineOfGSheetSuite >> neoJson: spec [
	spec
		project: 'Neo'
		with: [ spec
				className: #ConfigurationOfNeoJSON;
				versionString: #stable;
				repository: 'http://mc.stfx.eu/Neo' ]
]

{ #category : #dependencies }
BaselineOfGSheetSuite >> zinc: spec [
	spec
		project: 'Zinc'
		with: [ spec 
				className: #ConfigurationOfZincHTTPComponents;
				versionString: #stable;
				repository: 'http://mc.stfx.eu/ZincHTTPComponents' ]
]
