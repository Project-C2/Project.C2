tag @s remove skillStage1
tag @s add skillStage2

scoreboard players reset @s counter

data merge block 59 5 -122 {auto:1b}

kill @e[tag=15-1-particle,sort=nearest,limit=1]