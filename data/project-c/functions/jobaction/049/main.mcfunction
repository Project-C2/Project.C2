#実行者     -> jobNumber = 049
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> 
#counter_2    -> 
#counter_3    -> 
#counter_4    -> 
#counter_5    -> 
#subcounter   -> 


scoreboard players reset @s usedSkill

execute if entity @s[scores={relic=2}] if entity @s[scores={CT1=1201..1280}] run scoreboard players add @s CT1 1
execute if entity @s[scores={CT1=1280..}] unless score @s stockcounter matches 4.. run function project-c:jobaction/049/charge
execute unless score @s stockcounter matches 1.. if entity @s[scores={CT1=1200..}] run function project-c:jobaction/049/charge

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/049/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/049/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/049/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ボルトアンカー"}'}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/049/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"シグマスフィア"}'}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/049/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"浄滅の雷鼓"}'}}}},scores={CT3=1200..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/049/skill/3/0

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
