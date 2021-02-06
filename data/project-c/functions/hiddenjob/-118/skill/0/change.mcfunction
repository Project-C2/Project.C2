execute if entity @s[scores={counter=1..}] if entity @a[tag=-118-selecting,limit=1] as @a[tag=-118-selecting] if score @s playerNumber = @a[tag=-118-anchor,limit=1] counter run tag @s remove -118-selecting

execute as @a[tag=Battle,tag=!-118-anchor,limit=1,sort=nearest] run scoreboard players operation @a[tag=-118-anchor] counter = @s playerNumber
execute as @a[tag=Battle,tag=!-118-anchor,limit=1,sort=nearest] run tag @s add -118-selecting

playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 1.6
playsound minecraft:block.chest.locked master @a ~ ~ ~ 0.1 1.6
particle crit ~ ~1 ~ 0 0 0 0.8 50
execute as @s at @s run playsound minecraft:entity.arrow.hit_player master @a
execute as @s at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 1.6
execute as @s at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 0.1 1.6
execute as @s at @s run particle crit ~ ~1 ~ 0 0 0 0.8 50

execute facing entity @e[tag=-118-anchor] feet run function project-c:hiddenjob/-118/skill/0/particle