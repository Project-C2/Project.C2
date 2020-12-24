effect give @s blindness 2 0 true
effect give @s minecraft:slowness 1 0 true
execute if entity @e[tag=065,limit=1,sort=nearest,scores={counter=40}] run function project-c:jobaction/110/skills/08/effect
execute if entity @s[nbt={HurtTime:10s}] run function project-c:jobaction/110/skills/08/damaged
execute unless entity @e[tag=065,limit=1,sort=nearest,distance=..0.35] run function project-c:jobaction/110/skills/08/end
execute store result score @e[tag=065,limit=1,sort=nearest] counter_1 run data get entity @s Health 100
execute store result score @e[tag=065,limit=1,sort=nearest] counter_2 run data get entity @s AbsorptionAmount 100
