REM HAMUsoft Kaszinข v.2.2 Copyright 1999-2002 by H mor "HAMU" Tam s
REM You may freely copy this source code, but you may not alter in in any way
DECLARE SUB BCKGRND ()
DECLARE SUB logo ()
DECLARE SUB anim ()
CALL anim

intro:
KEY(1) ON
KEY(6) ON
KEY(10) ON
KEY(2) ON
ON KEY(10) GOSUB exitting
ON KEY(2) GOSUB heroes
CLS
CALL BCKGRND
CALL logo
PRINT
PRINT " ษออออออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT " บ Press SPACE to play, H for Hall of fame, Q to QUIT บ"
PRINT " ศออออออออออออออออออออออออออออออออออออออออออออออออออออผ"
'sor1$ = "cadadadfabfceg"
'sor1$ = "mb t255 ml ms l1 c p1 > a l2 < p1 d l1 > a < d > a < d a p3 g p1 e l2 g p1 e l2 g e c e > a < p3"
'sor2$ = "a l4 g f e l1 de a g e a g e a p3 f f e d c c g f e p3"
'sor3$ = "a l2 < c > h a g h a p1 a a a a a h a p1"
'PLAY sor1$
li$ = "T180 o2 P2 P8 L8 GGG L2 A-"
fa$ = "P24 P8 L8 FBFD"
PLAY fa$ + li$
GOTO beg

beg:
CLEAR
choice$ = INKEY$
SELECT CASE choice$
CASE ""
GOTO beg
CASE "q"
GOTO exitting
CASE "Q"
GOTO exitting
CASE " "
GOTO names
CASE "H"
GOTO heroes
CASE "h"
GOTO heroes
CASE ELSE
GOTO beg
END SELECT

game:
CLS
CALL BCKGRND
CALL logo
PRINT " ษอออออออออออออออออออออออออออออออออออออออออป"
PRINT " บ ึrja be a nevt (maximum 8 karakteres)! บ"
PRINT " ศอออออออออออออออออออออออออออออออออออออออออผ"
INPUT "  NV:", nev1$
GOTO merlegeles

names:
CLS
CALL BCKGRND
CALL logo
PRINT
PRINT " ษอออออออออออออออออออออออออออออออออออออออออป"
PRINT " บ ึrja be a nevt (maximum 8 karakteres)! บ"
PRINT " ศอออออออออออออออออออออออออออออออออออออออออผ"
INPUT "  NV:", nev0$
GOTO merlegeles

merlegeles:
IF nev0$ = nev1$ THEN
nev1$ = ""
ELSE
score = 0
END IF
GOTO action

action:
CLS
CALL BCKGRND
CALL logo
PRINT
PRINT " ษอออออออออออออออออออออออออออออออออป"
PRINT " บ A le llกt shoz nyomjon SPACE-t! บ"
PRINT " ศอออออออออออออออออออออออออออออออออผ"
FOR X = 133 TO 254
IF X = 253 THEN
X = 133
END IF
Y = 253 - X
Z = (X + Y) / 2
d$ = CHR$(X)
e$ = CHR$(Y)
f$ = CHR$(Z)
A$ = CHR$(X - 1)
b$ = CHR$(Y - 1)
c$ = CHR$(Z - 1)
g$ = CHR$(X + 1)
h$ = CHR$(Y + 1)
I$ = CHR$(Z + 1)
CLS
PRINT
PRINT
PRINT
PRINT "    ษอออออออออป"
PRINT "    บ  "; A$; " "; b$; " "; c$; "  บ"
PRINT "    บ  "; d$; " "; e$; " "; f$; "  บ"
PRINT "    บ  "; g$; " "; h$; " "; I$; "  บ"
PRINT "    ศอออออออออผ"
allj$ = INKEY$
IF allj$ = " " THEN
GOTO vizsga
END IF
BEEP
NEXT X

vizsga:
CLS
CALL BCKGRND
CALL logo
PRINT
PRINT
PRINT "    ษอออออออออป"
PRINT "    บ  "; A$; " "; b$; " "; c$; "  บ"
PRINT "    บ  "; d$; " "; e$; " "; f$; "  บ"
PRINT "    บ  "; g$; " "; h$; " "; I$; "  บ"
PRINT "    ศอออออออออผ"
IF A$ = e$ AND A$ = I$ THEN
score = score + 1000
PRINT "You have "; score; " points"
SLEEP 0
GOTO exitting
END IF
IF g$ = e$ AND g$ = c$ THEN
score = score + 1000
PRINT "You have "; score; " points"
SLEEP 0
GOTO exitting
END IF
IF A$ = b$ AND A$ = c$ THEN
score = score + 500
PRINT "You have "; score; " points"
SLEEP 0
GOTO exitting
END IF
IF g$ = h$ AND g$ = I$ THEN
score = score + 500
PRINT "You have "; score; " points"
SLEEP 0
GOTO exitting
END IF
IF d$ = e$ AND d$ = f$ THEN
score = score + 5000
PRINT "You have "; score; " points"
SLEEP 0
GOTO exitting
END IF
IF b$ = e$ AND b$ = h$ THEN
score = score + 2500
PRINT "You have "; score; " points"
SLEEP 0
GOTO exitting
END IF
IF nev1$ = "" THEN
PRINT "Sajnos, "; nev0$; " most nem te nyertl."
ELSE
PRINT "Sajnos, "; nev1$; " most nem te nyertl."
END IF
listen$ = "T180 o2 P2 P8 L8 GGG L2 E-"
fate$ = "P24 P8 L8 FFF L2 D"
PLAY listen$ + fate$
PRINT
PRINT " ษอออออออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT " บ Press SPACE to play, H for Hall Of Fame, Q to Quit. บ"
PRINT " ศอออออออออออออออออออออออออออออออออออออออออออออออออออออผ"
DO
button$ = INKEY$
IF button$ = " " THEN
GOTO game
ELSEIF button$ = "q" OR button$ = "Q" THEN
GOTO exitting
ELSEIF button$ = "h" OR button$ = "H" THEN
GOTO heroes
END IF
LOOP WHILE button$ <> " " AND button$ <> "q" OR button$ <> "Q"
END

heroes:
OPEN "fame.dat" FOR RANDOM AS 1
IF nev1$ = "" THEN
sor$ = lines$ + ".  " + nev0$ + "  " + score$ + "   " + rating$
ELSE
sor$ = lines$ + ".  " + nev1$ + "  " + score$ + "   " + rating$
END IF
'lines = lines + 1
lines$ = MKI$(lines)
score$ = MKI$(score)
SELECT CASE score
CASE IS < 500
rating$ = "hopeful"
CASE IS < 1000
rating$ = "Luck"
CASE IS < 2500
rating$ = "cool"
CASE IS < 5000
rating$ = "HAMU"
CASE IS > 5000
rating$ = "Cheater"
END SELECT
CLS
CALL BCKGRND
CALL logo
PRINT
PRINT "ษอออออออออออออออออออออออออออออออออป"
PRINT "บ T H E   H A L L   O F   F A M E บ"
PRINT "ศอออออออออออออออออออออออออออออออออผ"
PRINT
PRINT "Line    Name    Score    Rating"
PRINT sor$
PRINT
PRINT
PRINT "ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
PRINT "ณ Press W to view the others, Q to ณ"
PRINT "ณ Quit, SPACE to play, S to save.  ณ"
PRINT "ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
lofing:
bt$ = INKEY$
SELECT CASE bt$
CASE "w"
GOTO viewing
CASE "W"
GOTO viewing
CASE "Q"
GOTO exitting
CASE "q"
GOTO exitting
CASE " "
GOTO game
CASE "s"
GOTO saving
CASE "S"
GOTO saving
END SELECT
GOTO lofing

saving:
CLS
CALL BCKGRND
CALL logo
PRINT
PRINT "ษอออออออออออออออออออออออออออป"
PRINT "บ  SAVING THE HALL OF FAME  บ"
PRINT "ศอออออออออออออออออออออออออออผ"
PRINT
PRINT " ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
PRINT " ณ DO YOU REALLY WANT TO SAVE YOUR SCORE? ณ"
PRINT " ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
PRINT
PRINT "[Y/N] ?"
reply$ = INPUT$(1)
IF reply$ = "y" OR reply$ = "Y" THEN
GOTO saving
ELSEIF reply$ = "n" OR reply$ = "Y" THEN
GOTO heroes
ELSE
GOTO saving
END IF

viewing: 
CLS
CALL BCKGRND
CALL logo
PRINT
PRINT "ษอออออออออออออออออออออออออออออออออป"
PRINT "บ T H E   H A L L   O F   F A M E บ"
PRINT "ศอออออออออออออออออออออออออออออออออผ"
PRINT
PRINT "Line    Name    Score    Rating"
FOR sor = 1 TO 11
'LINE INPUT #1, filetext$
'IF EOF(1) THEN
PRINT
PRINT " ษอออออออออออออออออออออออป"
PRINT " บ ERROR: FIELD OVERFLOW บ"
PRINT " ศอออออออออออออออออออออออผ"
PRINT "Press any key!"
DO
LOOP WHILE INKEY$ = ""
GOTO hallmenu
'END IF
NEXT

hallmenu:
CLS
CALL BCKGRND
CALL logo
PRINT
PRINT " ษอออออออออออออออออออออออออป"
PRINT " บ  THE HALL OF FAME MENU  บ"
PRINT " ศอออออออออออออออออออออออออผ"
PRINT
PRINT " ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ"
PRINT " ณ Press P to print the Hall Of Fame, ณ"
PRINT " ณ W to view it again, Q to quit, and ณ"
PRINT " ณ SPACE to play a new game           ณ"
PRINT " ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู"
DO
gomb$ = INPUT$(1)
SELECT CASE gomb$
CASE "p"
CLS
CALL logo
PRINT
PRINT
PRINT
PRINT " ษออออออออออออออออออออออออออออออออออป"
PRINT " บ Printing with printer on LPT1... บ"
PRINT " ศออออออออออออออออออออออออออออออออออผ"
INPUT #1, hof$
LPRINT hof$
GOTO viewing
CASE "P"
CLS
CALL logo
PRINT
PRINT
PRINT
PRINT " ษออออออออออออออออออออออออออออออออออป"
PRINT " บ Printing with printer on LPT1... บ"
PRINT " ศออออออออออออออออออออออออออออออออออผ"
INPUT #1, hof$
LPRINT hof$
GOTO viewing
CASE "w"
GOTO viewing
CASE "W"
GOTO viewing
CASE "Q"
GOTO exitting
CASE "q"
GOTO exitting
CASE " "
GOTO game
END SELECT
LOOP UNTIL gomb$ = "q" OR gomb$ = "Q"

exitting:
CLS
CALL BCKGRND
CALL logo
PRINT
PRINT
PRINT
PRINT
PRINT "       ษออออออออออออออออออออออออออออออออออออออออออออป"
PRINT "       บ  Do you really want to exit?(Yes/No/Cancel)บ"
PRINT "       ศออออออออออออออออออออออออออออออออออออออออออออผ"
PRINT "       [Y/N/C]?"
DO
exitkey$ = INKEY$
SELECT CASE exitkey$
CASE "y"
GOTO exitting
CASE "Y"
GOTO exitting
CASE "c"
GOTO beg
CASE "C"
GOTO beg
END SELECT
LOOP UNTIL exitkey$ = "n" OR exitkey$ = "N"
GOTO halloffame


halloffame:
SCREEN 0
CLS
CALL logo
PRINT
PRINT
IF nev1$ = "" THEN
PRINT "K”sz”n”m "; nev0$; ", hogy engem v lasztott l."
ELSE
PRINT "K”sz”n”m "; nev1$; ", hogy engem v lasztott l."
END IF
END

SUB anim
CLS
SCREEN 9
COLOR 0, 14
LINE (50, 70)-(70, 250), 1, BF
LINE (110, 70)-(130, 250), 1, BF
LINE (50, 150)-(200, 170), 2, BF
LINE (160, 250)-(180, 250), 3
LINE (110, 70)-(130, 70), 3
LINE (130, 70)-(180, 250), 3
LINE (110, 70)-(160, 250), 3
PAINT (120, 80), 3
LINE (180, 90)-(200, 170), 4, BF
LINE (180, 90)-(200, 90), 5
LINE (180, 90)-(240, 220), 5
LINE (200, 90)-(250, 200), 5
LINE (250, 200)-(260, 205), 5
LINE (260, 205)-(270, 200), 5
LINE (240, 220)-(250, 225), 5
LINE (250, 225)-(260, 225), 5
LINE (260, 225)-(270, 220), 5
LINE (270, 90)-(290, 220), 5, BF
PAINT (230, 170), 5
'%
LINE (200, 240)-(320, 250), 6, BF
LINE (310, 240)-(330, 200), 6
LINE (320, 250)-(340, 210), 6
'%
LINE (330, 200)-(370, 210), 6, BF
PAINT (330, 220), 6
'7=white
CIRCLE (350, 230), 13, 8
PAINT (350, 230), 8
LINE (370, 280)-(380, 200), 9, BF
LINE (370, 250)-(390, 260), 9, BF
'%
LINE (370, 200)-(400, 210), 9, BF
LINE (410, 210)-(420, 250), 10, BF
'%
LINE (400, 200)-(430, 210), 10, BF
PRINT "Press a key to continue"
DO
fv$ = INKEY$
LOOP WHILE fv$ = ""
END SUB

SUB BCKGRND
CLS
K = 3
A = 1
S = 2
Z = 11
I = 14
'6=ROSSZ
N = 13
'8=ROSSZ
O = 4
SCREEN 9
COLOR 15, 0
FOR X1 = 0 TO 1000 STEP 2
X2 = X1 + 1
FOR Y1 = 0 TO 350 STEP 2
Y2 = Y1 + 1
PSET (X1, Y1), 1
PSET (X2, Y2), 1
NEXT
NEXT
'LINE (0, 20)-(460, 350), 15, B
LINE (130, 210)-(330, 350), 8, BF
FOR X = 130 TO 330 STEP 2
FOR Y = 210 TO 350 STEP 2
PSET (X, Y), 6
NEXT
NEXT
FOR X = 131 TO 329 STEP 2
FOR Y = 211 TO 349 STEP 2
PSET (X, Y), 6
NEXT
NEXT
LINE (150, 170)-(310, 100), 6, BF
LINE (150, 170)-(130, 210), 5
LINE (310, 170)-(330, 210), 5
LINE (150, 170)-(310, 170), 5
LINE (130, 210)-(330, 210), 5
PAINT (230, 190), 5
LINE (140, 80)-(150, 100), 13
LINE (150, 100)-(310, 100), 13
LINE (320, 80)-(310, 100), 13
LINE (140, 80)-(150, 40), 13
LINE (150, 40)-(310, 40), 13
LINE (320, 80)-(310, 40), 13
PAINT (200, 80), 13
LINE (140, 80)-(160, 90), 5
LINE (160, 90)-(300, 90), 5
LINE (300, 90)-(320, 80), 5
LINE (150, 100)-(140, 80), 5
LINE (150, 100)-(310, 100), 5
LINE (310, 100)-(320, 80), 5
PAINT (190, 95), 5
LINE (150, 100)-(160, 90), 0
LINE (310, 100)-(300, 90), 0

LINE (180, 110)-(280, 160), 1, BF
FOR X = 180 TO 280 STEP 2
FOR Y = 110 TO 160 STEP 2
PSET (X, Y), 9
NEXT
NEXT
FOR X = 181 TO 279 STEP 2
FOR Y = 111 TO 159 STEP 2
PSET (X, Y), 9
NEXT
NEXT

LINE (162, 60)-(190, 70), 1, BF

LINE (150, 80)-(160, 50), 4
LINE (160, 50)-(170, 50), 4
LINE (150, 80)-(160, 80), 4
LINE (160, 80)-(170, 50), 4
PAINT (160, 60), 4

LINE (170, 80)-(180, 50), 2
LINE (180, 50)-(190, 50), 2
LINE (170, 80)-(180, 80), 2
LINE (190, 50)-(180, 80), 2
PAINT (180, 60), 2

LINE (190, 50)-(200, 80), 3, BF

LINE (200, 50)-(210, 50), 5
LINE (200, 50)-(210, 70), 5
LINE (210, 70)-(220, 70), 5
LINE (220, 70)-(230, 50), 5
LINE (230, 50)-(220, 50), 5
LINE (220, 50)-(215, 60), 5
LINE (215, 60)-(210, 50), 5
PAINT (210, 60), 5

LINE (230, 50)-(240, 70), 6, BF
LINE (260, 50)-(250, 70), 6, BF
LINE (240, 60)-(245, 70), 6
LINE (245, 70)-(250, 60), 6
LINE (230, 70)-(240, 80), 6
LINE (250, 80)-(260, 70), 6
LINE (240, 80)-(250, 80), 6
PAINT (245, 75), 6

'S
LINE (260, 80)-(270, 80), 7
LINE (270, 80)-(280, 60), 7
LINE (280, 60)-(290, 60), 7

'O
CIRCLE (282, 75), 5, 8

'F
LINE (290, 60)-(290, 80), 9
LINE (290, 70)-(295, 70), 9
LINE (290, 60)-(300, 60), 9

'T
LINE (305, 60)-(305, 80), 9
LINE (300, 60)-(310, 60), 9

'K
LINE (140, 230)-(150, 320), K, BF
LINE (150, 260)-(160, 230), K
LINE (160, 230)-(170, 230), K
LINE (170, 230)-(160, 270), K
LINE (160, 270)-(170, 320), K
LINE (170, 320)-(160, 320), K
LINE (160, 320)-(150, 280), K
PAINT (160, 250), K
PAINT (160, 300), K

'A
LINE (170, 320)-(180, 230), A
LINE (180, 230)-(190, 230), A
LINE (190, 230)-(200, 320), A
LINE (200, 320)-(190, 320), A
LINE (190, 320)-(185, 290), A
LINE (185, 290)-(180, 320), A
LINE (180, 320)-(170, 320), A
CIRCLE (185, 270), 5, A
PAINT (180, 290), A

'S
LINE (210, 270)-(220, 310), S, BF
LINE (210, 230)-(220, 230), S
LINE (220, 230)-(220, 240), S
LINE (220, 240)-(210, 250), S
LINE (210, 250)-(210, 260), S
LINE (210, 260)-(220, 270), S
LINE (220, 310)-(210, 320), S
LINE (210, 320)-(200, 320), S
LINE (200, 320)-(200, 310), S
LINE (200, 310)-(210, 300), S
LINE (210, 280)-(200, 270), S
LINE (200, 270)-(200, 240), S
LINE (200, 240)-(210, 230), S
PAINT (210, 240), S
PAINT (205, 315), S

'Z
LINE (220, 230)-(250, 240), Z, BF
LINE (220, 320)-(250, 310), Z, BF
LINE (240, 240)-(220, 310), Z
LINE (250, 240)-(230, 310), Z
PAINT (240, 260), Z

'I
LINE (250, 230)-(260, 320), I, BF
'LINE (250, 230)-(260, 320), 1, B

'N
LINE (260, 230)-(270, 320), N, BF
LINE (280, 230)-(290, 320), N, BF
LINE (270, 230)-(280, 290), N
LINE (270, 260)-(280, 320), N
PAINT (274, 260), N

'O
LINE (290, 260)-(300, 230), O
LINE (300, 230)-(310, 230), O
LINE (310, 230)-(320, 260), O
LINE (320, 260)-(320, 290), O
LINE (320, 290)-(310, 320), O
LINE (310, 320)-(300, 320), O
LINE (300, 320)-(290, 290), O
LINE (290, 290)-(290, 260), O
LINE (300, 275)-(305, 250), O
LINE (305, 250)-(310, 275), O
LINE (310, 275)-(305, 300), O
LINE (305, 300)-(300, 275), O
PAINT (300, 240), O

''
LINE (315, 220)-(320, 235), O, BF

END SUB

SUB intro
END SUB

SUB logo
PRINT "Kaszinข  v.2.03.3 (c) 1999 by HAMUsoft"
END SUB

