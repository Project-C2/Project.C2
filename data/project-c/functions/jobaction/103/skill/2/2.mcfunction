summon area_effect_cloud ~ ~ ~ {Tags:["103enchanted","103fireball2","this"],Duration:100}
tp @e[tag=this,limit=1,sort=nearest] ~ ~ ~ ~60 0
data modify entity @e[tag=this,limit=1,sort=nearest] Owner set from entity @s UUID
scoreboard players operation @e[tag=this,limit=1,sort=nearest] playerNumber = @s playerNumber
tag @s add 103fireball2_p
tag @e[tag=this] remove this
effect clear @s levitation
effect give @s minecraft:levitation 2 255 true
tp @s @s
data merge block 133 2 89 {auto:1b}
scoreboard players reset @s counter_2
