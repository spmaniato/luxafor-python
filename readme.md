# Luxafor Python Script

## Parameters
-l = LED - 1-6 for specific LED, 65 for front, 66 for back, 0 for all, 255 for all one color
-r = RED value (0-255)
-g = GREEN value (0-255)
-b = BLUE value (0-255)
-s = Speed value - Determines speed of strobe or fade (0-255)
-t = Repeat value - Determines the frequency of strobe or wave (0-255)
-w = Wave value - 5 Different Patterns available (1-5)
-p = Built In Patterns - 8 built in patterns

## Actions

### Color

Set the specified LED to the specified color

    luxafor.py color -l 255 -r 255 -g 0 -b 0

### Fade

    luxafor.py fade -l 255 -r 0 -g 255 -b 0

### Strobe

    luxafor.py strobe -l 255 -r 0 -g 0 -b 255 -s 20 -t 5

### Wave

    luxafor.py wave -w 4 -r 0 -g 0 -b 255 -s 20 -t 3 

### Pattern

    luxafor.py pattern -p 2 -r 3

## Raw Values

### Solid Color
Raw data array posisitions as follows:

0. Always 0
1. 1
2. 1-6 for specific LED, 65 for front, 66 for back, 0 for all, 255 for all one color
3. RED Value 0-255
4. GREEN Value 0-255
5. BLUE Value 0-255
6. N/A
7. N/A
8. N/A

### Fade Color
Raw data array posisitions as follows:

0. Always 0
1. 2
2. 1-6 for specific LED, 65 for front, 66 for back, 0 for all, 255 for all one color
3. RED Value 0-255
4. GREEN Value 0-255
5. BLUE Value 0-255
6. Changing Time (Duration)
7. N/A
8. N/A

### Strobe Color
Raw data array posisitions as follows:

0. Always 0
1. 3
2. 1-6 for specific LED, 65 for front, 66 for back, 0 for all, 255 for all one color
3. RED Value 0-255
4. GREEN Value 0-255
5. BLUE Value 0-255
6. Speed (30-40 is a fairly calm value)
7. N/A
8. N/A

### Wave Color

0. Always 0
1. 4
2. Wave Type
3. RED Value 0-255
4. GREEN Value 0-255
5. BLUE Value 0-255
6. N/A
7. Repeat (0-255)
8. Speed (10 is a fairly good value)

### Built In Patterns

0. Always 0
1. 6
2. Pattern Number (1-8)
3. Repeat (0-255)
4. N/A
5. N/A
6. N/A
7. N/A
8. N/A