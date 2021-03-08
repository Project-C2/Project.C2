scoreboard players add @s counter 1

playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 1
tag @s add 074dummy
execute if entity @s[team=RedDummy] as @e[distance=..3.6,tag=Battle,team=!Red,team=!RedDummy] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=074dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..0.7] run tag @s add 074damaged
execute if entity @s[team=BlueDummy] as @e[distance=..3.6,tag=Battle,team=!Blue,team=!BlueDummy] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=074dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..0.7] run tag @s add 074damaged
execute if entity @s[team=RedDummy] as @e[distance=..3.6,tag=Battle,team=!Red,team=!RedDummy,tag=!074-0hit] run function project-c:jobaction/074/skill/2/eyes-check
execute if entity @s[team=BlueDummy] as @e[distance=..3.6,tag=Battle,team=!Blue,team=!BlueDummy,tag=!074-0hit] run function project-c:jobaction/074/skill/2/eyes-check
tag @s remove 074dummy

execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal @a
function project-c:jobaction/074/skill/2/reflect
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
function project-c:jobaction/074/skill/2/reflect
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal @a
function project-c:jobaction/074/skill/2/reflect
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["074dummy","074lavafire"]}
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal @a
function project-c:jobaction/074/skill/2/reflect
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
function project-c:jobaction/074/skill/2/reflect
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal @a
function project-c:jobaction/074/skill/2/reflect
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["074dummy","074lavafire"]}
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal @a
function project-c:jobaction/074/skill/2/reflect
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
function project-c:jobaction/074/skill/2/reflect
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal @a
function project-c:jobaction/074/skill/2/reflect
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["074dummy","074lavafire"]}

execute if entity @e[tag=074damaged,limit=1] unless score @s counter_3 matches 1.. as @e[tag=074damaged] at @s run summon area_effect_cloud ~ ~0.3 ~ {CustomName:'{"text":"ラヴァジャヴェリン","color":"red"}',Particle:"",Radius:0.4f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
execute if entity @e[tag=074damaged,limit=1] if score @s counter_3 matches 1.. as @e[tag=074damaged] at @s run summon area_effect_cloud ~ ~0.3 ~ {CustomName:'{"text":"ラヴァジャヴェリン","color":"red"}',Particle:"",Radius:0.4f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
execute if entity @e[tag=074damaged,limit=1] run tag @e[tag=074damaged] remove 074damaged
scoreboard players operation @e[tag=074dummy] playerNumber = @s playerNumber
execute if entity @s[team=RedDummy] run team join RedDummy @e[tag=074dummy]
execute if entity @s[team=BlueDummy] run team join BlueDummy @e[tag=074dummy]
tag @e[tag=074dummy] remove 074dummy
execute if score @s counter matches 25.. run function project-c:jobaction/074/skill/2/2
execute if score @s counter matches 25.. run kill @s