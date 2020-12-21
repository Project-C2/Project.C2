scoreboard players set @s CT3 1140

scoreboard players operation @s counter_3 = @s stockcounter
scoreboard players set @s stockcounter 0
function project-c:jobaction/051/replaceitem/4

scoreboard players set @s counter 0
execute anchored eyes positioned ^ ^ ^ anchored feet run function project-c:jobaction/051/skill/3/tp_target
execute unless entity @e[tag=hit,limit=1] run function project-c:jobaction/051/skill/3/fail
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/051/skill/3/hit


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3