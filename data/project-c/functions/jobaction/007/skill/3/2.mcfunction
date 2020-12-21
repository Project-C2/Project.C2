kill @e[tag=ThunderElementStand,distance=..5,limit=1,sort=nearest]
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:200,Tags:["ThunderElementStand"]}

execute if entity @s[scores={counter_1=0}] run tag @e[tag=ThunderElementStand,distance=..5,limit=1,sort=nearest] add Charge0
execute if entity @s[scores={counter_1=1}] run tag @e[tag=ThunderElementStand,distance=..5,limit=1,sort=nearest] add Charge1
execute if entity @s[scores={counter_1=2}] run tag @e[tag=ThunderElementStand,distance=..5,limit=1,sort=nearest] add Charge2