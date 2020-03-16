

; ==============================================================================
;
; INTRO SECTION FOR 64K
; set the language
; maybe set the style
; copy the music (?)
; display the title screen bitmap
; ==============================================================================


SCREEN = $e000
COLORS = $6000
BITMAP = $c000



* = BITMAP
!bin "../gfx/gt-bitmap.bin"
; save "/Users/ingohinterding/Desktop/gt-bitmap.bin" 0 2000 3f3f

* = SCREEN
!bin "../gfx/gt-screen.bin"
; save "/Users/ingohinterding/Desktop/gt-screen.bin" 0 0400 07e7

* = COLORS
!bin "../gfx/gt-colors.bin"
; save "/Users/ingohinterding/Desktop/gt-colors.bin" 0 d800 dbe7




intro_start:

                    lda #$0
                    sta $d020
                    sta $d021

                    lda #01                 ; todo -> this should be 0,1,2 depending on language choice
                                            ; 0 = english (do nothing)
                                            ; 1 = german (copy stuff)
                                            ; 2 = hungarian (copy stuff)

                    cmp #0                  ; is it 0 = english?
                    bne +
                    jmp end_copy            ; we're done here
+
                    cmp #1                  ; is it 1 = german?
                    bne lang_hu             ; no -> must be hungarian

                                            ; yes

lang_de:                    
                    ; copy the introduction text
                    lda #<text_intro_de
                    sta $02
                    lda #>text_intro_de
                    sta $03
                    jsr copy_text_intro

                    ; copy the messages 
                    lda #<text_messages_de
                    sta $02
                    lda #>text_messages_de
                    sta $03
                    jsr copy_text_messages

                    ; copy the items text 
                    lda #<text_items_de
                    sta $02
                    lda #>text_items_de
                    sta $03
                    jsr copy_text_items

                    ; copy the hints text 
                    lda #<text_hints_de
                    sta $02
                    lda #>text_hints_de
                    sta $03
                    jsr copy_text_hints

                    ; copy the win text 
                    lda #<text_win_de
                    sta $02
                    lda #>text_win_de
                    sta $03
                    jsr copy_text_win

                    ; repair some underline characters
                    lda #$63
                    sta screen_win_src + 16*40 + 36
                    sta screen_win_src + 16*40 + 37
                    sta screen_win_src + 16*40 + 38

                    lda #$20
                    sta screen_win_src + 18*40 + 37
                    sta screen_win_src + 20*40 + 18
                    sta screen_win_src + 20*40 + 19
                    sta screen_win_src + 20*40 + 20
                    sta screen_win_src + 20*40 + 21
                    sta screen_win_src + 20*40 + 22
                    sta screen_win_src + 20*40 + 23
                    sta screen_win_src + 20*40 + 24
                    sta screen_win_src + 20*40 + 25
                    sta screen_win_src + 20*40 + 26
                    sta screen_win_src + 20*40 + 27
                    sta screen_win_src + 20*40 + 28

                    jmp end_copy
                    

lang_hu:

                    ; copy the introduction text
                    lda #<text_intro_hu
                    sta $02
                    lda #>text_intro_hu
                    sta $03
                    jsr copy_text_intro

                    ; copy the messages 
                    lda #<text_messages_hu
                    sta $02
                    lda #>text_messages_hu
                    sta $03
                    jsr copy_text_messages

                    ; copy the items text 
                    lda #<text_items_hu
                    sta $02
                    lda #>text_items_hu
                    sta $03
                    jsr copy_text_items

                    ; copy the hints text 
                    lda #<text_hints_hu
                    sta $02
                    lda #>text_hints_hu
                    sta $03
                    jsr copy_text_hints

                    ; copy the win text 
                    lda #<text_win_hu
                    sta $02
                    lda #>text_win_hu
                    sta $03
                    jsr copy_text_win

                    ; repair some underline characters
                    lda #$20
                    sta screen_win_src + 20*40 + 24
                    sta screen_win_src + 20*40 + 25
                    sta screen_win_src + 20*40 + 26
                    sta screen_win_src + 20*40 + 27
                    lda #$63
                    sta screen_win_src + 16*40 + 36
                    sta screen_win_src + 16*40 + 37



end_copy:
                    
                    jsr display_title
                    jmp code_start







; ==============================================================================
; copy the localized intro
; ==============================================================================


copy_text_intro:

                    ldy #$0

-                   lda ($02) ,y
                    sta intro_text ,y
                    iny
                    bne -

                    inc $03                 ; we copied 255 chars, so we need to increment the high byte of the copy address
                    ldy #$0

-                   lda ($02) ,y
                    sta intro_text + $100 ,y
                    iny
                    cpy #104
                    bne -

                    rts


; ==============================================================================
; copy the localized messages ( 17 lines with 50 characters = 850 chars)
; ==============================================================================


copy_text_messages:

                    ldy #$0

-                   lda ($02) ,y
                    sta death_messages ,y
                    iny
                    bne -

                    inc $03                 ; we copied 255 chars, so we need to increment the high byte of the copy address
                    ldy #$0

-                   lda ($02) ,y
                    sta death_messages + $100 ,y
                    iny
                    bne -

                    inc $03
                    ldy #$0

-                   lda ($02) ,y
                    sta death_messages + $200 ,y
                    iny
                    bne -

                    inc $03
                    ldy #$0

-                   lda ($02) ,y
                    sta death_messages + $300 ,y
                    iny

                    cpy #82
                    bne -

                    rts


; ==============================================================================
; copy the localized items text
; ==============================================================================


copy_text_items:

                    ldy #$0

-                   lda ($02) ,y
                    sta item_pickup_message ,y
                    iny
                    cpy #120
                    bne -

                    rts


; ==============================================================================
; copy the localized hints text
; ==============================================================================


copy_text_hints:

                    ldy #$0

-                   lda ($02) ,y
                    sta hint_messages ,y
                    iny
                    cpy #240
                    bne -

                    rts


; ==============================================================================
; copy the localized win text
; ==============================================================================


copy_text_win:

                    ldy #$0

-                   lda ($02) ,y
                    sta screen_win_src + 15*40 ,y
                    iny
                    cpy #40
                    bne -


-                   lda ($02) ,y
                    sta screen_win_src + 16*40 ,y
                    iny
                    cpy #80
                    bne -

-                   lda ($02) ,y
                    sta screen_win_src + 17*40 ,y
                    iny
                    cpy #120
                    bne -

-                   lda ($02) ,y
                    sta screen_win_src + 19*40 ,y
                    iny
                    cpy #160
                    bne -

                    rts




display_title:
   
                    lda #$00 
                    sta $d020
                    sta $d021



                    lda #0				;vic bank $4000-$7fff
                    sta $dd00 
                    
                    ldx #$00 

-

                    lda COLORS,x
                    sta $d800,x
                    lda COLORS+$100,x
                    sta $d900,x
                    lda COLORS+$200,x
                    sta $da00,x
                    lda COLORS+$300,x
                    sta $db00,x
                    dex
                    bne -
                    
                    ; Bitmap Mode On 

                    lda #$3b 
                    sta $d011 

                    ; MultiColor On 

                    lda #$d8 
                    sta $d016 

                    lda #$80			;//bitmap = $4000, screen = $6000
                    sta $d018

                    jmp *      





text_intro_de:
!scr "Suchen Sie die Schatztruhe der Geister- "
!scr "stadt und oeffnen Sie diese ! Toeten    "
!scr "Sie Belegro, den Zauberer und weichen   "
!scr "Sie vielen anderen Wesen geschickt aus. "
!scr "Bedienen Sie sich an den vielen Gegen-  "
!scr "staenden, welche sich in den 19 Bildern "
!scr "befinden. Viel Spass !                  "
!scr "                                        "
!scr "    Druecken Sie Feuer zum Starten !    "


text_intro_hu:
!scr "Keresd meg es nyisd fel a Szellemvaros  "
!scr "kincses ladikajat ! Old meg Bellegrot, a"
!scr "varazslot, miutan elkerulted a kulonfele"
!scr "veszelyes lenyeket. Hasznald az osszes  "
!scr "targyat, amelyeket a 19 valtozatos kep- "
!scr "ernyon at vezeto kalandod soran talalsz."
!scr "Jo szorakozast!                         "
!scr "                                        "
!scr "         Kezdes a tuz gombbal !         "


text_messages_de:
!scr "Sie sind in eine         Schlangengrube gefallen !"
!scr "Gotteslaesterung wird    mit dem Tod bestraft !   "
!scr "Sie sind in dem tiefen   Fluss ertrunken !        "
!scr "Sie haben aus der Gift-  flasche getrunken....... "
!scr "Boris, die Spinne, hat   Sie verschlungen !!      "
!scr "Den Laserstrahl muessen  Sie uebersehen haben ?!  "
!scr "220 Volt !! Sie erlitten einen Elektroschock !    "
!scr "Sie sind in einen Nagel  getreten !               "
!scr "Eine Fussangel verhindertIhr Weiterkommen !       "
!scr "Auf diesem Raum liegt einFluch des Magiers Manilo!"
!scr "Sie wurden eingeschlossenund verhungern !         "
!scr "Sie wurden von einem     Stein ueberollt !!       "
!scr "Belegro hat Sie          vernichtet !             "
!scr "Im Sarg lag ein durstigerZombie........           "
!scr "Das Monster hat Sie      erwischt !!!!!           "
!scr "Sie haben sich an dem    Dornenbusch verletzt !   "
!scr "Sie haben sich im        Stacheldraht verfangen !!"


text_messages_hu:
!scr "Egy kigyoverembe estel !                          "
!scr "Az istenkaromlas         buntetese halal !        "
!scr "Belefulladtal a mely     folyoba !                "
!scr "A mergezett flaskabol    ittal...                 "
!scr "Boris, a pok elkapott    es vegzett veled !       "
!scr "Hat nem lattad a         lezersugarat ?!?         "
!scr "240 Volt ! Megrazott az  aram !                   "
!scr "Beleleptel egy szogbe !                           "
!scr "A csapda, amibe bele-    leptel megallitott !     "
!scr "Ezen a szoban Manilo, a  varazslo atka ul !       "
!scr "A szoba rad zarult es    ehen haltal !            "
!scr "Eltalalt egy hatalmas ko es szornyet haltal !     "
!scr "Belegro elpusztitott     teged!                   "
!scr "Egy igazan szomjas zombitsikerult talalnod ...    "
!scr "A szornyeteg elkapott !  Meghaltal.               "
!scr "A tuskes bokrok          megsebeztek !            "
!scr "A szogesdrot fogja       lettel !                 "




text_items_de
!scr " In der Flasche liegt ein Schluessel !  " ; Original: !scr " In der Flasche war sich ein Schluessel "
!scr "    In dem Sarg lag ein Schluessel !    "
!scr " Unter dem Stein lag ein Taucheranzug ! "


text_items_hu
!scr " A palackban egy kulcs van !            "
!scr "   Egy kulcs van a koporsoban !         "
!scr " A ko alatt egy buvarfelszereles hever !"




text_hints_de
!scr " Ein Teil des Loesungscodes lautet:     "
!scr " ABCDEFGHIJKLMNOPQRSTUVWXYZ 0123456789",$bc," "
!scr " Du brauchst:Fassung,Gluehbirne,Strom ! "
!scr " Wie lautet der Loesungscode ? ",$22,"     ",$22,"  "
!scr " *****   Ein Hilfsbuchstabe:  "
!scr "C   ***** "
!scr " Falscher Loesungscode ! TODESSTRAFE !! "


text_hints_hu
!scr " A jelszo egy resze a kovetkezo:        "
!scr " ABCDEFGHIJKLMNOPQRSTUVWXYZ 0123456789",$bc," "
!scr " Ezek kellenek: tarto, korte, foglalat !"
!scr " Mi a jelszo ?                 ",$22,"     ",$22,"  "
!scr " *****   Egy betunyi sugo :   "
!scr "C   ***** "
!scr " A jelszo hibas ! BUNTETESED HALAL !    "


text_win_de
!scr $5d,"Sie haben das Raetsel der Geisterstadt",$5d
!scr $5d,"geloest, Belegro vernichtet, und den  ",$5d
!scr $5d,"Schatz gefunden !                     ",$5d
!scr $5d,"KINGSOFT GRATULIERT ! >Play it again>>",$5d


text_win_hu
!scr $5d,"Megoldottad a Szellemvaros rejtelyet, ",$5d
!scr $5d,"elpusztitottad Belegrot, es tied lett ",$5d
!scr $5d,"a csodalatos kincs is !               ",$5d
!scr $5d,"A KINGSOFT GRATULAL ! > Ujrajatszas  >",$5d