scoreboard players add @s counter 1

execute if entity @s[scores={counter=3..}] run summon arrow ~ ~ ~ {Motion:[0.0,-3.0,0.0],Color:-1,life:1200,Tags:["GrowArrow2"],Damage:3.5b,CustomName:"グローリーレイン"}


execute if entity @s[scores={counter=3..}] run summon arrow ~2 ~ ~ {Motion:[0.0,-3.0,0.0],Color:-1,life:1200,Tags:["GrowArrow2"],Damage:3.5b,CustomName:"グローリーレイン"}



execute if entity @s[scores={counter=3..}] run summon arrow ~-2 ~ ~ {Motion:[0.0,-3.0,0.0],Color:-1,life:1200,Tags:["GrowArrow2"],Damage:3.5b,CustomName:"グローリーレイン"}



execute if entity @s[scores={counter=3..}] run summon arrow ~ ~ ~2 {Motion:[0.0,-3.0,0.0],Color:-1,life:1200,Tags:["GrowArrow2"],Damage:3.5b,CustomName:"グローリーレイン"}



execute if entity @s[scores={counter=3..}] run summon arrow ~ ~ ~-2 {Motion:[0.0,-3.0,0.0],Color:-1,life:1200,Tags:["GrowArrow2"],Damage:3.5b,CustomName:"グローリーレイン"}


execute if entity @s[scores={counter=3..}] run scoreboard players set @s counter 0