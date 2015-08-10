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

	mov r4, #0
	mov r5, #1

  .L1:
	cmp r0, #1
	bgt .L2

        mov r0, r5        
	pop {r3, r4, r5, pc}		@EPILOG

  .L2:
	mov r6, r4
	mov r4, r5
	add r5, r5, r6
	sub r0, r0, #1
	bl .L1
	.size fibonacci, .-fibonacci
	.end
