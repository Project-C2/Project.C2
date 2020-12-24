execute if score @s stockcounter matches 8.. run scoreboard players set @s counter 100100
scoreboard players remove @s stockcounter 1
function project-c:jobaction/110/replaceitem/weapon
scoreboard players operation #110- playerNumber = @s playerNumber
particle minecraft:block stone ~ ~ ~ 0.8 0.8 0.8 1 40 normal @a
particle minecraft:block stone ~ ~ ~ 0.8 0.8 0.8 1 10 force @a
playsound minecraft:block.stone.place master @a ~ ~ ~ 1 2

#シュルカー上限超えの場合の処理
execute as @e[tag=110_set_stone] if score @s playerNumber = #110- playerNumber run scoreboard players add #110- subcounter 1
execute if score #110- subcounter matches 10.. as @e[tag=110_set_stone,limit=9,sort=nearest] if score @s playerNumber = #110- playerNumber run tag @s add saved_110_set_stone
execute if score #110- subcounter matches 10.. as @e[tag=110_set_stone,tag=!saved_110_set_stone] if score @s playerNumber = #110- playerNumber run kill @s
tag @e[tag=saved_110_set_stone] remove saved_110_set_stone

summon minecraft:shulker ~ ~ ~ {Color:0b,Silent:1b,NoAI:1b,Tags:["this2","110_set_stone","Battle"],Health:6f,Attributes:[{Name:"generic.max_health",Base:6d},{Name:"generic.armor",Base:20d},{Name:"generic.armor_toughness",Base:20d}],ActiveEffects:[{Id:13b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
scoreboard players operation @e[tag=this2,limit=1] playerNumber = @s playerNumber
execute if entity @s[team=Red] run team join Red @e[tag=this2]
execute if entity @s[team=Blue] run team join Blue @e[tag=this2]
execute if entity @s[team=Red] as @e[tag=this2] run data modify entity @s Color set value 14b
execute if entity @s[team=Blue] as @e[tag=this2] run data modify entity @s Color set value 11b
tag @e[tag=this2] remove this2
scoreboard players reset #110-