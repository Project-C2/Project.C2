playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1.3 0.5
playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1.3 0.5
scoreboard players reset @s counter
scoreboard players add @s stockcounter 1
execute if score @s counter_1 matches 3 run function project-c:jobaction/110/replaceitem/weapon
scoreboard players remove @s stockcounter 1