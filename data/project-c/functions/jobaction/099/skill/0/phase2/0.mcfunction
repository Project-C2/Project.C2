
scoreboard players set @s counter 100

execute if entity @s[team=Red] as @e[team=!Red,distance=..5,limit=1,nbt={HurtTime:10s},tag=Battle] run tag @s add 099-W-P2-FNC
execute if entity @s[team=Blue] as @e[team=!Blue,distance=..5,limit=1,nbt={HurtTime:10s},tag=Battle] run tag @s add 099-W-P2-FNC

execute if entity @e[tag=099-W-P2-FNC,limit=1] as @e[tag=099-W-P2-FNC] at @s run tag @s add 099-W-P2-A-resistance


execute unless score @s counter_1 matches 1.. if entity @e[tag=099-W-P2-FNC,limit=1] as @e[tag=099-W-P2-FNC] run effect give @s resistance 1 1 true
execute unless score @s counter_1 matches 1.. if entity @e[tag=099-W-P2-FNC,limit=1] as @e[tag=099-W-P2-FNC] run effect give @s instant_damage 1 0 true

execute if score @s counter_1 matches 1.. if entity @e[tag=099-W-P2-FNC,limit=1] as @e[tag=099-W-P2-FNC] run effect give @s resistance 1 2 true
execute if score @s counter_1 matches 1.. if entity @e[tag=099-W-P2-FNC,limit=1] as @e[tag=099-W-P2-FNC] run effect give @s instant_damage 1 1 true


execute if entity @e[tag=099-W-P2-FNC,limit=1] as @e[tag=099-W-P2-FNC] at @s run particle soul_fire_flame ~ ~1 ~ 0 0 0 0.2 20 force @a
execute if score @s counter_1 matches 1.. if entity @e[tag=099-W-P2-FNC,limit=1] as @e[tag=099-W-P2-FNC] at @s run particle flame ~ ~1 ~ 0 0 0 0.2 10 force @a
execute if entity @e[tag=099-W-P2-FNC,limit=1] as @e[tag=099-W-P2-FNC] run tag @s remove 099-W-P2-FNC

function project-c:jobaction/099/replaceitem/0-1

playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1 1.8
