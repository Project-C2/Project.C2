#スキル2
execute if score @s counter_3 matches 2 run tag @s add skill1_use
execute if score @s counter_4 matches 2 run tag @s add skill2_use
execute if score @s counter_5 matches 2 run tag @s add skill3_use
#===================================================================


scoreboard players set #106_CT counter 200


function project-c:jobaction/106/items/skill/bulk




playsound minecraft:block.dispenser.fail master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 1.4
particle minecraft:witch ~ ~ ~ 1.8 1.8 1.8 0.1 40 force


execute if entity @s[team=Red] if entity @e[tag=Battle,team=!Red,distance=..4,limit=1] as @e[tag=Battle,team=!Red,distance=..4] unless data entity @s {NoAI:1b} run tag @s add trick
execute if entity @s[team=Blue] if entity @e[tag=Battle,team=!Blue,distance=..4,limit=1] as @e[tag=Battle,team=!Blue,distance=..4] unless data entity @s {NoAI:1b} run tag @s add trick
execute if entity @e[tag=Battle,tag=trick,limit=1] as @e[tag=Battle,tag=trick] at @s run tp @s ~ ~ ~ ~ -90


execute if entity @e[tag=Battle,tag=trick,limit=1] as @e[tag=Battle,tag=trick] run tag @s remove trick


