#スキル7

execute if score @s counter_3 matches 7 run tag @s add skill1_use
execute if score @s counter_4 matches 7 run tag @s add skill2_use
execute if score @s counter_5 matches 7 run tag @s add skill3_use
#===================================================================


scoreboard players set #106_CT counter 140





playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0.5
particle minecraft:block iron_block ~ ~1 ~ 1.1 0.5 1.1 0 50 force




execute if entity @s[team=Red] as @a[tag=Battle,team=Red,distance=..4] run tag @s add guard_fort_target
execute if entity @s[team=Blue] as @a[tag=Battle,team=Blue,distance=..4] run tag @s add guard_fort_target




execute store result score #106_playerCount counter if entity @a[tag=guard_fort_target]
execute unless score #106_playerCount counter matches 1.. run scoreboard players set #106_playerCount counter 1
execute if entity @s[tag=skill1_use] run scoreboard players operation #106_CT counter *= #106_playerCount counter
execute if entity @s[tag=skill2_use] run scoreboard players operation #106_CT counter *= #106_playerCount counter
execute if entity @s[tag=skill3_use] run scoreboard players operation #106_CT counter *= #106_playerCount counter

execute if score #106_playerCount counter matches 1 as @a[tag=guard_fort_target] run effect give @s resistance 7 0
execute if score #106_playerCount counter matches 2 as @a[tag=guard_fort_target] run effect give @s resistance 7 1
execute if score #106_playerCount counter matches 3 as @a[tag=guard_fort_target] run effect give @s resistance 7 2
execute if score #106_playerCount counter matches 4.. as @a[tag=guard_fort_target] run effect give @s resistance 7 3

execute if entity @p[tag=guard_fort_target] as @a[tag=guard_fort_target] run tag @s remove guard_fort_target


scoreboard players reset #106_playerCount

function project-c:jobaction/106/items/skill/bulk

