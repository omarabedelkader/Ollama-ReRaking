Class {
	#name : 'BaselineOfAIChatPharo',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfOllamaAPI',
	#package : 'BaselineOfOllamaAPI'
}

{ #category : 'baselines' }
BaselineOfAIChatPharo >> baseline: spec [ 

	<baseline>
	spec for: #common do: [
		self defineDependencies: spec.
		self definePackages: spec.
		self defineGroups: spec ]


]

{ #category : 'baselines' }
BaselineOfAIChatPharo >> defineDependencies: spec [ 

	spec
		baseline: 'NeoJSON'
		with: [ spec repository: 'github://svenvc/NeoJSON/repository' ]

]

{ #category : 'baselines' }
BaselineOfAIChatPharo >> defineGroups: spec [ 

]

{ #category : 'baselines' }
BaselineOfAIChatPharo >> definePackages: spec [ 

	spec 
		package: 'Ollama-API' 
		with: [ spec requires: #( 'NeoJSON' ) ].
	spec
		package: 'OllamaAPI'
		with: [ spec requires: #( 'Ollama-ReRanking' ) ].

]
