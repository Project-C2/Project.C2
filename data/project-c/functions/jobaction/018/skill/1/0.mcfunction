scoreboard players set @s CT1 1040
scoreboard players remove @s Mana 50

execute anchored eyes run summon chicken ^ ^ ^1 {Tags:["018-chicken","018-hassummoned"]}
execute if entity @s[team=Red] run team join Red @e[tag=018-hassummoned]
execute if entity @s[team=Blue] run team join Blue @e[tag=018-hassummoned]


tag @s add 018-1
execute as @e[tag=018-hassummoned] run function project-c:jobaction/018/skill/1/0-
tag @s remove 018-1
execute as @s at @s anchored eyes run tp @e[tag=018-hassummoned,limit=1,sort=nearest,distance=..3] ^ ^ ^ ~ ~
execute as @e[tag=018-hassummoned] store result entity @s Motion[0] double 0.02 run scoreboard players get @s counter_1
execute as @e[tag=018-hassummoned] store result entity @s Motion[1] double 0.02 run scoreboard players remove @s counter_2 160
execute as @e[tag=018-hassummoned] store result entity @s Motion[2] double 0.02 run scoreboard players get @s counter_3
tag @e[tag=018-hassummoned] remove 018-hassummoned

data merge block 95 2 -122 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1