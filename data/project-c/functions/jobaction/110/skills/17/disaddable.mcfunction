scoreboard players operation #110- playerNumber = @s playerNumber
execute as @a[tag=110denkou_addable] if score @s playerNumber = #110- playerNumber run tag @s add user
execute if entity @a[tag=user,limit=1] if score @s counter_5 matches 100.. run scoreboard players operation @a[tag=user] CT1 = @s counter_5
execute if entity @a[tag=user,limit=1] if score @s counter_5 matches 100.. run tag @a[tag=user] remove SkillReady1
execute if entity @a[tag=user,limit=1] if score @s counter_5 matches 100.. as @a[tag=user] run clear @s #project-c:neac/all{110skillSlot:1b}
execute if entity @a[tag=user,limit=1] if score @s counter_6 matches 100.. run scoreboard players operation @a[tag=user] CT2 = @s counter_6
execute if entity @a[tag=user,limit=1] if score @s counter_6 matches 100.. run tag @a[tag=user] remove SkillReady2
execute if entity @a[tag=user,limit=1] if score @s counter_6 matches 100.. as @a[tag=user] run clear @s #project-c:neac/all{110skillSlot:2b}
execute if entity @a[tag=user,limit=1] if score @s counter_7 matches 100.. run scoreboard players operation @a[tag=user] CT3 = @s counter_7
execute if entity @a[tag=user,limit=1] if score @s counter_7 matches 100.. run tag @a[tag=user] remove SkillReady3
execute if entity @a[tag=user,limit=1] if score @s counter_7 matches 100.. as @a[tag=user] run clear @s #project-c:neac/all{110skillSlot:3b}
tag @a[tag=user] remove 110denkou_addable
tag @a[tag=user] remove user
scoreboard players reset #110-
