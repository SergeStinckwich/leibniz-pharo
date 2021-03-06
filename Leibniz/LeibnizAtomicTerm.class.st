"
I represent atomic terms, such as numbers and strings.
"
Class {
	#name : #LeibnizAtomicTerm,
	#superclass : #LeibnizTerm,
	#instVars : [
		'value'
	],
	#category : #'Leibniz-3-Terms'
}

{ #category : #'instance creation' }
LeibnizAtomicTerm class >> value: aString forSignature: aSignature [
	^self basicNew
			initializeWithValue: aString forSignature: aSignature;
			yourself

]

{ #category : #initialization }
LeibnizAtomicTerm >> initializeWithValue: aString forSignature: aSignature [
	signature := aSignature.
	value := aString.

]

{ #category : #printing }
LeibnizAtomicTerm >> printAsLeibnizSyntaxOn: aStream [
	value printOn: aStream

]

{ #category : #accessing }
LeibnizAtomicTerm >> sort [
	^self subclassResponsibility
]
