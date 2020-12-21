execute if entity @s[team=Red] anchored eyes positioned ^ ^ ^3 as @e[team=!Red,tag=Battle,nbt={HurtTime:10s},limit=1,sort=nearest,distance=..3.5] run tag @s add 095taken
execute if entity @s[team=Blue] anchored eyes positioned ^ ^ ^3 as @e[team=!Blue,tag=Battle,nbt={HurtTime:10s},limit=1,sort=nearest,distance=..3.5] run tag @s add 095taken
scoreboard players set @e[tag=095taken] stanTime 41
execute at @e[tag=095taken] run particle dust 100 100 100 1 ~ ~1 ~ 1 1 1 1 200 normal @a
execute at @e[tag=095taken] run particle dust 100 100 100 1 ~ ~1 ~ 1 1 1 1 50 force @a
execute at @e[tag=095taken] run particle explosion ~ ~1 ~ 0.1 0.1 0.1 1 3 force @a
execute at @e[tag=095taken] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.1 2
execute at @e[tag=095taken] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.1 1.2
execute at @e[tag=095taken] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.1 1.2
data merge block -113 2 -122 {auto:1b}




tag @e[tag=095taken] remove 095taken

advancement revoke @s only project-c:wanco_job/095/trident