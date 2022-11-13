.386
.model flat

comment !	for ax register for 16byte length
.data
	num1 word 00000005h
	num2 word 00000005h
	sum word ?
!

.data
	num1 byte 00000005h
	num2 byte 00000005h
	sum byte 00000000h
	

.code

start PROC
	mov al,num1
	add al,num2
	dec al
	mov sum,al

	ret
start endp
end start