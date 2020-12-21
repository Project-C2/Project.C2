summon minecraft:area_effect_cloud ^-4.0 ^ ^ {Tags:["this"],Duration:1}
loot spawn 0 0 0 loot project-c:wnkm/rand.-180_179
execute store result score @e[tag=this,limit=1] subcounter run data get entity @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand"}].Amount 1403569
kill @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}}]
execute as @e[tag=this] if score @s subcounter matches ..-1 run scoreboard players add @s subcounter 252642561
execute as @e[tag=this] store result entity @s Duration int 1 run scoreboard players get @s subcounter
execute as @e[tag=this] store result score @s counter_1 run data get entity @s Pos[1] 10
scoreboard players set @e[tag=this] counter_2 9357127
#scoreboard players set @e[tag=this] counter_2 6238084
execute as @e[tag=this] run scoreboard players operation @s subcounter /= @s counter_2
execute as @e[tag=this] store result entity @s Pos[1] double 0.1 run scoreboard players operation @s counter_1 += @s subcounter
execute as @e[tag=this] store result score @s counter_3 run data get entity @s UUID[1] 1
execute as @e[tag=this] run scoreboard players operation @s counter_3 %= #20 counter
execute as @e[tag=this] if score @s counter_3 matches 12.. positioned as @s run tp @s ^4.8 ^ ^
execute as @e[tag=this] if score @s counter_3 matches 12.. run scoreboard players remove @s counter_3 16
execute as @e[tag=this] if score @s counter_3 matches 8.. positioned as @s run tp @s ^3.2 ^ ^
execute as @e[tag=this] if score @s counter_3 matches 8.. run scoreboard players remove @s counter_3 8
execute as @e[tag=this] if score @s counter_3 matches 4.. positioned as @s run tp @s ^1.6 ^ ^
execute as @e[tag=this] if score @s counter_3 matches 4.. run scoreboard players remove @s counter_3 4
execute as @e[tag=this] if score @s counter_3 matches 2.. positioned as @s run tp @s ^0.8 ^ ^
execute as @e[tag=this] if score @s counter_3 matches 2.. run scoreboard players remove @s counter_3 2
execute as @e[tag=this] if score @s counter_3 matches 1.. positioned as @s run tp @s ^0.4 ^ ^
execute as @e[tag=this] if score @s counter_3 matches 1.. run scoreboard players remove @s counter_3 1

execute at @e[tag=this] run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force @a
execute at @e[tag=this] run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 normal @a
execute at @e[tag=this] run summon minecraft:tropical_fish ~ ~ ~ {Tags:["this2","Battle","093fish_ready"],NoAI:1b,Air:-20s,Health:0.1f,DeathTime:2s}
data modify entity @e[tag=this2,limit=1] Variant set from entity @e[tag=this,limit=1] Duration
scoreboard players operation @e[tag=this2,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this2,limit=1] counter = @s counter
execute if entity @s[tag=093Red] run team join Red @e[tag=this2]
execute if entity @s[tag=093Blue] run team join Blue @e[tag=this2]
kill @e[tag=this]
tag @e[tag=this2] remove this2

playsound minecraft:entity.tropical_fish.flop master @a ~ ~ ~ 1 0.5
tp @s ^ ^ ^0.5
scoreboard players remove @s counter 1
execute if score @s counter matches ..-27 run kill @s
