; definitiv kein Schrott
; Aber z.T. um ein Byte geshifted

                    rts
                    
!byte $ff

m399f:
                    cmp #$df
                    beq $39a5
                    inc $0a
                    lda ($a7),y
                    jmp $38b7

; ==============================================================================

                    asl $03
                    !byte $12
                    and ($03,x)
                    !byte $03
                    !byte $12
                    and ($03,x)
                    !byte $03
                    ora $21,x
                    !byte $03
                    !byte $03
                    !byte $0f
                    and ($15,x)
                    asl $0606,x
                    asl $03
                    !byte $12
                    and ($03,x)
                    !byte $03
                    ora #$21
                    !byte $03
                    !byte $03
                    !byte $12
                    and ($03,x)
                    !byte $03
                    !byte $0c
                    and ($03,x)
                    !byte $03
                    !byte $12
                    and ($0c,x)
                    !byte $03
                    !byte $0c
                    jsr $030c
                    !byte $0c
                    and ($0c,x)
                    !byte $03
                    ora #$15
                    !byte $03
                    !byte $03
                    asl $21
                    !byte $03
                    !byte $03
                    !byte $03
                    and ($06,x)
                    !byte $03
                    !byte $12
                    and ($03,x)
                    !byte $03
                    !byte $03
                    ora $0303,x
                    asl $21
                    !byte $03
                    !byte $03