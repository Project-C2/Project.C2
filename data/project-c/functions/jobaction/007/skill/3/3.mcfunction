execute if entity @s[tag=Charge0] run summon minecraft:lightning_bolt ~ ~ ~
kill @s[tag=Charge0]

tag @s add ThunderElementStandB
tag @s remove ThunderElementStand

execute unless entity @e[tag=ThunderElement] run data merge block -33 2 -122 {auto:0b}

data merge block -33 5 -122 {auto:1b}