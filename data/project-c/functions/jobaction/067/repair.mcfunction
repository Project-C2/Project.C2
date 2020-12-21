playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 2
particle minecraft:firework ~ ~ ~ 1 1 1 1 100 normal @a
particle minecraft:firework ~ ~ ~ 1 1 1 1 25 force @a
particle minecraft:happy_villager ~ ~ ~ 2 2 2 1 100 normal @a
particle minecraft:happy_villager ~ ~ ~ 2 2 2 1 25 force @a
scoreboard players remove @s counter_2 21
scoreboard players reset @s counter_3
execute unless score @s counter_2 matches 0.. run scoreboard players set counter_2 counter 0
function project-c:jobaction/067/replaceitem/shield