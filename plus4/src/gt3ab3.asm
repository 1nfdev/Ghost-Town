; input filename:    gt3ab3.prg
; skip bytes:        2

code_start          = 0x3AB3

                    !cpu 6502
                    *= 0x0f90
datenschrott01:
                    !source "datenschrott01.asm"
vermutlichcode:
                    sei
                    ldy #0x00
                    sty 0x03
                    ldx #0x2f
                    lda #0x3f
                    sta 0x04
                    lda (0x03),y
                    eor 0x0f90,x
                    sta (0x03),y
                    iny
                    bne 0x0fcb
                    dec 0x04
                    dex
                    bpl 0x0fcb
                    sei
                    jsr 0xff8a
                    jsr 0x8117
                    lda #0xfb
                    sta 0x0327
                    lda #0xb4
                    sta 0x0326
                    sta 0x0508
                    jsr 0xe3b0
                    jsr 0xe378
                    cli
                    lda #0x11
                    sta 0xff13
                    jsr 0xe378
                    jmp 0x3ab3
                    jsr 0xc56b
                    lda #0x3f
                    sta 0xa8
                    lda #0x08
                    cpy #0x00
                    beq 0x1017
                    clc
                    adc #0x28
                    bcc 0x1014
                    inc 0xa8
                    dey
                    bne 0x100d
                    sta 0xa7
                    jsr 0x3a9d
                    ldy #0x27
                    lda (0xa7),y
                    sta 0x0db8,y
                    lda #0x07
                    sta 0x09b8,y
                    dey
                    bne 0x101e
                    rts
                    !byte 0x00
                    sta 0xff19
                    rts
                    jsr 0x11cc
                    cpy #0x03
                    bne 0x10b1
                    jsr 0x1003
                    jsr 0xda89
                    jsr 0xda89
                    ldy #0x01
                    jsr 0x1003
                    ldx #0x00
                    ldy #0x00
                    beq 0x105f
                    lda 0x0db9,x
                    clc
                    adc #0x80
                    sta 0x0db9,x
                    lda 0x0d88,y
                    clc
                    adc #0x80
                    sta 0x0d88,y
                    rts
                    jsr 0x104c
                    sty 0x02
                    stx 0x04
                    jsr 0x10a7
                    jsr 0x104c
                    jsr 0x10a7
                    lda #0xfd
                    sta 0xff08
                    lda 0xff08
                    lsr
                    lsr
                    lsr
                    bcs 0x1081
                    cpx #0x00
                    beq 0x1081
                    dex
                    lsr
                    bcs 0x1089
                    cpx #0x25
                    beq 0x1089
                    inx
                    and #0x08
                    bne 0x105f
                    lda 0x0db9,x
                    cmp #0xbc
                    bne 0x109c
                    cpy #0x00
                    beq 0x1099
                    dey
                    jmp 0x105f
                    sta 0x0d88,y
                    iny
                    cpy #0x05
                    bne 0x105f
                    jmp 0x10b4
                    ldy #0x35
                    jsr 0x3a76
                    ldy 0x02
                    ldx 0x04
                    rts
                    jmp 0x1155
                    ldx #0x05
                    lda 0x0d87,x
                    cmp 0x10cb,x
                    bne 0x10c4
                    dex
                    bne 0x10b6
                    jmp 0x10d1
                    ldy #0x05
                    jsr 0x1003
                    jmp 0x3ef9
                    bmi 0x1104
                    and (0x33),y
                    sec
                    jsr 0x3a7d
                    jsr 0x3a17
                    jsr 0x3b02
                    jmp 0x3b4c
                    jsr 0x0854
                    ora 0x12
                    ora 0x20
                    ora #0x13
                    jsr 0x2001
                    !byte 0x0b
                    ora 0x19
                    jsr 0x0e09
                    jsr 0x0814
                    ora 0x20
                    !byte 0x02
                    !byte 0x0f
                    !byte 0x14
                    !byte 0x14
                    !byte 0x0c
                    ora 0x20
                    and (0x20,x)
                    jsr 0x2020
                    jsr 0x2020
                    jsr 0x2020
                    jsr 0x2020
                    !byte 0x54
                    php
                    ora 0x12
                    ora 0x20
                    ora #0x13
                    jsr 0x2001
                    !byte 0x0b
                    ora 0x19
                    jsr 0x0e09
                    jsr 0x0814
                    ora 0x20
                    !byte 0x03
                    !byte 0x0f
                    asl 0x06
                    ora #0x0e
                    jsr 0x2021
                    jsr 0x2020
                    jsr 0x2020
                    !byte 0x54
                    php
                    ora 0x12
                    ora 0x20
                    ora #0x13
                    jsr 0x2001
                    !byte 0x02
                    !byte 0x12
                    ora 0x01
                    !byte 0x14
                    php
                    ora #0x0e
                    !byte 0x07
                    jsr 0x1514
                    !byte 0x02
                    ora 0x20
                    and (0x20,x)
                    jsr 0x2020
                    jsr 0x2020
                    jsr 0x2020
                    jsr 0xc020
                    !byte 0x00
                    bne 0x11a2
                    jsr 0x1000
                    ldx 0x3051
                    cpx #0x01
                    bne 0x1165
                    lda #0x28
                    cpx #0x05
                    bne 0x116b
                    lda #0x29
                    cpx #0x0a
                    bne 0x1171
                    lda #0x47
                    nop
                    nop
                    nop
                    jsr 0x174f
                    cpx #0x0f
                    bne 0x1185
                    lda #0x45
                    sta 0x0a6f
                    lda #0x0f
                    sta 0x0e6f
                    sta 0x0e1f
                    lda #0x48
                    sta 0x0a1f
                    lda #0xfd
                    sta 0xff08
                    lda 0xff08
                    and #0x80
                    bne 0x118d
                    jsr 0x3a7d
                    jsr 0x3a2d
                    jmp 0x3b4c
                    cpy #0x02
                    bne 0x11ac
                    jsr 0x1000
                    jmp 0x118d
                    cpy #0x04
                    bne 0x11bb
                    lda 0x3953
                    clc
                    adc #0x40
                    sta 0x3fc6
                    bne 0x11a6
                    dey
                    dey
                    dey
                    dey
                    dey
                    lda #0x10
                    sta 0xa8
                    lda #0xdd
                    jsr 0x1009
                    jmp 0x118d
                    jsr 0x3a9d
                    jmp 0xc56b
                    nop
                    nop
                    nop
                    nop
                    nop
                    nop
                    nop
                    nop
                    jsr 0x3846
                    jmp 0x3b4c
                    ldx #0x00
                    lda 0x033c,x
                    cmp #0x1e
                    bcc 0x11ed
                    cmp #0xdf
                    bne 0x11f5
                    inx
                    cpx #0x09
                    bne 0x11e2
                    jmp 0x3b4c
                    ldy 0x3051
                    bne 0x120a
                    cmp #0xa9
                    bne 0x11ed
                    lda #0xdf
                    cmp 0x36d7
                    bne 0x11f2
                    jsr 0x2fc0
                    bne 0x11da
                    cpy #0x01
                    bne 0x124b
                    cmp #0xe0
                    beq 0x1216
                    cmp #0xe1
                    bne 0x122a
                    lda #0xaa
                    sta 0x369a
                    jsr 0x3846
                    ldy #0xf0
                    jsr 0x3a76
                    lda #0xdf
                    sta 0x369a
                    bne 0x11da
                    cmp #0x27
                    bcs 0x1233
                    ldy #0x00
                    jmp 0x1031
                    cmp #0xad
                    bne 0x11ed
                    lda 0x3692
                    cmp #0x6b
                    beq 0x1243
                    ldy #0x0f
                    jmp 0x3eac
                    lda #0xf9
                    sta 0x36a3
                    jmp 0x11da
                    cpy #0x02
                    bne 0x12a5
                    cmp #0xf5
                    bne 0x1267
                    lda 0x36a3
                    cmp #0xf9
                    beq 0x125f
                    ldy #0x10
                    jmp 0x3eac
                    lda #0xdf
                    sta 0x3901
                    jmp 0x11da
                    cmp #0xa6
                    bne 0x1279
                    lda 0x369a
                    cmp #0xdf
                    bne 0x1264
                    lda #0xdf
                    sta 0x36c2
                    bne 0x1264
                    cmp #0xb1
                    bne 0x1287
                    lda #0xdf
                    sta 0x36d7
                    sta 0x36e2
                    bne 0x1264
                    cmp #0xb9
                    beq 0x128e
                    jmp 0x11ed
                    lda 0x3745
                    cmp #0xdf
                    beq 0x129a
                    ldy #0x03
                    jmp 0x3eac
                    lda #0x01
                    sta 0x12a4
                    ldy #0x05
                    jmp 0x1031
                    !byte 0x00
                    cpy #0x03
                    bne 0x12b5
                    cmp #0x27
                    bcs 0x12b2
                    ldy #0x04
                    jmp 0x1031
                    jmp 0x3b4c
                    cpy #0x04
                    bne 0x12db
                    cmp #0x3b
                    beq 0x12c1
                    cmp #0x42
                    bne 0x12c6
                    ldy #0x0d
                    jmp 0x3eac
                    cmp #0xf7
                    beq 0x12d1
                    cmp #0xf8
                    beq 0x12d1
                    jmp 0x11ed
                    lda #0x00
                    sta 0x394b
                    ldy #0x06
                    jmp 0x1031
                    cpy #0x05
                    bne 0x12f9
                    cmp #0x27
                    bcs 0x12e8
                    ldy #0x00
                    jmp 0x1031
                    cmp #0xfd
                    beq 0x12ef
                    jmp 0x11ed
                    lda #0x00
                    jmp 0x2fdf
                    ldy #0x07
                    jmp 0x1031
                    cpy #0x06
                    bne 0x1306
                    cmp #0xf6
                    bne 0x12ec
                    ldy #0x00
                    jmp 0x3eac
                    cpy #0x07
                    bne 0x133e
                    cmp #0xe3
                    bne 0x1312
                    ldy #0x01
                    bne 0x1303
                    cmp #0x5f
                    bne 0x12ec
                    lda #0xbc
                    sta 0x36fe
                    lda #0x5f
                    sta 0x36fc
                    jsr 0x3846
                    ldy #0xff
                    jsr 0x3a76
                    jsr 0x3a76
                    jsr 0x3a76
                    jsr 0x3a76
                    lda #0xdf
                    sta 0x36fe
                    lda #0x00
                    sta 0x36fc
                    jmp 0x11da
                    cpy #0x08
                    bne 0x1396
                    ldy #0x00
                    sty 0xa7
                    cmp #0x4b
                    bne 0x135f
                    ldy 0x3994
                    bne 0x1366
                    jsr 0x3602
                    lda #0x18
                    sta 0x35a6
                    lda #0x0c
                    sta 0x35a4
                    jmp 0x3b4c
                    cmp #0x56
                    bne 0x1374
                    ldy 0x3994
                    bne 0x136f
                    jsr 0x3602
                    lda #0x0c
                    bne 0x1354
                    ldy #0x02
                    jmp 0x3eac
                    cmp #0xc1
                    beq 0x137c
                    cmp #0xc3
                    bne 0x1384
                    lda #0xdf
                    sta 0x3720
                    jmp 0x11da
                    cmp #0xcb
                    bne 0x13b0
                    lda 0x3745
                    cmp #0xdf
                    bne 0x135c
                    lda #0xdf
                    sta 0x370e
                    bne 0x1381
                    cpy #0x09
                    bne 0x13a3
                    cmp #0x27
                    bcs 0x13b0
                    ldy #0x02
                    jmp 0x1031
                    cpy #0x0a
                    bne 0x13d2
                    cmp #0x27
                    bcs 0x13b3
                    ldy #0x00
                    jmp 0x1031
                    jmp 0x11ed
                    cmp #0xcc
                    beq 0x13bb
                    cmp #0xcf
                    bne 0x13b0
                    lda #0xdf
                    cmp 0x36fe
                    bne 0x13cd
                    cmp 0x3752
                    bne 0x13cd
                    sta 0x3736
                    jmp 0x11da
                    ldy #0x06
                    jmp 0x3eac
                    cpy #0x0b
                    bne 0x13e1
                    cmp #0xd1
                    bne 0x13b0
                    lda #0xdf
                    sta 0x3745
                    bne 0x13ca
                    cpy #0x0c
                    bne 0x13fd
                    cmp #0x27
                    bcs 0x13ee
                    ldy #0x00
                    jmp 0x1031
                    cmp #0xd2
                    beq 0x13f6
                    cmp #0xd5
                    bne 0x13b0
                    lda #0xdf
                    sta 0x3752
                    bne 0x13ca
                    cpy #0x0d
                    bne 0x1421
                    cmp #0x27
                    bcs 0x140a
                    ldy #0x00
                    jmp 0x1031
                    cmp #0xd6
                    bne 0x13b0
                    lda 0x370e
                    cmp #0xdf
                    beq 0x141a
                    ldy #0x07
                    jmp 0x3eac
                    lda #0xe2
                    sta 0x375f
                    bne 0x13ca
                    cpy #0x0e
                    bne 0x142e
                    cmp #0xd7
                    bne 0x13b0
                    ldy #0x08
                    jmp 0x3eac
                    cpy #0x0f
                    bne 0x143e
                    cmp #0x27
                    bcs 0x143b
                    ldy #0x00
                    jmp 0x1031
                    jmp 0x13b0
                    cpy #0x10
                    bne 0x1464
                    cmp #0xf4
                    bne 0x144b
                    ldy #0x0a
                    jmp 0x3eac
                    cmp #0xd9
                    beq 0x1453
                    cmp #0xdb
                    bne 0x1457
                    ldy #0x09
                    bne 0x1448
                    cmp #0xb8
                    beq 0x145f
                    cmp #0xbb
                    bne 0x143b
                    ldy #0x03
                    jmp 0x1031
                    cpy #0x11
                    bne 0x1474
                    cmp #0xdd
                    bne 0x143b
                    lda #0xdf
                    sta 0x3831
                    jmp 0x11da
                    cmp #0x81
                    bcs 0x147b
                    jmp 0x11da
                    jmp 0x1b8f
                    ldy 0x3051
                    cpy #0x0e
                    bne 0x148a
                    ldy #0x20
                    jmp 0x3a76
                    cpy #0x0f
                    bne 0x14c8
                    lda #0x00
                    sta 0xa7
                    ldy #0x0c
                    ldx #0x06
                    jsr 0x3608
                    lda #0xeb
                    sta 0xa8
                    lda #0x39
                    sta 0x0a
                    ldx 0x1495
                    lda #0x01
                    bne 0x14b2
                    cpx #0x06
                    bne 0x14ae
                    lda #0x01
                    dex
                    jmp 0x14b9
                    cpx #0x0b
                    bne 0x14b8
                    lda #0x00
                    inx
                    stx 0x1495
                    sta 0x14a5
                    lda #0x01
                    sta 0xa7
                    ldy #0x0c
                    jmp 0x3608
                    cpy #0x11
                    bne 0x14d3
                    lda #0x01
                    beq 0x14e4
                    jmp 0x15c1
                    lda #0x0f
                    sta 0x3625
                    sta 0x3627
                    cpy #0x0a
                    bne 0x1523
                    dec 0x2fbf
                    beq 0x14e5
                    rts
                    ldy #0x08
                    sty 0x2fbf
                    lda #0x09
                    sta 0x05
                    lda #0x0d
                    sta 0x03
                    lda #0x7b
                    sta 0x02
                    sta 0x04
                    lda #0xdf
                    cmp 0x1507
                    bne 0x1501
                    lda #0xd8
                    sta 0x1507
                    ldx #0x06
                    lda #0xdf
                    ldy #0x00
                    sta (0x02),y
                    lda #0xee
                    sta (0x04),y
                    lda 0x02
                    clc
                    adc #0x28
                    sta 0x02
                    sta 0x04
                    bcc 0x151f
                    inc 0x03
                    inc 0x05
                    dex
                    bne 0x1506
                    rts
                    cpy #0x09
                    bne 0x1522
                    nop
                    jmp 0x15ad
                    lda #0x0c
                    sta 0x03
                    lda #0x0f
                    sta 0x02
                    sta 0x04
                    ldx #0x06
                    lda #0x00
                    bne 0x1544
                    dex
                    cpx #0x02
                    bne 0x154b
                    lda #0x01
                    bne 0x154b
                    inx
                    cpx #0x07
                    bne 0x154b
                    lda #0x00
                    sta 0x1538
                    stx 0x1536
                    ldy #0x00
                    lda #0xdf
                    sta (0x02),y
                    iny
                    iny
                    sta (0x02),y
                    dey
                    lda #0xea
                    sta (0x02),y
                    sta (0x04),y
                    jsr 0x159d
                    dex
                    bne 0x1551
                    lda #0xe4
                    sta 0xa8
                    ldx #0x02
                    ldy #0x00
                    lda 0xa8
                    sta (0x02),y
                    lda #0xda
                    sta (0x04),y
                    inc 0xa8
                    iny
                    cpy #0x03
                    bne 0x1570
                    jsr 0x159d
                    dex
                    bne 0x156e
                    ldy #0x00
                    lda #0xe7
                    sta 0xa8
                    lda (0x02),y
                    cmp 0xa8
                    bne 0x1595
                    lda #0xdf
                    sta (0x02),y
                    inc 0xa8
                    iny
                    cpy #0x03
                    bne 0x158b
                    rts
                    lda 0x02
                    clc
                    adc #0x28
                    sta 0x02
                    sta 0x04
                    bcc 0x15ac
                    inc 0x03
                    inc 0x05
                    rts
                    ldx #0x01
                    cpx #0x01
                    bne 0x15b7
                    dec 0x15ae
                    rts
                    inc 0x15ae
                    lda #0x08
                    sta 0x05
                    jmp 0x152b
                    lda #0x00
                    cmp #0x00
                    bne 0x15cb
                    inc 0x15c2
                    rts
                    dec 0x15c2
                    jmp 0x3620
                    lda 0x3736
                    cmp #0xdf
                    bne 0x15dd
                    lda #0x59
                    sta 0x37b6
                    lda 0x3051
                    cmp #0x11
                    bne 0x162a
                    lda 0x14cd
                    bne 0x15fc
                    lda 0x35a4
                    cmp #0x06
                    bne 0x15fc
                    lda 0x35a6
                    cmp #0x18
                    bne 0x15fc
                    lda #0x00
                    sta 0x15fd
                    lda #0x01
                    bne 0x1616
                    ldy #0x06
                    ldx #0x1e
                    lda #0x00
                    sta 0xa7
                    jsr 0x3608
                    ldx 0x1603
                    cpx #0x03
                    beq 0x1613
                    dex
                    stx 0x1603
                    lda #0x78
                    sta 0xa8
                    lda #0x49
                    sta 0x0a
                    ldy #0x06
                    lda #0x01
                    sta 0xa7
                    ldx 0x1603
                    jsr 0x3608
                    jmp 0x147e
                    ldx #0x09
                    lda 0x033b,x
                    sta 0x034b,x
                    dex
                    bne 0x162f
                    lda #0x02
                    sta 0xa7
                    ldx 0x35a6
                    ldy 0x35a4
                    jsr 0x3608
                    ldx #0x09
                    lda 0x033b,x
                    cmp #0xd8
                    bne 0x1653
                    ldy #0x05
                    jmp 0x3eac
                    ldy 0x3051
                    cpy #0x11
                    bne 0x166a
                    cmp #0x78
                    beq 0x1666
                    cmp #0x7b
                    beq 0x1666
                    cmp #0x7e
                    bne 0x166a
                    ldy #0x0b
                    bne 0x1650
                    cmp #0x9c
                    bcc 0x1676
                    cmp #0xa5
                    bcs 0x1676
                    jmp 0x16a7
                    nop
                    cmp #0xe4
                    bcc 0x168a
                    cmp #0xeb
                    bcs 0x1682
                    ldy #0x04
                    bne 0x1650
                    cmp #0xf4
                    bcs 0x168a
                    ldy #0x0e
                    bne 0x1650
                    dex
                    bne 0x1647
                    ldx #0x09
                    lda 0x034b,x
                    sta 0x033b,x
                    cmp #0xd8
                    beq 0x164e
                    cmp #0xe4
                    bcc 0x16a1
                    cmp #0xea
                    bcc 0x167e
                    dex
                    bne 0x168f
                    jmp 0x11e0
                    ldy 0x3831
                    cpy #0xdf
                    beq 0x16b2
                    ldy #0x0c
                    bne 0x1650
                    ldy #0x00
                    sty 0x14cd
                    jmp 0x1675
                    lda #0xa5
                    sta 0x36c2
                    lda #0xa9
                    sta 0x3692
                    lda #0x79
                    sta 0x3690
                    lda #0xe0
                    sta 0x369a
                    lda #0xac
                    sta 0x36a3
                    lda #0xb8
                    sta 0x36b3
                    lda #0xb0
                    sta 0x36d7
                    lda #0xb5
                    sta 0x36e2
                    lda #0x5e
                    sta 0x36fe
                    lda #0xc6
                    sta 0x370e
                    lda #0xc0
                    sta 0x3720
                    lda #0xcc
                    sta 0x3736
                    lda #0xd0
                    sta 0x3745
                    lda #0xd2
                    sta 0x3752
                    lda #0xd6
                    sta 0x375f
                    lda #0x00
                    sta 0x37b6
                    lda #0xdd
                    sta 0x3831
                    lda #0x01
                    sta 0x394b
                    lda #0x01
                    sta 0x3994
                    lda #0xf5
                    sta 0x3901
                    lda #0x00
                    sta 0x12a4
                    lda #0x01
                    sta 0x15fd
                    lda #0x1e
                    sta 0x1603
                    lda #0x01
                    sta 0x14cd
                    ldx #0x05
                    cpx #0x07
                    bne 0x173a
                    ldx #0xff
                    inx
                    stx 0x1733
                    lda 0x1747,x
                    sta 0x3953
                    jmp 0x310d
datenschrott02:
                    !source "datenschrott02.asm"
eventuellcode02:
                    adc 0x0ca9,x
                    sta 0x03
                    lda #0x08
                    sta 0x05
                    lda #0x00
                    sta 0x02
                    sta 0x04
                    ldx #0x04
                    lda #0x17
                    sta 0xa8
                    lda #0x5c
                    sta 0xa7
                    ldy #0x00
                    lda (0xa7),y
                    sta (0x02),y
                    lda #0x00
                    sta (0x04),y
                    iny
                    bne 0x1b5e
                    inc 0x03
                    inc 0x05
                    inc 0xa8
                    dex
                    bne 0x1b5e
                    lda #0xff
                    sta 0xff15
                    sta 0xff19
                    lda #0xfd
                    sta 0xff08
                    lda 0xff08
                    and #0x80
                    bne 0x1b7a
                    jsr 0x310d
                    jsr 0x310d
                    jmp 0x3ab3
                    lda 0x12a4
                    bne 0x1b97
                    jmp 0x3b4c
                    jsr 0x3a9d
                    jmp 0x1b44
datenschrott03:
                    !source "datenschrott03.asm"
eventuellcode03:
                    jsr 0x3e20
                    jsr 0x0ca9
                    sta 0x03
                    lda #0x08
                    sta 0x05
                    lda #0xa0
                    sta 0x02
                    sta 0x04
                    lda #0x1b
                    sta 0xa8
                    lda #0x9d
                    sta 0xa7
                    ldx #0x07
                    ldy #0x00
                    lda (0xa7),y
                    sta (0x02),y
                    lda #0x68
                    sta (0x04),y
                    iny
                    cpy #0x28
                    bne 0x1ccf
                    lda 0xa7
                    clc
                    adc #0x28
                    sta 0xa7
                    bcc 0x1ce7
                    inc 0xa8
                    lda 0x02
                    clc
                    adc #0x50
                    sta 0x02
                    sta 0x04
                    bcc 0x1cf6
                    inc 0x03
                    inc 0x05
                    dex
                    bne 0x1ccd
                    lda #0x00
                    sta 0xff15
                    rts
                    sta 0xff08
                    jsr 0xc56b
                    jsr 0x1cb5
                    jsr 0x1ef9
                    lda #0xba
                    sta 0x1ed9
                    rts
datenschrott04:
                    !source "datenschrott04.asm"
eventuellcode04:
                    ldy #0x00
                    bne 0x1df3
                    lda #0x40
                    sta 0x1e39
                    jsr 0x1e38
                    ldx #0x00
                    lda 0x1d14,x
                    inc 0x1ddf
                    tay
                    and #0x1f
                    sta 0x1e39
                    tya
                    lsr
                    lsr
                    lsr
                    lsr
                    lsr
                    tay
                    dey
                    sty 0x1dd3
                    ldy #0x00
                    bne 0x1e1d
                    lda #0x40
                    sta 0x1e61
                    jsr 0x1e60
                    ldx #0x00
                    lda 0x1d6e,x
                    tay
                    inx
                    cpx #0x65
                    beq 0x1e27
                    stx 0x1e04
                    and #0x1f
                    sta 0x1e61
                    tya
                    lsr
                    lsr
                    lsr
                    lsr
                    lsr
                    tay
                    dey
                    sty 0x1df8
                    jsr 0x1e38
                    jmp 0x1e60
                    lda #0x00
                    sta 0x1dd3
                    sta 0x1ddf
                    sta 0x1df8
                    sta 0x1e04
                    jmp 0x1dd2
                    ldx #0x04
                    cpx #0x1c
                    bcc 0x1e46
                    lda 0xff11
                    and #0xef
                    jmp 0x1e5c
                    lda 0x1e88,x
                    sta 0xff0e
                    lda 0xff12
                    and #0xfc
                    ora 0x1ea0,x
                    sta 0xff12
                    lda 0xff11
                    ora #0x10
                    sta 0xff11
                    rts
                    ldx #0x0d
                    cpx #0x1c
                    bcc 0x1e6e
                    lda 0xff11
                    and #0xdf
                    jmp 0x1e5c
                    lda 0x1e88,x
                    sta 0xff0f
                    lda 0xff10
                    and #0xfc
                    ora 0x1ea0,x
                    sta 0xff10
                    lda 0xff11
                    ora #0x20
                    sta 0xff11
                    rts
datenschrott05:
                    !source "datenschrott05.asm"
eventuellcode05:
                    ldx #0x09
                    dex
                    stx 0x1ebd
                    beq 0x1ece
                    rts
                    ldy #0x01
                    dey
                    sty 0x1ec6
                    beq 0x1ece
                    rts
                    ldy #0x0b
                    sty 0x1ebd
                    lda 0xff11
                    ora #0x37
                    and #0xbf
                    sta 0xff11
                    jmp 0x1dd2
                    sei
                    lda #0x06
                    sta 0x0314
                    lda #0x1f
                    sta 0x0315
                    lda #0x02
                    sta 0xff0a
                    lda #0xbf
                    sta 0x1ed9
                    cli
                    jmp 0x3a9d
                    lda #0xfd
                    sta 0xff08
                    lda 0xff08
                    and #0x80
                    bne 0x1ef9
                    rts
                    lda 0xff09
                    sta 0xff09
                    jsr 0x1ebc
                    pla
                    tay
                    pla
                    tax
                    pla
                    rti
                    lda 0x1ed9
                    cmp #0xbf
                    bne 0x1f1f
                    jmp 0x1ee0
                    ldx #0x04
                    stx 0xa8
                    ldy #0xff
                    jsr 0x3a76
                    ldx 0xa8
                    dex
                    bne 0x1f21
                    clc
                    adc #0x01
                    sta 0x1ed9
                    jmp 0x1f18
datenschrott06:
                    !source "datenschrott06.asm"
eventuellcode06:
                    ora (0xa9,x)
                    !byte 0x6b
                    sta 0x3692
                    lda #0x3d
                    sta 0x3690
                    rts
                    lda 0x3051
                    cmp #0x04
                    bne 0x2fca
                    lda #0x03
                    ldy 0x394b
                    beq 0x2fdb
                    lda #0xf6
                    sta 0x0cf9
                    rts
                    ldy 0x3720
                    cpy #0xdf
                    bne 0x2fec
                    sta 0x3994
                    jmp 0x12f4
                    jmp 0x3b4c
                    jsr 0x39f4
                    jmp 0x15d1
                    jsr 0x3b02
                    lda #0x00
                    sta 0x02
                    rts
datenschrott07:
                    !source "datenschrott07.asm"
eventuellcode07:
                    ldx #0x08
                    stx 0x05
                    ldx #0x0c
                    stx 0x03
                    ldx #0x28
                    stx 0x0a
                    ldx #0x01
                    beq 0x305e
                    clc
                    adc #0x68
                    bcc 0x305b
                    inc 0x0a
                    dex
                    bne 0x3054
                    sta 0x09
                    ldy #0x00
                    sty 0xa8
                    sty 0xa7
                    lda (0x09),y
                    tax
                    lda 0x302f,x
                    sta 0x10
                    lda 0x301e,x
                    sta 0x11
                    ldx #0x03
                    ldy #0x00
                    lda 0x02
                    sta 0x04
                    lda 0x11
                    sta (0x02),y
                    lda 0x10
                    sta (0x04),y
                    jsr 0x30c8
                    cpy #0x03
                    bne 0x3077
                    lda 0x02
                    clc
                    adc #0x28
                    sta 0x02
                    bcc 0x3097
                    inc 0x03
                    inc 0x05
                    dex
                    bne 0x3075
                    inc 0xa8
                    inc 0xa7
                    lda #0x75
                    ldx 0xa8
                    cpx #0x0d
                    bcc 0x30b2
                    ldx 0xa7
                    cpx #0x66
                    bcs 0x30d2
                    lda #0x00
                    sta 0xa8
                    lda #0x24
                    sta 0x30b9
                    lda 0x02
                    sec
                    sbc #0x75
                    sta 0x02
                    bcs 0x30c2
                    dec 0x03
                    dec 0x05
                    ldy 0xa7
                    jmp 0x3066
                    rts
                    lda 0x11
                    cmp #0xdf
                    beq 0x30d0
                    inc 0x11
                    iny
                    rts
                    lda #0x0c
                    sta 0x03
                    lda #0x08
                    sta 0x05
                    lda #0x00
                    sta 0x02
                    sta 0x04
                    ldy #0x28
                    lda (0x02),y
                    cmp #0x06
                    bcs 0x30f3
                    sec
                    sbc #0x03
                    ldy #0x00
                    sta (0x02),y
                    lda #0x39
                    sta (0x04),y
                    lda 0x02
                    clc
                    adc #0x01
                    bcc 0x30fe
                    inc 0x03
                    inc 0x05
                    sta 0x02
                    sta 0x04
                    cmp #0x98
                    bne 0x30e0
                    lda 0x03
                    cmp #0x0f
                    bne 0x30e0
                    rts
                    lda #0x0c
                    sta 0x03
                    lda #0x08
                    sta 0x05
                    lda #0x00
                    sta 0x02
                    sta 0x04
                    lda #0x31
                    sta 0xa8
                    lda #0x3c
                    sta 0xa7
                    ldx #0x04
                    ldy #0x00
                    lda (0xa7),y
                    sta (0x02),y
                    lda #0x00
                    sta (0x04),y
                    iny
                    bne 0x3127
                    inc 0x03
                    inc 0x05
                    inc 0xa8
                    dex
                    bne 0x3125
                    rts
datenschrott08:
                    !source "datenschrott08.asm"
eventuellcode08:
                    jsr 0xa920
                    php
                    sta 0x05
                    lda #0x0c
                    sta 0x03
                    lda #0x00
                    sta 0x02
                    sta 0x04
                    rts
                    jsr 0x3525
                    cpy #0x00
                    beq 0x3547
                    clc
                    adc #0x28
                    bcc 0x3544
                    inc 0x03
                    inc 0x05
                    dey
                    bne 0x353b
                    clc
                    adc #0x15
                    sta 0x02
                    sta 0x04
                    bcc 0x3554
                    inc 0x03
                    inc 0x05
                    ldx #0x03
                    lda #0x00
                    sta 0x09
                    ldy #0x00
                    lda 0xa7
                    bne 0x3566
                    lda #0xdf
                    sta (0x02),y
                    bne 0x3581
                    cmp #0x01
                    bne 0x3574
                    lda 0xa8
                    sta (0x02),y
                    lda 0x0a
                    sta (0x04),y
                    bne 0x3581
                    lda (0x02),y
                    stx 0x10
                    ldx 0x09
                    sta 0x033c,x
                    inc 0x09
                    ldx 0x10
                    inc 0xa8
                    iny
                    cpy #0x03
                    bne 0x355c
                    lda 0x02
                    clc
                    adc #0x28
                    sta 0x02
                    sta 0x04
                    bcc 0x3597
                    inc 0x03
                    inc 0x05
                    dex
                    bne 0x355a
                    rts
                    lda #0xfd
                    sta 0xff08
                    lda 0xff08
                    ldy #0x09
                    ldx #0x15
                    lsr
                    bcs 0x35af
                    cpy #0x00
                    beq 0x35af
                    dey
                    lsr
                    bcs 0x35b7
                    cpy #0x15
                    bcs 0x35b7
                    iny
                    lsr
                    bcs 0x35bf
                    cpx #0x00
                    beq 0x35bf
                    dex
                    lsr
                    bcs 0x35c7
                    cpx #0x24
                    bcs 0x35c7
                    inx
                    sty 0x35e8
                    stx 0x35ed
                    stx 0x3549
                    lda #0x02
                    sta 0xa7
                    jsr 0x3534
                    ldx #0x09
                    lda 0x033b,x
                    cmp #0xdf
                    beq 0x35e4
                    cmp #0xe2
                    bne 0x35f1
                    dex
                    bne 0x35d9
                    lda #0x0a
                    sta 0x35a4
                    lda #0x15
                    sta 0x35a6
                    lda #0xff
                    sta 0xff08
                    lda #0x01
                    sta 0xa7
                    lda #0x93
                    sta 0xa8
                    lda #0x3d
                    sta 0x0a
                    ldy 0x35a4
                    ldx 0x35a6
                    stx 0x3549
                    jmp 0x3534
                    sei
                    lda #0xc0
                    cmp 0xff1d
                    bne 0x3611
                    lda #0x00
                    sta 0xa7
                    jmp 0x3a6d
                    bne 0x361a
                    rts
                    lda #0x00
                    sta 0xa7
                    ldx #0x0f
                    ldy #0x0f
                    jsr 0x3608
                    nop
                    ldx 0x3625
                    ldy 0x3627
                    cpx 0x35a6
                    bcs 0x3639
                    inx
                    inx
                    cpx 0x35a6
                    beq 0x363f
                    dex
                    cpy 0x35a4
                    bcs 0x3646
                    iny
                    iny
                    cpy 0x35a4
                    beq 0x364c
                    dey
                    stx 0x3669
                    stx 0x3549
                    sty 0x366e
                    lda #0x02
                    sta 0xa7
                    jsr 0x3534
                    ldx #0x09
                    lda 0x033b,x
                    cmp #0x92
                    bcc 0x3672
                    dex
                    bne 0x365e
                    ldx #0x10
                    stx 0x3625
                    ldy #0x0e
                    sty 0x3627
                    lda #0x9c
                    sta 0xa8
                    lda #0x3e
                    sta 0x0a
                    ldy 0x3627
                    ldx 0x3625
                    stx 0x3549
                    lda #0x01
                    sta 0xa7
                    jmp 0x3534
datenschrott09:
                    !source "datenschrott09.asm"
eventuellcode09:
                    lda 0xa7
                    clc
                    adc #0x01
                    sta 0xa7
                    bcc 0x3845
                    inc 0xa8
                    rts
                    lda #0x36
                    sta 0xa8
                    lda #0x8a
                    sta 0xa7
                    ldy #0x00
                    lda (0xa7),y
                    cmp #0xff
                    beq 0x385c
                    jsr 0x383a
                    jmp 0x3850
                    jsr 0x383a
                    lda (0xa7),y
                    cmp #0xff
                    beq 0x38df
                    cmp 0x3051
                    bne 0x3856
                    lda #0x08
                    sta 0x05
                    lda #0x0c
                    sta 0x03
                    lda #0x00
                    sta 0x02
                    sta 0x04
                    jsr 0x383a
                    lda (0xa7),y
                    cmp #0xfe
                    beq 0x388c
                    cmp #0xf9
                    bne 0x3892
                    lda 0x02
                    jsr 0x38d7
                    bcc 0x3890
                    inc 0x03
                    inc 0x05
                    lda (0xa7),y
                    cmp #0xfb
                    bne 0x389f
                    jsr 0x383a
                    lda (0xa7),y
                    sta 0x09
                    bne 0x38bf
                    cmp #0xf8
                    beq 0x38b7
                    cmp #0xfc
                    bne 0x38ac
                    lda 0x0a
                    jmp 0x399f
                    cmp #0xfa
                    bne 0x38bf
                    jsr 0x383a
                    lda (0xa7),y
                    sta 0x0a
                    lda 0x09
                    sta (0x04),y
                    lda 0x0a
                    sta (0x02),y
                    cmp #0xfd
                    bne 0x38cc
                    jsr 0x383a
                    lda (0xa7),y
                    sta 0x02
                    sta 0x04
                    jsr 0x383a
                    lda (0xa7),y
                    cmp #0xff
                    bne 0x387d
                    beq 0x38df
                    clc
                    adc #0x01
                    sta 0x02
                    sta 0x04
                    rts
                    lda 0x3051
                    cmp #0x02
                    bne 0x3919
                    lda #0x0d
                    sta 0x02
                    sta 0x04
                    lda #0x08
                    sta 0x05
                    lda #0x0c
                    sta 0x03
                    ldx #0x18
                    lda (0x02),y
                    cmp #0xdf
                    beq 0x3900
                    cmp #0xf5
                    bne 0x3906
                    lda #0xf5
                    sta (0x02),y
                    sta (0x04),y
                    lda 0x02
                    clc
                    adc #0x28
                    sta 0x02
                    sta 0x04
                    bcc 0x3915
                    inc 0x03
                    inc 0x05
                    dex
                    bne 0x38f6
                    rts
                    cmp #0x07
                    bne 0x392f
                    ldx #0x17
                    lda 0x0d68,x
                    cmp #0xdf
                    bne 0x392b
                    lda #0xe3
                    sta 0x0d68,x
                    dex
                    bne 0x391f
                    rts
                    cmp #0x06
                    bne 0x3942
                    lda #0xf6
                    sta 0x0c9c
                    sta 0x0c9c
                    sta 0x0e7c
                    sta 0x0f6c
                    rts
                    cmp #0x04
                    bne 0x398d
                    ldx #0xf7
                    ldy #0xf8
                    lda #0x01
                    bne 0x3952
                    ldx #0x3b
                    ldy #0x42
                    lda #0x01
                    cmp #0x01
                    bne 0x395b
                    stx 0x0c7a
                    cmp #0x02
                    bne 0x3962
                    stx 0x0d6a
                    cmp #0x03
                    bne 0x3969
                    stx 0x0e5a
                    cmp #0x04
                    bne 0x3970
                    stx 0x0f4a
                    cmp #0x05
                    bne 0x3977
                    sty 0x0c9c
                    cmp #0x06
                    bne 0x397e
                    sty 0x0d8c
                    cmp #0x07
                    bne 0x3985
                    sty 0x0e7c
                    cmp #0x08
                    bne 0x398c
                    sty 0x0f6c
                    rts
                    cmp #0x05
                    bne 0x399d
                    lda #0xfd
                    ldx #0x01
                    bne 0x3999
                    lda #0x7a
                    sta 0x0ed2
                    rts
datenschrott10:
                    !source "datenschrott10.asm"
eventuellcode10:
                    jsr 0x360e
                    ldx #0x09
                    lda 0x033b,x
                    cmp #0x05
                    beq 0x3a08
                    cmp #0x03
                    beq 0x3a17
                    dex
                    bne 0x39f9
                    rts
                    ldx 0x3051
                    beq 0x3a07
                    dex
                    jmp 0x3a64
                    !byte 0x34
                    !byte 0x38 ;sec
                    !byte 0x32
                    !byte 0x38 ;sec
                    !byte 0x02
                    !byte 0xff
eventuellcode11:
                    ldx 0x3051
                    inx
                    stx 0x3051
                    ldy 0x3a4a,x
                    lda 0x39aa,y
                    sta 0x35a4
                    lda 0x39ab,y
                    sta 0x35a6
                    jsr 0x3040
                    jmp 0x3846
                    !byte 0x02
                    asl 0x0a
                    asl 0x1612
                    !byte 0x1a
                    asl 0x2622,x
                    rol
                    rol 0x3632
                    !byte 0x3a
                    rol 0x4642,x
                    lsr
                    lsr 0x5652
                    !byte 0x5a
                    lsr 0x0804,x
                    !byte 0x0c
                    bpl 0x3a64
                    clc
                    !byte 0x1c
                    jsr 0x2824
                    bit 0x3430
                    sec
                    !byte 0x3c
                    rti
                    !byte 0x44
                    pha
                    jmp 0x5450
                    cli
                    !byte 0x5c
                    rts
                    !byte 0x00
                    stx 0x3051
                    ldy 0x3a33,x
                    jmp 0x3a21
                    jsr 0x3602
                    jsr 0x359b
                    cli
                    rts
                    !byte 0x00
eventuellcode12:
                    dex
                    bne 0x3a76
                    dey
                    bne 0x3a76
                    rts

                    lda 0xff12
                    and #0xfb
                    sta 0xff12
                    lda #0x21
                    sta 0xff13
                    lda 0xff07
                    ora #0x90
                    sta 0xff07
                    lda #0xdb
                    sta 0xff16
                    lda #0x29
                    sta 0xff17
                    rts

                    lda 0xff12
                    ora #0x04
                    sta 0xff12
                    lda #0xd5
                    sta 0xff13
                    lda 0xff07
                    lda #0x08
                    sta 0xff07
                    rts
init:
                    jsr 0x1f15
                    lda #0x01
                    sta 0xff15
                    sta 0xff19
                    jsr 0x16ba
                    ldy #0x20
                    jsr 0x3a76
                    lda #0xfd
                    sta 0xff08
                    lda 0xff08
                    and #0x01
                    bne 0x3ac8
                    lda #0xff
                    jsr 0x1cff
                    lda #0x0c
                    sta 0x03
                    lda #0x00
                    sta 0x02
                    ldx #0x04
                    ldy #0x00
                    lda #0xdf
                    sta (0x02),y
                    iny
                    bne 0x3ae5
                    inc 0x03
                    dex
                    bne 0x3ae5
                    jsr 0x3a7d
                    lda #0x00
                    sta 0xff15
                    lda #0x12
                    sta 0xff19
                    jsr 0x3b02
                    jmp 0x3b3a
                    lda #0x27
                    sta 0x02
                    sta 0x04
                    lda #0x08
                    sta 0x05
                    lda #0x0c
                    sta 0x03
                    ldx #0x18
                    ldy #0x00
                    lda #0x5d
                    sta (0x02),y
                    lda #0x12
                    sta (0x04),y
                    tya
                    clc
                    adc #0x28
                    tay
                    bcc 0x3b27
                    inc 0x03
                    inc 0x05
                    dex
                    bne 0x3b14
                    lda #0x5d
                    sta 0x0fc0,x
                    lda #0x12
                    sta 0x0bc0,x
                    inx
                    cpx #0x28
                    bne 0x3b2a
                    rts

                    lda #0x06
                    sta 0x35a4
                    lda #0x03
                    sta 0x35a6
                    lda #0x00
                    sta 0x3051
                    jsr 0x3a2d
                    jsr 0x2fef
                    ldy #0x30
                    jsr 0x3a76
                    jsr 0x2fcb
                    jmp 0x162d
datenschrott13:
                    !source "datenschrott13.asm"
