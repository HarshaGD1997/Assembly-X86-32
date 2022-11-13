.386
.model flat

UBYTE TYPEDEF PTR BYTE
UWORD TYPEDEF PTR WORD
UDWORD TYPEDEF PTR DWORD

.data
byteArr BYTE 11h,2h,5h
wordArr WORD 6,7,8
dwordArr DWORD 3,4

ptb UBYTE byteArr
ptw UWORD wordArr
ptd UDWORD dwordArr

.code
start PROC
	mov esi,ptb
	mov al,[esi]
	mov esi,ptw
	mov ax,[esi]
	mov esi,ptd
	mov eax,[esi]
	ret
start endp
end start