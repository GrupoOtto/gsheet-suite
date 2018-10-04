Class {
	#name : #BaselineOfGSheetSuite,
	#superclass : #BaselineOf,
	#category : #BaselineOfGSheetSuite
}

{ #category : #baselines }
BaselineOfGSheetSuite >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ "Packages"
			spec package: 'QuerySet-Descriptors'.
			spec package: 'QuerySet-Core' with: [ spec requires: 'QuerySet-Descriptors' ].
			spec package: 'QuerySet-Tests' with: [ spec requires: 'QuerySet-Core' ].
			"Groups"
			spec
				group: 'QuerySet' with: #('QuerySet-Core' 'QuerySet-Tests');
				group: 'Core' with: #('QuerySet-Core');
				group: 'Tests' with: #('QuerySet-Tests').
			self neoJson: spec.
			self zinc: spec ]
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
