scoreboard players add @s counter 1

execute if entity @e[tag=125-rain,scores={counter=4..}] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["125-rrbullet"],NoGravity:1b,Marker:1b}
execute if entity @e[tag=125-rain,scores={counter=4..}] run data merge block 128 70 -62 {auto:1b}
kill @s[scores={counter=34..}]