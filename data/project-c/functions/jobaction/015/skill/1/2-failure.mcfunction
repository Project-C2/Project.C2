data merge entity @s {Invisible:1b,ArmorItems:[]}

tag @s remove skillStage2
tag @s add skillStage3
tag @s add failure

scoreboard players reset @s counter
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 2

data merge block 59 8 -122 {auto:1b}