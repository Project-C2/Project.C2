execute anchored eyes positioned ^ ^ ^ run tag @e[type=fishing_bobber,distance=..5,limit=1,sort=nearest] add 116first
execute unless entity @s[scores={CT3=1200..},tag=SkillReady3] run kill @e[tag=116first]
tag @e[tag=116first,limit=1] add 116grapple
scoreboard players operation @e[tag=116first,limit=1] playerNumber = @s playerNumber
tag @e[tag=116first] remove 116first

data merge block 24 61 -62 {auto:1b}
