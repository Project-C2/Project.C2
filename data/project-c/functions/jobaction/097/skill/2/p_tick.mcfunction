tag @s add user
execute as @e[tag=097_2arrow] if score @s playerNumber = @a[tag=user,limit=1] playerNumber run tag @s add 097flying
tag @s remove user

execute unless entity @e[tag=097flying,limit=1] run scoreboard players set @s CT2 1100
execute unless entity @e[tag=097flying,limit=1] run replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 5
execute unless entity @e[tag=097flying,limit=1] run tag @s remove SkillReady2
execute unless entity @e[tag=097flying,limit=1] run scoreboard players set @s usedSkill 2
execute unless entity @e[tag=097flying,limit=1] run scoreboard players reset @s counter_2

execute if entity @e[tag=097flying,limit=1] unless score @s subcounter matches 30.. run scoreboard players add @s subcounter 1
execute if entity @e[tag=097flying,limit=1] if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"La Troisième flèche","color":"#55aadd","bold":true,"italic":true}'}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/097/skill/2/1
tag @e[tag=097flying] remove 097flying
