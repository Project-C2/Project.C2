#スキル4補助
scoreboard players set #106_slot_pos counter -1000
execute if score @s counter_3 matches 4 run scoreboard players set #106_slot_pos counter 1
execute if score @s counter_4 matches 4 run scoreboard players set #106_slot_pos counter 2
execute if score @s counter_5 matches 4 run scoreboard players set #106_slot_pos counter 3
execute unless score #106_slot_pos counter matches -1000 run tag @s add using


scoreboard players operation #106_playerNumber counter = @s playerNumber
execute if entity @e[type=minecraft:armor_stand,tag=106_sprink_arrow,limit=1] as @e[type=minecraft:armor_stand,tag=106_sprink_arrow] if score @s playerNumber = #106_playerNumber counter run tag @s add 106_auxiliary_check

execute if entity @s[tag=using] if entity @e[tag=106_auxiliary_check,limit=1] run tag @s add 106_auxiliary_replace


execute if entity @s[scores={counter_3=4},tag=!SkillDelay1,tag=106_auxiliary_replace] run tag @s add 106_auxiliary_replace-0
execute if entity @s[scores={counter_4=4},tag=!SkillDelay2,tag=106_auxiliary_replace] run tag @s add 106_auxiliary_replace-0
execute if entity @s[scores={counter_5=4},tag=!SkillDelay3,tag=106_auxiliary_replace] run tag @s add 106_auxiliary_replace-0

execute if entity @s[scores={counter_3=4},tag=SkillDelay1,tag=!106_auxiliary_replace] run tag @s add 106_auxiliary_replace-1
execute if entity @s[scores={counter_3=4},tag=SkillDelay1,tag=!106_auxiliary_replace] run tag @s remove SkillDelay1

execute if entity @s[scores={counter_4=4},tag=SkillDelay2,tag=!106_auxiliary_replace] run tag @s add 106_auxiliary_replace-1
execute if entity @s[scores={counter_4=4},tag=SkillDelay2,tag=!106_auxiliary_replace] run tag @s remove SkillDelay2

execute if entity @s[scores={counter_5=4},tag=SkillDelay3,tag=!106_auxiliary_replace] run tag @s add 106_auxiliary_replace-1
execute if entity @s[scores={counter_5=4},tag=SkillDelay3,tag=!106_auxiliary_replace] run tag @s remove SkillDelay3


execute if entity @s[tag=106_auxiliary_replace-0] run function project-c:jobaction/106/items/skill/04/auxiliary/set
execute if entity @s[tag=106_auxiliary_replace-1] run function project-c:jobaction/106/items/skill/04/set

#Tagの削除
execute if entity @e[type=minecraft:armor_stand,tag=106_sprink_arrow,tag=106_auxiliary_check,limit=1] as @e[type=minecraft:armor_stand,tag=106_sprink_arrow,tag=106_auxiliary_check] run tag @s remove 106_auxiliary_check
execute if entity @s[tag=using] run tag @s remove using
execute if entity @s[tag=106_auxiliary_replace-0] run tag @s remove 106_auxiliary_replace-0
execute if entity @s[tag=106_auxiliary_replace-1] run tag @s remove 106_auxiliary_replace-1
execute if entity @s[tag=106_auxiliary_replace] run tag @s remove 106_auxiliary_replace
scoreboard players reset #106_slot_pos
scoreboard players reset #106_playerNumber