execute if entity @s[team=Red] anchored eyes positioned ^ ^ ^1 run tag @e[team=!Red,tag=Battle,nbt=!{HurtTime:0s},distance=..6,sort=nearest,limit=1] add 039-trans
execute if entity @s[team=Blue] anchored eyes positioned ^ ^ ^1 run tag @e[team=!Blue,tag=Battle,nbt=!{HurtTime:0s},distance=..6,sort=nearest,limit=1] add 039-trans

execute positioned as @e[tag=039-trans,sort=nearest,limit=1] run playsound minecraft:entity.wither.death master @a ~ ~ ~ 0.3 2
execute positioned as @e[tag=039-trans,sort=nearest,limit=1] run particle dust 0 0 0 1 ~ ~1 ~ 0.9 0.9 0.9 1 240 normal @a
execute positioned as @e[tag=039-trans,sort=nearest,limit=1] run particle dust 0 0 0 1 ~ ~1 ~ 0.9 0.9 0.9 1 60 force @a

execute as @e[tag=039-trans] positioned as @s run function project-c:jobaction/039/skill/3/1
execute if entity @e[tag=039trast_AEC,limit=1] run data modify entity @e[tag=039trast_AEC,limit=1,sort=nearest] Owner set from entity @s UUID


execute if entity @e[tag=039-trans,limit=1] run scoreboard players set @s CT3 600
execute if entity @e[tag=039-trans,limit=1] run tag @s remove SkillReady3
execute if entity @e[tag=039-trans,limit=1] run scoreboard players set @s usedSkill 3

tag @e[tag=039-trans] remove 039-trans