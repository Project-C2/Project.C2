tag @s add FECharge2StandB
tag @s remove FECharge2Stand
scoreboard players set @s counter 0

execute unless entity @e[tag=FECharge2] run data merge block -37 2 -122 {auto:0b}

data merge block -37 5 -122 {auto:1b}