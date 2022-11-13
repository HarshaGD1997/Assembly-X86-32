.386
.model flat

.data
intArray dword 1000h,5000h,6000h

.code 
start proc
	mov edi, OFFSET intArray
	mov ecx, LENGTHOF intArray
	mov eax,0

LP:
	add eax,[edi]
	add edi, TYPE intArray
	LOOP LP

	ret
start endp
end start