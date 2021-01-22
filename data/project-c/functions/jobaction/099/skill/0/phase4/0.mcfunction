

summon area_effect_cloud ~ ~ ~ {Duration:10000,Tags:["099-W-P4-position","this","Fixed"]}
summon area_effect_cloud ~ ~ ~ {Duration:10000,Tags:["099-W-P4-position2","this2","Fixed"]}
tp @e[tag=this] @s
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber

function project-c:jobaction/099/skill/0/phase4/random

kill @e[tag=this2]

execute unless entity @s[tag=099-W-P4-ERROR] run scoreboard players set @s counter 500
execute unless entity @s[tag=099-W-P4-ERROR] run scoreboard players set @s counter_2 1
execute unless entity @s[tag=099-W-P4-ERROR] run function project-c:jobaction/099/skill/2/end-1
execute unless entity @s[tag=099-W-P4-ERROR] as @e[tag=this] run tag @s remove this
execute unless entity @s[tag=099-W-P4-ERROR] run gamemode spectator @s

execute if entity @s[tag=099-W-P4-ERROR] run tellraw @s ["",{"text":"発動に失敗した！","color":"#eeeeee","bold":true}]
execute if entity @s[tag=099-W-P4-ERROR] run kill @e[tag=this]
execute if entity @s[tag=099-W-P4-ERROR] run scoreboard players set @s counter 60
execute if entity @s[tag=099-W-P4-ERROR] run tag @s remove 099-W-P4-ERROR


function project-c:jobaction/099/replaceitem/0-1

function project-c:jobaction/099/skill/0/phase4/particle-playsound