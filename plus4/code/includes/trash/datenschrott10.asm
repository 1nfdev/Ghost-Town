
                    rts
                    
!byte $ff

m399f:
                    cmp #$df
                    beq $39a5
                    inc $0a
                    lda ($a7),y
                    jmp $38b7

; ==============================================================================

!byte $06, $03, $12, $21, $03, $03, $12, $21, $03, $03, $15, $21, $03, $03, $0f, $21
!byte $15, $1e, $06, $06, $06, $03, $12, $21, $03, $03, $09, $21, $03, $03, $12, $21
!byte $03, $03, $0c, $21, $03, $03, $12, $21, $0c, $03, $0c, $20, $0c, $03, $0c, $21
!byte $0c, $03, $09, $15, $03, $03, $06, $21, $03, $03, $03, $21, $06, $03, $12, $21
!byte $03, $03, $03, $1d, $03, $03, $06, $21, $03, $03