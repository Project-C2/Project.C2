scoreboard players set @s counter_4 40
clear @s minecraft:soul_torch{097weapon:1b}
function project-c:jobaction/097/replaceitem/0

execute anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^ {Tags:["097this","097razer"],Duration:40}
execute anchored eyes run tp @e[tag=097this] ^ ^ ^ ~ ~
scoreboard players set @e[tag=097this] counter_3 40
scoreboard players set @e[tag=097this] counter_5 24
scoreboard players operation @e[tag=097this] playerNumber = @s playerNumber
execute if entity @s[team=Red] run tag @e[tag=097this,limit=1] add 097razer_Red
execute if entity @s[team=Blue] run tag @e[tag=097this,limit=1] add 097razer_Blue
data modify entity @e[tag=097this,limit=1] Owner set from entity @s UUID
tag @e[tag=097this] remove 097this



data merge block 57 2 91 {auto:1b}