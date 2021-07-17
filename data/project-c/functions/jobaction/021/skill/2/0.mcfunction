scoreboard players set @s CT2 600
item replace entity @s hotbar.2 with minecraft:compass{display:{Name:'"CoolTime"'}} 30
execute if entity @s[scores={stockcounter=1..}] run scoreboard players set @s CT2 1180
scoreboard players remove @s[scores={stockcounter=1..}] stockcounter 1

kill @e[type=snowball,limit=1]

execute anchored eyes run summon minecraft:marker ^ ^ ^ {Tags:["021dummy","021grenade","021grenadeSummon"]}
execute anchored eyes run tp @e[tag=021dummy] ^ ^ ^ ~ ~
scoreboard players operation @e[tag=021dummy] playerNumber = @s playerNumber
scoreboard players operation #skillCheck teamNumber = @s teamNumber
scoreboard players operation @e[tag=021grenadeSummon] teamNumber = #skillCheck teamNumber
scoreboard players reset #skillCheck teamNumber

scoreboard players set @e[tag=021grenadeSummon] counter_3 0
scoreboard players set @e[tag=021grenadeSummon] counter_5 1

tag @e[tag=021dummy] remove 021dummy
tag @e[tag=021grenadeSummon] remove 021grenadeSummon

data merge block 133 2 -122 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2