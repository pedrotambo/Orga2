; En mac, las llamadas a funcion llevan _ adelante
; global _borrarUltimo
; global _agregarPrimero
; extern _free
; extern _malloc

global borrarUltimo
global agregarPrimero
extern free
extern malloc

%define NULL 0
; Definir los offsets para nodo
%define offset_dato 0
%define offset_prox 8
; Definir los offsets para lista
%define offset_primero 0
; Definir el tamaño de un nodo para malloc
%define tam_nodo 16

; Recibo por RDI un puntero a la estructura lista
borrarUltimo:
	; Armo stackframe
	; Recordar! Si modifico rbx, r12, r13, r14 o r15 debo pushearlos
	; Alinear pila si está desalineada
	
	push rbp
	mov rbp, rsp
	push rbx
	push r12


	; Me fijo si la lista tiene algun elemento en proximo, sino salto a finBorrar
	cmp qword[rdi + offset_primero], NULL
	je finBorrar

	; rbx va a tener siempre la direccion de memoria al proximo nodo
	
	mov rbx, [rdi + offset_primero] 
	

	lea r12, [rdi + offset_primero] 

	ciclo:
		; me fijo si el nodo con el que estoy en rbx es el ultimo
		; para eso comparo si el proximo es null
		cmp qword[rbx + offset_prox], NULL
		je borrado
		; si llego acá, el proximo no es null. Avanzo
		lea r12, [rbx + offset_prox]
		mov rbx, [r12]

	borrado:
		; pongo en RDI la direccion del nodo a ser borrado
		mov rdi, rbx

		call free

		; pongo el puntero al que apuntaba el ultimo en NULL
		mov qword [r12], NULL



finBorrar:
	pop r12
	pop rbx
	pop rbp
	ret

; Recibo por RDI un puntero a la estructura lista
; Recibo por RSI el dato, un entero (4 bytes), cuidado al copiar datos!
agregarPrimero:
	; Armo stackframe
	; Recordar! Si modifico rbx, r12, r13, r14 o r15 debo pushearlos
	; Alinear pila si está desalineada

	push rbp
	mov rbp, rsp
	push rbx
	push r12
	; Veamos si me viene la lista vacía, solo el puntero por RDI que apunta a null
	; Por RSI me viene el INT (ESI)
	
	; Guardo el puntero al Struct porque voy a necesitar rdi
	mov rbx, rdi

	; Guardo el dato a mater en el nodo
	mov r12d, esi

	; Pongo en rdi el tamaño del nodo
	mov rdi, tam_nodo
	
	call malloc
		
	; Comprobar si malloc no devolvió NULL
	cmp rax, NULL
	je finAgregar

	mov [rax + offset_dato], r12d ; pongo el dato en el nodo

	mov  r12, [rbx + offset_primero] ; consigo en r12 el puntero al primero anterior

	mov [rax + offset_prox], r12 ; apunto el nuevo nodo al primer nodo anterior

	mov [rbx + offset_primero], rax ; hago que la lista comienze en el nuevo nodo






finAgregar:
	pop r12
	pop rbx
	pop rbp
	ret
