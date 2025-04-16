Class {
	#name : 'BaselineOfOllamaReRanking',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfOllamaReRanking',
	#package : 'BaselineOfOllamaReRanking'
}

{ #category : 'baselines' }
BaselineOfOllamaReRanking >> baseline: spec [ 

	<baseline>
	spec for: #common do: [
		self defineDependencies: spec.
		self definePackages: spec.
		self defineGroups: spec ]


]

{ #category : 'baselines' }
BaselineOfOllamaReRanking>> defineDependencies: spec [ 

	spec
		baseline: 'NeoJSON'
		with: [ spec repository: 'github://svenvc/NeoJSON/repository' ]

]

{ #category : 'baselines' }
BaselineOfOllamaReRanking >> defineGroups: spec [ 

]

{ #category : 'baselines' }
BaselineOfOllamaReRanking >> definePackages: spec [ 

	spec 
		package: 'OllamaAPI' 
		with: [ spec requires: #( 'NeoJSON' ) ].
	spec
		package: 'OllamaReRanking'
		with: [ spec requires: #( 'OllamaAPI' ) ].

]
