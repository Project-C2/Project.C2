function project-c:jobaction/125/skill/1/3

teleport @s ~ ~0.03 ~ ~3 ~

scoreboard players remove @s counter 1
kill @s[scores={counter=..0}]

data merge block 128 64 -62 {auto:1b}