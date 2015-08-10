	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}

        mov r6, #0 @prevPrev
        mov r7, #1 @prev
        mov r1, #0 @result
	mov r2, #2 @i

  .L1:
	add r1, r6, r7 @result = prev + prevPrev 
	mov r6, r7  @ prevPrev = prev
        mov r7, r1  @ prev = result
	add r2, r2, #1

	cmp r2, r0
        ble .L1
	
        mov r0, r1
        pop {r3, r4, r5, pc}            @EPILOG

	.size fibonacci, .-fibonacci
	.end
