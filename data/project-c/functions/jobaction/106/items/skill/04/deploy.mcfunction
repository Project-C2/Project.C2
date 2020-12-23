#スキル4
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:60,Tags:["106_sprink_arrow_aec","number_operation"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=106_sprink_arrow_aec,tag=number_operation] playerNumber = @s playerNumber
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=106_sprink_arrow_aec,tag=number_operation] team_number = @s team_number
tag @e[type=minecraft:area_effect_cloud,tag=106_sprink_arrow_aec,tag=number_operation] remove number_operation

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.6
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.6
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.6

execute as @e[tag=106_sprink_arrow_deploy] run tag @s remove 106_sprink_arrow_deploy


scoreboard players operation #entity_number counter = @s playerNumber
execute as @a if score @s playerNumber = #entity_number counter run tag @s add 106_sprink_arrow_shoter

execute if entity @p[tag=106_sprink_arrow_shoter,scores={counter_3=4}] as @a[tag=106_sprink_arrow_shoter,scores={counter_3=4}] run tag @s remove SkillDelay1
execute if entity @p[tag=106_sprink_arrow_shoter,scores={counter_3=4,CT1=..1199}] as @a[tag=106_sprink_arrow_shoter,scores={counter_3=4,CT1=..1199}] run clear @s #project-c:neac/all{106_auxiliary_skill:4b}
execute if entity @p[tag=106_sprink_arrow_shoter,scores={counter_3=4,CT1=..1199}] as @a[tag=106_sprink_arrow_shoter,scores={counter_3=4,CT1=..1199}] run function project-c:general/cooltimecounter

execute if entity @p[tag=106_sprink_arrow_shoter,scores={counter_4=4}] as @a[tag=106_sprink_arrow_shoter,scores={counter_4=4}] run tag @s remove SkillDelay2
execute if entity @p[tag=106_sprink_arrow_shoter,scores={counter_4=4,CT2=..1199}] as @a[tag=106_sprink_arrow_shoter,scores={counter_4=4,CT2=..1199}] run clear @s #project-c:neac/all{106_auxiliary_skill:4b}
execute if entity @p[tag=106_sprink_arrow_shoter,scores={counter_4=4,CT2=..1199}] as @a[tag=106_sprink_arrow_shoter,scores={counter_4=4,CT2=..1199}] run function project-c:general/cooltimecounter

execute if entity @p[tag=106_sprink_arrow_shoter,scores={counter_5=4}] as @a[tag=106_sprink_arrow_shoter,scores={counter_5=4}] run tag @s remove SkillDelay3
execute if entity @p[tag=106_sprink_arrow_shoter,scores={counter_5=4,CT3=..1199}] as @a[tag=106_sprink_arrow_shoter,scores={counter_5=4,CT3=..1199}] run clear @s #project-c:neac/all{106_auxiliary_skill:4b}
execute if entity @p[tag=106_sprink_arrow_shoter,scores={counter_5=4,CT3=..1199}] as @a[tag=106_sprink_arrow_shoter,scores={counter_5=4,CT3=..1199}] run function project-c:general/cooltimecounter


execute if entity @p[tag=106_sprink_arrow_shoter,scores={counter_3=4,CT1=1200..}] as @a[tag=106_sprink_arrow_shoter,scores={counter_3=4,CT1=1200..}] run function project-c:jobaction/106/items/skill/04/set
execute if entity @p[tag=106_sprink_arrow_shoter,scores={counter_4=4,CT2=1200..}] as @a[tag=106_sprink_arrow_shoter,scores={counter_4=4,CT2=1200..}] run function project-c:jobaction/106/items/skill/04/set
execute if entity @p[tag=106_sprink_arrow_shoter,scores={counter_5=4,CT3=1200..}] as @a[tag=106_sprink_arrow_shoter,scores={counter_5=4,CT3=1200..}] run function project-c:jobaction/106/items/skill/04/set

execute if entity @p[tag=106_sprink_arrow_shoter] run tag @a[tag=106_sprink_arrow_shoter] remove 106_sprink_arrow_shoter

tag @s add kill
teleport @s ~ ~-512 ~
kill @s

scoreboard players set @s counter_2 100000