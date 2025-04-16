Class {
	#name : 'BaselineOfOllama-ReRaking',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfOllama-ReRaking',
	#package : 'BaselineOfOllama-ReRaking'
}

{ #category : 'baselines' }
BaselineOfOllama-ReRaking >> baseline: spec [ 

	<baseline>
	spec for: #common do: [
		self defineDependencies: spec.
		self definePackages: spec.
		self defineGroups: spec ]


]

{ #category : 'baselines' }
BaselineOfOllama-ReRaking >> defineDependencies: spec [ 

	spec
		baseline: 'NeoJSON'
		with: [ spec repository: 'github://svenvc/NeoJSON/repository' ]

]

{ #category : 'baselines' }
BaselineOfOllama-ReRaking >> defineGroups: spec [ 

]

{ #category : 'baselines' }
BaselineOfOllama-ReRaking >> definePackages: spec [ 

	spec 
		package: 'Ollama-API' 
		with: [ spec requires: #( 'NeoJSON' ) ].
	spec
		package: 'OllamaAPI'
		with: [ spec requires: #( 'Ollama-ReRanking' ) ].

]
