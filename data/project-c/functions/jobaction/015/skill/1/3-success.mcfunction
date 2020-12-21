scoreboard players add @e[tag=15-1-Stand,tag=skillStage3,tag=success,sort=nearest,limit=1] counter 1

effect give @s minecraft:blindness 3 0 true
effect give @s minecraft:slow_falling 1 0 true
teleport @s @e[tag=15-1-stanAEC,sort=nearest,limit=1]

execute rotated as @s run teleport @e[tag=15-1-Stand,tag=skillStage3,tag=success,sort=nearest,limit=1] ^ ^ ^1 facing entity @s
execute as @e[tag=15-1-Stand,tag=skillStage3,tag=success,sort=nearest,limit=1] at @s run teleport @s ~ ~0.6 ~ ~ ~

playsound minecraft:block.anvil.hit master @s ~ ~ ~ 1 1

execute if entity @s[scores={useSnowBall=1..}] run kill @e[type=minecraft:snowball,limit=1,sort=nearest]
execute if entity @s[scores={useLinger=1..}] run kill @e[type=potion,limit=1,sort=nearest]
execute if entity @s[scores={useEnderPearl=1..}] run kill @e[type=minecraft:ender_pearl,limit=1,sort=nearest]
execute if entity @s[scores={bow=1..}] run kill @e[type=arrow,limit=1,sort=nearest]

execute if entity @e[tag=15-1-Stand,tag=skillStage3,tag=success,sort=nearest,limit=1,scores={counter=100..}] run function project-c:jobaction/015/skill/1/4-success

execute if entity @s[scores={deathCount=1..}] run tag @s remove 15-1-Target