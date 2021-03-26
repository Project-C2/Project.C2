loot replace entity @s container.2 loot project-c:neac/129/2-1
scoreboard players operation #129- playerNumber = @s playerNumber
particle minecraft:block stone ~ ~ ~ 0.8 0.8 0.8 1 50 force @a
playsound minecraft:block.stone.place master @a ~ ~ ~ 1 2

#2つ目設置時の処理(ほぼないけどバグで起きた時のために一応)
execute as @e[tag=129-totem] if score @s playerNumber = #129- playerNumber run scoreboard players add #129- subcounter 1
execute if score #129- subcounter matches 1.. as @e[tag=129-totemA] if score @s playerNumber = #129- playerNumber run kill @s

#アイテムデータに記述してる効果時間を取得
loot replace block 0 0 0 container.0 loot project-c:neac/129/2
execute store result score #129- counter run data get block 0 0 0 Items[{Slot:0b}].tag.e-time
scoreboard players operation #129- counter *= #20 counter

#summon minecraft:shulker ~ ~ ~ {Color:0b,Silent:1b,NoAI:1b,Tags:["this2","129-totem","Battle"],Health:6f,Attributes:[{Name:"generic.max_health",Base:6d},{Name:"generic.armor",Base:20d},{Name:"generic.armor_toughness",Base:20d}],ActiveEffects:[{Id:13b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["129-totemA","129-totem","this2-"],Passengers:[{id:"minecraft:villager",Tags:["129-totemA","129-totemV","this2","this2-","Battle"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Silent:1b,NoAI:1b,VillagerData:{profession:"minecraft:none"}}]}
scoreboard players operation @e[tag=this2-] playerNumber = @s playerNumber
execute if entity @s[team=Red] run team join RedDummy @e[tag=this2]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=this2]
scoreboard players operation @e[tag=this2] teamNumber = @s teamNumber
scoreboard players operation @e[tag=this2-] counter = #129- counter

execute as @e[tag=this2-] run function project-c:jobaction/129/skill/2/totem/number-set
tag @e[tag=this2] remove this2
tag @e[tag=this2-] remove this2-

data merge block -86 61 -11 {auto:1b}

scoreboard players reset #129-