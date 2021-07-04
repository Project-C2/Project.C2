scoreboard players set @s CT2 400
item replace entity @s hotbar.2 with minecraft:compass{display:{Name:'"CoolTime"'}} 40

scoreboard players operation #099_pn_checker counter = @s playerNumber
execute if entity @e[tag=099-S2-area-ed,limit=1] as @e[tag=099-S2-area-ed] if score @s 099-S2-APN = #099_pn_checker counter run function project-c:jobaction/099/skill/2/end-0
execute if entity @e[type=area_effect_cloud,tag=099-S2-AEC,limit=1] as @e[type=area_effect_cloud,tag=099-S2-AEC] if score @s playerNumber = #099_pn_checker counter run function project-c:jobaction/099/skill/2/end
scoreboard players reset #099_pn_checker

summon area_effect_cloud ~ ~0.5 ~ {Tags:["099-S2-AEC","this"],Duration:700,Radius:0.0f,CustomName:'{"text":"ERIA"}'}
execute if entity @s[team=Red] run tag @e[tag=this,limit=1] add 099-Red
execute if entity @s[team=Blue] run tag @e[tag=this,limit=1] add 099-Blue
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
execute at @e[tag=this] run particle explosion ~ ~ ~ 0.4 0.4 0.4 1 5 force @a
execute at @e[tag=this] run particle cloud ~ ~ ~ 0.4 0.4 0.4 1 500 normal @a
tag @e[tag=this] remove this
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1.24
playsound minecraft:entity.generic.explode master @a ^ ^ ^2.5 1.5 1.2
playsound minecraft:entity.generic.explode master @a ^ ^ ^2.5 1 1.2


data merge block 85 2 89 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2