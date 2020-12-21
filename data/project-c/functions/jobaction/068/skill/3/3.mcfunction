scoreboard players add @s counter 1

execute if entity @s[scores={counter=60..}] run teleport @s ^ ^ ^2.5 ~ ~

execute if entity @s[scores={counter=70..}] run particle minecraft:explosion ~ ~ ~ 1 1 1 0 1 force @a
execute if entity @s[scores={counter=70..}] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 2

execute if entity @s[scores={counter=70..}] run function project-c:jobaction/068/skill/3/4
execute if entity @s[scores={counter=70..}] run data merge block -33 11 31 {auto:1b}

kill @s[scores={counter=130..}]