scoreboard players add @s counter_1 1

scoreboard players set @s counter_3 0
execute anchored eyes positioned ^ ^ ^1 anchored feet run function project-c:jobaction/097/skill/1/1-loop


#playsound minecraft:item.crossbow.loading_middle master @a ~ ~ ~ 10 0.5
#playsound minecraft:item.crossbow.loading_middle master @a ~ ~ ~ 10 0.5
#playsound minecraft:item.crossbow.loading_middle master @a ~ ~ ~ 10 0.5
execute if score @s counter_1 matches ..10 run playsound minecraft:item.crossbow.loading_middle master @a ~ ~ ~ 10 0.5

execute if score @s counter_1 matches ..10 run effect give @s glowing 2 0
execute if score @s counter_1 matches ..10 run effect give @s slowness 2 1

execute if score @s counter_1 matches 35.. run tp @s @s
execute if score @s counter_1 matches 50.. run function project-c:jobaction/097/skill/1/2
