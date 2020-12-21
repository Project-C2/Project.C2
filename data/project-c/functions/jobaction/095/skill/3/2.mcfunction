execute positioned ~ ~0.85 ~ if entity @a[limit=1,distance=..0.7,sort=nearest,nbt={RootVehicle:{Entity:{Passengers:[{id:"minecraft:horse",Tags:["095Hippoglyphe"]}]}}}] run tag @a[limit=1,distance=..0.7,sort=nearest,nbt={RootVehicle:{Entity:{Passengers:[{id:"minecraft:horse",Tags:["095Hippoglyphe"]}]}}}] add 095riding
execute unless score @s counter_3 matches 1.. run scoreboard players remove @s counter_5 5
execute if entity @a[limit=1,tag=095riding] run function project-c:jobaction/095/skill/3/2-riding
execute if score @s counter_1 matches 1 run function project-c:jobaction/095/skill/3/3
execute if score @s counter_1 matches 2.. run scoreboard players add @s counter_2 1
execute if score @s counter_1 matches 10.. run function project-c:jobaction/095/skill/3/4
execute if score @s counter_2 matches 1 run effect clear @s resistance
execute if score @s counter_2 matches 10.. unless score @s counter_3 matches 1.. if entity @s[team=Red] if entity @e[tag=Battle,distance=..2.5,team=!Red,team=!RedDummy,limit=1] run tag @e[tag=Battle,distance=..2.5,team=!Red,team=!RedDummy,limit=1,sort=nearest] add 095hit
execute if score @s counter_2 matches 10.. unless score @s counter_3 matches 1.. if entity @s[team=Blue] if entity @e[tag=Battle,distance=..2.5,team=!Blue,team=!BlueDummy,limit=1] run tag @e[tag=Battle,distance=..2.5,team=!Red,team=!RedDummy,limit=1,sort=nearest] add 095hit
execute if entity @e[tag=095hit,limit=1] run function project-c:jobaction/095/skill/3/hit
#execute if entity @s[scores={counter=100..}] run function project-c:jobaction/095/skill/3/end
tag @a[tag=095riding] remove 095riding
