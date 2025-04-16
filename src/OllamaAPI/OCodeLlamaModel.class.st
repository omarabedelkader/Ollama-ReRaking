Class {
	#name : 'OCodeLlamaModel',
	#superclass : 'OModel',
	#category : 'OllamaAPI',
	#package : 'OllamaAPI'
}

{ #category : 'as yet unclassified' }
OCodeLlamaModel class >> b7 [

	<ollamaInit: 'codellama:7b'>
	^ self new
		  tag: '7b';
		  yourself
]

{ #category : 'accessing' }
OCodeLlamaModel >> name [

	^ 'codellama'
]
