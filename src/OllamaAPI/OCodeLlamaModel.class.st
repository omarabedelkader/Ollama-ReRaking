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

{ #category : 'as yet unclassified' }
OCodeLlamaModel class >> code [

	<ollamaInit: 'codellama:code'>
	^ self new
		  tag: 'code';
		  yourself
]

{ #category : 'as yet unclassified' }
OCodeLlamaModel class >> code7b [

	<ollamaInit: 'codellama:7b-code'>
	^ self new
		  tag: '7b-code';
		  yourself
]

{ #category : 'accessing' }
OCodeLlamaModel >> name [

	^ 'codellama'
]
