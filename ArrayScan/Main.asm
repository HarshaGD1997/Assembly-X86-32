.386
.model flat

.data
;intArray SWORD 0,0,0,0,0,5,3,-2
intArray SWORD 0,0,0,-45,0,3
.code
start proc
	mov edi, OFFSET intArray
	mov ecx, LENGTHOF intArray
	
LOOP1:
	cmp WORD PTR[edi],0
	jnz found
	add edi,2
	loop LOOP1
	jmp notFound

Found:
	movsx eax,WORD PTR[edi]
	jmp quit

notFound:
	mov eax,00000010

quit:
	ret

start endp
end start