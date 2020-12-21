scoreboard players add @e[tag=darknessoverload2] counter 1
scoreboard players add @e[tag=darknessoverload2] subcounter 1

tp @s ^ ^ ^1.75

execute if entity @s[tag=darknessoverload2R,scores={subcounter=2}] run summon armor_stand ~ ~ ~ {Motion:[0.0,-1.0,0.0],Small:1,Silent:1b,Invisible:1,Tags:["DO2Stand","DO2RStand"]}
execute if entity @s[tag=darknessoverload2B,scores={subcounter=2}] run summon armor_stand ~ ~ ~ {Motion:[0.0,-1.0,0.0],Small:1,Silent:1b,Invisible:1,Tags:["DO2Stand","DO2BStand"]}

scoreboard players reset @e[tag=darknessoverload2,scores={subcounter=2}] subcounter
execute if entity @e[tag=darknessoverload2] run data merge block 25 7 31 {auto:1b}

kill @e[tag=darknessoverload2,scores={counter=20..}]