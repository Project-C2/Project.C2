particle minecraft:dust 0 1 1 1 ~ ~ ~ 0.5 0.5 0.5 0 1 force @a
scoreboard players add @s counter 1

execute if entity @s[tag=061-iceR3] run tag @e[team=Blue,distance=..1.2,tag=Battle] add 061iceHit
execute if entity @s[tag=061-iceB3] run tag @e[team=Red,distance=..1.2,tag=Battle] add 061iceHit

execute as @e[tag=061iceHit] at @s run particle minecraft:block ice ~ ~ ~ 0.5 0.5 0.5 0 50
execute as @e[tag=061iceHit] at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0
execute as @e[tag=061iceHit] at @s run effect give @s slowness 2 8
execute as @e[tag=061iceHit] at @s run effect give @s weakness 2 0
execute as @e[tag=061iceHit,scores={HP=..8}] at @s run effect give @s instant_damage 1 4
execute as @e[tag=061iceHit] at @s run kill @e[tag=061-icew,limit=3,sort=nearest]
execute as @e[tag=061iceHit] at @s run tag @s remove 061iceHit

execute if entity @s[scores={counter=101..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0
execute if entity @s[scores={counter=101..}] run particle minecraft:block ice ~ ~ ~ 0 0 0 10 50
kill @s[scores={counter=101..}]