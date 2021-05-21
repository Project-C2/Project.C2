scoreboard players set @a[tag=JobChanged,tag=!changerelic] CT1 1200
scoreboard players set @a[tag=JobChanged,tag=!changerelic] CT2 1200
scoreboard players set @a[tag=JobChanged,tag=!changerelic] CT3 1200
clear @a[tag=JobChanged]
function project-c:general/outfitsset
execute as @a[tag=JobChanged] run function project-c:general/max-health
execute as @a[tag=JobChanged] at @s run attribute @s minecraft:generic.knockback_resistance base set 0
execute as @a[tag=JobChanged] at @s unless entity @s[tag=Battle,scores={relic=30}] run effect give @s instant_health 1 100 true
effect give @a[tag=JobChanged] saturation 1000000 0 true
scoreboard players set @a[tag=JobChanged] drop 1
execute if entity @a[tag=JobChanged,scores={relic=27},limit=1] run tag @a[tag=JobChanged,scores={relic=27}] remove relic27ct1
execute if entity @a[tag=JobChanged,scores={relic=27},limit=1] run tag @a[tag=JobChanged,scores={relic=27}] remove relic27ct1_2
execute if entity @a[tag=JobChanged,scores={relic=27},limit=1] run tag @a[tag=JobChanged,scores={relic=27}] remove relic27ct2
execute if entity @a[tag=JobChanged,scores={relic=27},limit=1] run tag @a[tag=JobChanged,scores={relic=27}] remove relic27ct2_2
execute if entity @a[tag=JobChanged,scores={relic=27},limit=1] run tag @a[tag=JobChanged,scores={relic=27}] remove relic27ct3
execute if entity @a[tag=JobChanged,scores={relic=27},limit=1] run tag @a[tag=JobChanged,scores={relic=27}] remove relic27ct3_2

tag @a[tag=JobChanged,tag=changerelic] remove changerelic
tag @a[tag=JobChanged] remove JobChanged
