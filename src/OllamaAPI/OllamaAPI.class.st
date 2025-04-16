Class {
	#name : 'OllamaAPI',
	#superclass : 'Object',
	#instVars : [
		'model',
		'host',
		'port',
		'stream',
		'temperature',
		'num_predict',
		'top_k',
		'top_p',
		'format'
	],
	#category : 'OllamaAPI',
	#package : 'OllamaAPI'
}

{ #category : 'adding' }
OllamaAPI >> addParameterTo: paramDic [

	| options |
	options := Dictionary new.
	paramDic at: #options put: options.
	self temperature ifNotNil: [ :var |
		options at: #temperature put: var asFloat ].
	self num_predict ifNotNil: [ :var |
		options at: #num_predict put: var ].
	self top_k ifNotNil: [ :var | options at: #top_k put: var ].
	self top_p ifNotNil: [ :var | options at: #top_p put: var ]
]

{ #category : 'adding' }
OllamaAPI >> buildQuery: aTextQuery [

	^ aTextQuery
]

{ #category : 'adding' }
OllamaAPI >> buildReRankPayloadWith: candidateStrings context: textSoFar [
    "    Construct JSON or text that tells Ollama how to rank these candidates."
    | joinedCandidates |
    joinedCandidates := ''.
    candidateStrings do: [:each |
        joinedCandidates := joinedCandidates , each , String cr].
    ^ 'Rank these completions in best order:' , String cr
      , joinedCandidates
      , String cr
      , 'Context: ', textSoFar
]
