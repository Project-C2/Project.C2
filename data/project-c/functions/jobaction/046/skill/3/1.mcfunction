scoreboard players remove @s counter_1 1
execute if entity @s[scores={counter_1=1}] run playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 2 1
execute if entity @s[scores={counter_1=1}] run particle note ~ ~0.5 ~ 4 0 4 5 100 force
execute if entity @s[scores={counter_1=1},team=Red] run tag @a[distance=..16,team=Blue,tag=Battle] add 046-RaHit
execute if entity @s[scores={counter_1=1},team=Blue] run tag @a[distance=..16,team=Red,tag=Battle] add 046-RaHit
execute as @e[tag=046-RaHit] at @s as @e[tag=046-Ra] if score @s counter_1 = @e[limit=1,sort=nearest,tag=046-RaHit] playerNumber run teleport @s ~ ~ ~

execute if entity @s[scores={counter_1=1},team=Red] at @a[distance=..16,team=Blue,tag=Battle] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["046-Ra","046-RaSummoned"]}
execute if entity @s[scores={counter_1=1},team=Blue] at @a[distance=..16,team=Red,tag=Battle] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["046-Ra","046-RaSummoned"]}
execute as @e[tag=046-RaSummoned] if entity @s[tag=046-RaSummoned] at @s at @e[limit=1,sort=nearest] run scoreboard players operation @s counter_1 = @e[limit=1,sort=nearest] playerNumber
execute if entity @s[scores={counter_1=1}] run scoreboard players operation @e[tag=046-RaSummoned] counter_2 = @s playerNumber
execute if entity @s[scores={counter_1=1}] as @e[tag=046-Ra] if score @s counter_2 = @a[limit=1,sort=nearest] playerNumber run scoreboard players add @s counter 1
execute if entity @s[scores={counter_1=1}] as @e[tag=046-Ra,scores={counter=2}] at @s at @a[tag=046-RaHit,limit=1,sort=nearest] if score @s counter_1 = @e[limit=1,sort=nearest] playerNumber run effect give @e[limit=1,sort=nearest] minecraft:glowing 5 0
execute if entity @s[scores={counter_1=1}] as @e[tag=046-Ra,scores={counter=2}] at @s at @a[tag=046-RaHit,sort=nearest,limit=1] if score @s counter_1 = @e[limit=1,sort=nearest] playerNumber run effect give @e[limit=1,sort=nearest] minecraft:weakness 5 6
execute if entity @s[scores={counter_1=1}] as @e[tag=046-Ra,scores={counter=2}] at @s at @a[tag=046-RaHit,sort=nearest,limit=1] if score @s counter_1 = @e[limit=1,sort=nearest] playerNumber run effect give @e[limit=1,sort=nearest] minecraft:instant_damage 1 0
execute if entity @s[scores={counter_1=1}] run tag @e[tag=046-RaHit] remove 046-RaHit
scoreboard players set @e[tag=046-RaSummoned] counter_3 100
tag @e[tag=046-RaSummoned] remove 046-RaSummoned
kill @e[tag=046-Ra,scores={counter=2..}]
data merge block -69 2 -18 {auto:1b}