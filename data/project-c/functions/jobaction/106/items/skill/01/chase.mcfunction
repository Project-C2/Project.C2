#スキル6

playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 1.4
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.7 1.2
particle minecraft:effect ~ ~1 ~ 0.2 0.5 0.2 1 20 force
tag @s add invoker
execute if entity @s[team=Red] as @e[distance=..5,tag=!invoker,tag=Battle,team=!Red,nbt={HurtTime:10s}] run tag @s add hit
execute if entity @s[team=Blue] as @e[distance=..5,tag=!invoker,tag=Battle,team=!Blue,nbt={HurtTime:10s}] run tag @s add hit
tag @s remove invoker
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run scoreboard players set @s 106-relieveD 20

execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run tag @s remove hit
scoreboard players reset #hurt_by



tag @s add 106_relieve_chase