scoreboard players operation #129- playerNumber = @s playerNumber
scoreboard players operation #129- teamNumber = @s teamNumber
scoreboard players operation #129- stockcounter = @s stockcounter
scoreboard players operation #129- HarfHP = @s HarfHP
scoreboard players remove #129- HarfHP 10

#アマスタに記憶してる効果時間を取得
scoreboard players operation #129- counter = @s counter

summon armor_stand ~ ~ ~ {Tags:["129-totem","129-totem-ArV","129-totemA","this2","this2-"],Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:villager",Silent:1b,NoAI:1b,Health:1000f,Tags:["129-totemV","129-totem-ArV","129-totemA","this2-","this2-V","Battle"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1000}],VillagerData:{profession:"minecraft:none"}}]}

tag @s add 129-totem-ArV-R-me
execute at @e[tag=129-totem-ArV-R-me] run tp @e[tag=this2] ~ ~ ~ ~ ~

execute as @e[type=witch,distance=..0] run tag @s add 129-kill-witch
execute as @e[tag=129-kill-witch] at @s run tp @s ~ -20 ~
execute as @e[tag=129-kill-witch] run kill @s

#前のコアを消す処理
execute as @e[tag=129-totem] if score @s playerNumber = #129- playerNumber run scoreboard players add #129- subcounter 1
execute if score #129- subcounter matches 1.. as @e[tag=129-totem-ArV] if score @s playerNumber = #129- playerNumber run kill @s


scoreboard players operation @e[tag=this2-] playerNumber = #129- playerNumber
execute if score #129- teamNumber matches 1 run team join RedDummy @e[tag=this2-V]
execute if score #129- teamNumber matches 2 run team join BlueDummy @e[tag=this2-V]
scoreboard players operation @e[tag=this2-] teamNumber = #129- teamNumber
execute as @e[tag=this2-V] store result entity @s Health double 0.1 run scoreboard players get #129- HarfHP
scoreboard players operation @e[tag=this2] HarfHP = #129- HarfHP
scoreboard players operation @e[tag=this2] counter = #129- counter

scoreboard players operation @e[tag=this2-] stockcounter = #129- stockcounter

tag @e[tag=this2] remove this2
tag @e[tag=this2-] remove this2-
tag @e[tag=this2-V] remove this2-V

tag @s remove 129-totem-ArV-R-me