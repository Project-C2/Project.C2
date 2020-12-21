scoreboard players add @s counter 1

execute if entity @s[scores={counter=1..}] run teleport @s ^ ^ ^2.5 ~ ~

execute if entity @s[scores={counter=11..},tag=068-fovoslineRed] run summon armor_stand ~ ~4 ~ {Invisible:1,Motion:[0.0d,-1.0d,0.0d],Tags:["fovosline","fovoslineRed"]}

execute if entity @s[scores={counter=11..},tag=068-fovoslineBlue] run summon armor_stand ~ ~4 ~ {Invisible:1,Motion:[0.0d,-1.0d,0.0d],Tags:["fovosline","fovoslineBlue"]}

execute if entity @s[scores={counter=11..}] run data merge block -35 8 31 {auto:1b}

kill @s[scores={counter=71..}]