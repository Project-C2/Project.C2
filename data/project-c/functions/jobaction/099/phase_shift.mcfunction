
scoreboard players add @s counter_3 1
scoreboard players operation @s counter_4 = @s counter_3
execute if entity @s[gamemode=!spectator] run playsound minecraft:item.totem.use master @a ~ ~ ~ 1 1.8
execute if entity @s[gamemode=!spectator] run particle minecraft:cloud ~ ~1 ~ 0.2 0.4 0.2 0.5 35 force @a
execute if entity @s[gamemode=!spectator] run particle minecraft:end_rod ~ ~1 ~ 0.2 0.4 0.2 0.1 15 force @a
function project-c:jobaction/099/skill/3/item_shift
scoreboard players operation @s counter_5 -= #job99_phase_shift counter