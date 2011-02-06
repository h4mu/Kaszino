DECLARE SUB LOGO ()
DECLARE SUB EXITTING ()
CLEAR
'DECLARE SUB EXITTING ()
'DECLARE SUB LOGO ()
'ON KEY(10) GOSUB EXITTING
'KEY(10) ON

'A = 0
'B = 0
'C = 0
'D = 0
'E = 0

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

DO
IF INKEY$ = "Q" OR INKEY$ = "q" THEN CALL EXITTING
LOOP WHILE INKEY$ = ""

WELCOME:
CLS
COLOR 2, 1
CALL LOGO
PRINT
PRINT
PRINT " ษอออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT " บ  Welcome  to  HAMUsoft  KASZINเ's installation! บ"
PRINT " ศอออออออออออออออออออออออออออออออออออออออออออออออออผ"
PRINT
PRINT " ษอออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT " บ Please enter the anti-piracy key from the disk! บ"
PRINT " ศอออออออออออออออออออออออออออออออออออออออออออออออออผ"
PRINT
INPUT "The anti piracy key code is:", key$
IF UCASE$(key$) = "HAMU1" THEN
GOTO askdir
ELSEIF key$ = "Q" OR key$ = "q" THEN
CALL EXITTING
ELSE
GOTO WELCOME
END IF

askdir:
CLS
COLOR 2, 1
CALL LOGO
PRINT
PRINT
PRINT " ษอออออออออออออออออออออออออออออออออออออออออป"
PRINT " บ Please enter the destination directory! บ"
PRINT " ศอออออออออออออออออออออออออออออออออออออออออผ"
PRINT
PRINT
INPUT DIR$
IF DIR$ = "q" OR DIR$ = "Q" THEN CALL EXITTING
CLS
CALL LOGO
PRINT
PRINT
PRINT " ษออออออออออออออออออออออออออออออออออออออออออป"
PRINT " บ Would you like to create this directory? บ"
PRINT " ศออออออออออออออออออออออออออออออออออออออออออผ"
PRINT
PRINT " (Y/N)";
DO
reply$ = INKEY$
SELECT CASE reply$
CASE "Y"
GOTO mkdiring
CASE "N"
GOTO copying
CASE "n"
GOTO copying
CASE "q"
CALL EXITTING
CASE "Q"
CALL EXITTING
END SELECT
LOOP UNTIL reply$ = "y"

mkdiring:
MKDIR DIR$

copying:
CLS
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "   Copying files..."
PRINT
LINE (20, 50)-(220, 60), 8, BF
LINE (20, 50)-(21, 60), 14, BF
OPEN "KASZINO.EXE" FOR BINARY AS #1
OPEN "KASZINO.OBJ" FOR BINARY AS #2
OPEN "BRUN45.LIB" FOR BINARY AS #3
OPEN "KASZINO.PIF" FOR BINARY AS #4
OPEN "KASZINO.ICO" FOR BINARY AS #5
CHDIR DIR$
OPEN "KASZINO.EXE" FOR BINARY AS #6
OPEN "KASZINO.OBJ" FOR BINARY AS #7
OPEN "BRUN45.LIB" FOR BINARY AS #8
OPEN "KASZINO.PIF" FOR BINARY AS #9
OPEN "KASZINO.ICO" FOR BINARY AS #10
LINE (20, 50)-(30, 60), 14, BF
DO
A = A + 1
GET #1, A, EXE
PUT #6, A, EXE
LOOP UNTIL EOF(1)
LINE (20, 50)-(40, 60), 14, BF
LINE (20, 50)-(50, 60), 14, BF
DO
B = B + 1
GET #2, B, OBJ
PUT #7, B, OBJ
LOOP UNTIL EOF(2)
LINE (20, 50)-(60, 60), 14, BF
LINE (20, 50)-(70, 60), 14, BF
DO
C = C + 1
GET #3, C, LIB
PUT #8, C, LIB
LOOP UNTIL EOF(3)
LINE (20, 50)-(80, 60), 14, BF
LINE (20, 50)-(90, 60), 14, BF
DO
D = D + 1
GET #4, D, PIF
PUT #9, D, PIF
LOOP UNTIL EOF(4)
LINE (20, 50)-(100, 60), 14, BF
LINE (20, 50)-(110, 60), 14, BF
DO
E = E + 1
GET #5, E, ICO
PUT #10, E, ICO
LOOP UNTIL EOF(5)
LINE (20, 50)-(120, 60), 14, BF
LINE (20, 50)-(130, 60), 14, BF
LINE (20, 50)-(140, 60), 14, BF
LINE (20, 50)-(150, 60), 14, BF
LINE (20, 50)-(160, 60), 14, BF
LINE (20, 50)-(170, 60), 14, BF
LINE (20, 50)-(180, 60), 14, BF
LINE (20, 50)-(190, 60), 14, BF
LINE (20, 50)-(200, 60), 14, BF
LINE (20, 50)-(210, 60), 14, BF
LINE (20, 50)-(220, 60), 14, BF
CLOSE 1
CLOSE 2
CLOSE 3
CLOSE 4
CLOSE 5
CLOSE 6
CLOSE 7
CLOSE 8
CLOSE 9
CLOSE 10
PRINT "  Press any key"
DO
LOOP WHILE INKEY$ = ""
CLS
CALL LOGO
PRINT
PRINT
PRINT " ษออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT " บ Installation complete. Press R to run program, บ"
PRINT " บ  Q to quit HINSTALLATION installing program!   บ"
PRINT " ศออออออออออออออออออออออออออออออออออออออออออออออออผ"
DO
CH$ = INKEY$
IF CH$ = "r" OR CH$ = "R" THEN
CHAIN "KASZINO.EXE"
ELSEIF CH$ = "Q" OR CH$ = "q" THEN
GOTO ENDING
END IF
LOOP WHILE CH$ = ""

ENDING:
SCREEN 0
CALL LOGO
PRINT
PRINT
PRINT "Thank you for purchasing this software"
END

SUB EXITTING
CLS
CALL LOGO
PRINT
PRINT
PRINT " ษออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT " บ Installation is incomplete. Do you really want บ"
PRINT " บ  to  quit?  Press  Y  for  yes,  N  for  no.   บ"
PRINT " ศออออออออออออออออออออออออออออออออออออออออออออออออผ"
DO
BT$ = INKEY$
IF BT$ = "y" OR BT$ = "Y" THEN
SCREEN 0
CALL LOGO
PRINT
PRINT
PRINT "Thank you for purchasing this software"
END
'ELSEIF BT$ <> "n" AND BT$ <> "N" AND BT$ <> "y" AND BT$ <> "Y" THEN
END IF
LOOP UNTIL BT$ = "n" OR BT$ = "N"
END SUB

SUB LOGO
PRINT "HINSTALLER by HAMUsoft (c) 1999.      /Press Q to quit/"
END SUB

