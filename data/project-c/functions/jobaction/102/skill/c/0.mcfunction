execute unless score @s counter_1 matches 1 run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 0.5 2

execute if score @s counter_1 matches 1 run tag @s add user
execute if score @s counter_1 matches 1 as @e[tag=102chest] if score @s playerNumber = @a[tag=user,limit=1,sort=nearest] playerNumber at @s positioned ~ ~1.4 ~ run function project-c:jobaction/102/skill/1/2
execute if entity @s[tag=user] run tag @s remove user



scoreboard players reset @s useCarrotStick