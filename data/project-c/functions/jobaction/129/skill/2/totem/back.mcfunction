
scoreboard players operation #129- playerNumber = @s playerNumber

execute as @a[tag=Battle] if score @s playerNumber = #129- playerNumber run tag @s add 129-2-owner

particle dust 0.7 0 0 1 ~ ~1 ~ 0 0 0 0 1 force @a
execute as @a[tag=129-2-owner] at @s run particle smoke ~ ~1 ~ 0.3 0.4 0.3 0.01 3 force
execute as @a[tag=129-2-owner] run effect clear @s regeneration
execute as @a[tag=129-2-owner] run tag @s add Regene
execute as @a[tag=129-2-owner,nbt=!{ActiveEffects:[{Id:20b,Amplifier:1b}]}] at @s run summon area_effect_cloud ~ ~0.8 ~ {Particle:"dust 0 0 0 0",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:20b,Duration:2,Amplifier:0,ShowParticles:0b,ShowIcon:0b}]}

execute as @a[tag=129-2-owner] store result score #129- counter_1 run data get entity @s Health 100
execute if score @s counter_2 > #129- counter_1 run tag @s add 129-2-hh-check
execute if entity @s[tag=129-2-hh-check] run scoreboard players operation #129- counter_3 = @s counter_2
execute if entity @s[tag=129-2-hh-check] run scoreboard players operation #129- counter_3 -= #129- counter_1
execute if entity @s[tag=129-2-hh-check] run scoreboard players operation @s counter_3 += #129- counter_3
scoreboard players operation @s counter_2 = #129- counter_1

execute if score @s counter_3 > @s subcounter run tag @s add 129-2-back


execute if entity @s[tag=129-2-back] run scoreboard players remove @s HarfHP 100
execute if entity @s[tag=129-2-back] if score @s subcounter > @s counter_9 run tag @s add 129-2-harfhp
execute if entity @s[tag=129-2-back,tag=129-2-harfhp] run scoreboard players operation @s HarfHP += @s counter_9
execute if entity @s[tag=129-2-back,tag=129-2-harfhp] run scoreboard players operation @a[tag=129-2-owner] ScoreToHealth = @s HarfHP
execute if entity @s[tag=129-2-back] unless score @s subcounter > @s counter_9 run tag @s add 129-2-starthp
execute if entity @s[tag=129-2-back,tag=129-2-starthp] run scoreboard players operation @s HarfHP += @s subcounter
execute if entity @s[tag=129-2-back,tag=129-2-starthp] run scoreboard players operation @a[tag=129-2-owner] ScoreToHealth = @s HarfHP
execute if entity @s[tag=129-2-back] run scoreboard players set @a[tag=129-2-owner] OutCombat 0
execute if entity @s[tag=129-2-back] run effect clear @a[tag=129-2-owner] minecraft:regeneration
execute if entity @s[tag=129-2-back] as @a[tag=129-2-owner] run attribute @s generic.max_health modifier remove 0-0-129-2-0
execute if entity @s[tag=129-2-back] run effect give @a[tag=129-2-owner] minecraft:blindness 1 0 true
execute if entity @s[tag=129-2-back] run particle flash ~ ~1 ~ 0 0 0 0 1 force
execute if entity @s[tag=129-2-back] as @a[tag=129-2-owner] run tp @s @s
execute if entity @s[tag=129-2-back] run tp @a[tag=129-2-owner] ~ ~ ~ ~ ~


execute if entity @s[tag=129-2-back] run scoreboard players set @s counter -1
execute if entity @s[tag=129-2-back] run tag @s remove 129-2-back
execute if entity @s[tag=129-2-harfhp] run tag @s remove 129-2-harfhp
execute if entity @s[tag=129-2-starthp] run tag @s remove 129-2-starthp

execute as @a[tag=129-2-owner] run tag @s remove 129-2-owner

scoreboard players reset #129-
tag @s remove 129-2-hh-check