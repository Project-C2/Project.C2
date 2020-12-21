execute as @a[scores={jobNumber=95,counter_4=1..9},tag=095_2resistance] unless data entity @s {ActiveEffects:[{Id:7b}]} run effect clear @s resistance
execute as @a[scores={jobNumber=95,counter_4=1..9},tag=095_2resistance] unless data entity @s {ActiveEffects:[{Id:7b}]} run tag @s remove 095_2resistance
execute if entity @e[type=area_effect_cloud,tag=095_aecnerf,limit=1] as @e[type=area_effect_cloud,tag=095_aecnerf] at @s unless entity @a[scores={jobNumber=95,counter_4=2..},distance=..2.5,limit=1] run function project-c:jobaction/095/skill/4/aec2
execute at @a[scores={jobNumber=95,counter_4=2}] if entity @e[type=area_effect_cloud,tag=!095_aecnerf,distance=..2.5,limit=1,nbt={Effects:[{Id:7b}]}] as @e[type=area_effect_cloud,distance=..2.5,nbt={Effects:[{Id:7b}]}] run tag @s add 095this
execute at @a[scores={jobNumber=95,counter_4=2}] if entity @e[type=area_effect_cloud,tag=!095_aecnerf,distance=..2.5,limit=1,nbt={Potion:"minecraft:harming"}] as @e[type=area_effect_cloud,distance=..2.5,nbt={Potion:"minecraft:harming"}] run tag @s add 095this
execute at @a[scores={jobNumber=95,counter_4=2}] if entity @e[type=area_effect_cloud,tag=!095_aecnerf,distance=..2.5,limit=1,nbt={Potion:"minecraft:strong_harming"}] as @e[type=area_effect_cloud,distance=..2.5,nbt={Potion:"minecraft:strong_harming"}] run tag @s add 095this
execute if entity @e[type=area_effect_cloud,tag=095this,limit=1] as @a[scores={jobNumber=95,counter_4=2}] at @s if entity @e[tag=095this,limit=1,distance=..2.5] run function project-c:jobaction/095/skill/4/2
execute if entity @e[tag=095this,limit=1] as @e[tag=095this] at @s run function project-c:jobaction/095/skill/4/aec

execute at @a[scores={jobNumber=95,counter_4=1..2},gamemode=!spectator] run particle minecraft:block glass ~ ~1 ~ 1 1 1 0.4 12 normal @a
execute at @a[scores={jobNumber=95,counter_4=1..2},gamemode=!spectator] run particle minecraft:block glass ~ ~1 ~ 1 1 1 0.4 3 force @a

scoreboard players remove @a[scores={jobNumber=95,counter_4=3..}] counter_4 1
scoreboard players remove @a[scores={jobNumber=95,counter_4=1..2,counter_2=..0}] counter_4 1