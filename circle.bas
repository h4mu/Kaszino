CLS
SCREEN 13
WIDTH 40, 25
LINE (0, 0)-(320, 200), 1, BF
PRINT
PRINT "EZ ITTEN A TESZT VALA!"
FOR red = 0 TO 63
FOR green = 0 TO 63
FOR blue = 0 TO 63
number = 65536 * blue + 256 * green + red
PALETTE 45, number
CIRCLE (160, 100), R1, 45
IF NOT INKEY$ = "" THEN END
IF R1 > 160 THEN EXIT FOR
NEXT
R1 = R1 + 1
NEXT
FOR blue = 0 TO 63
FOR green = 0 TO 63
number = 65536 * blue + 256 * green + red
PALETTE 46, number
CIRCLE (160, 100), R2, 46
IF NOT INKEY$ = "" THEN END
IF R2 > 160 THEN EXIT FOR
NEXT
R2 = R2 + 1
NEXT
NEXT

