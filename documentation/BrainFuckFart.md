# BrainFuckFart

## Introduction

BrainFuckFart was created as a code pationate challenge. I didn't find a satisfying implementation so I just made one. I found out it wasn't that hard and started adding my own features. Now I want to make an actual language out of the brainfuckfart so an implementation of brainfck is usable.

## Concept

As the brainfuck, brainfuckfart works on a single array of bytes. The brainfuckfart has an extra cell available at any time through the program. Even if brainfuckfart has a comment command, any non-command character won't raise an error and will just be ignored.

## Commands

| Character | Name              | Description                                                                                     |
|:---------:|-------------------|-------------------------------------------------------------------------------------------------|
|     +     | Add               | Add 1 to the current cell                                                                       |
|     -     | Subtract          | Subtract 1 to the current cell                                                                  |
|     >     | Next              | Move to the next cell                                                                           |
|     <     | Previous          | Move to the previous cell                                                                       |
|     [     | Loop Open         | Marks the start of a loop                                                                       |
|     ]     | Loop Back         | Go back to the start of the loop if cell is not 0                                               |
|     \|    | End Loop if 0     | Go to the end of the loop if cell is 0                                                          |
|     (     | Skip if not 0     | Go to skip end ')' if cell is not 0                                                             |
|     )     | Skip end          | Marks end of Skip                                                                               |
|     *     | Jump              | Jump to the cell with the index of current cell value consuming the current cell before jumping |
|     ,     | Input             | Store 1 user input in current cell value                                                        |
|     .     | Output            | Prints current cell value as an ASCII character                                                 |
|     ;     | Input Number      | Store the number the user input in current cell value                                           |
|     :     | Output Number     | Prints current cell value as a number                                                           |
|     !     | Output Cell Index | Prints current cell index                                                                       |
|     v     | Load Temp         | Load Temp cell value in current cell value                                                      |
|     ^     | Upload Temp       | Set Temp cell value to current cell value                                                       |
|     ?     | Random            | Set current cell value to a random number                                                       |
|     /     | Comment           | Encapsulate a part that isn't read even if it contains commands                                 |