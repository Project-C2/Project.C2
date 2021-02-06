execute if entity @s[advancements={project-c:hiddenjob/078=true}] run scoreboard players set @s jobNumber -78
execute if entity @s[advancements={project-c:hiddenjob/078=true}] run tag @s add JobChanged
execute if entity @s[advancements={project-c:hiddenjob/078=true}] run tellraw @s ["",{"text":"[システム]","color":"yellow"},{"text":"NINJA","color":"yellow","bold":true,"underlined":true},{"text":" に転職しました。","color":"yellow","bold":false,"underlined":false}]
execute if entity @s[advancements={project-c:hiddenjob/078=true}] run data merge block -75 49 -123 {auto:1b}

execute unless entity @s[advancements={project-c:hiddenjob/078=true}] run function project-c:hiddenjob/jobchangefailed