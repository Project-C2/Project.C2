#実行者     -> jobNumber = 074
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> 
#counter_2    -> 
#counter_3    -> 
#subcounter   -> 
#stockcounter -> 

scoreboard players reset @s usedSkill
effect give @s minecraft:fire_resistance 11 0
execute if score @s counter_3 matches 0 run effect give @s minecraft:haste 11 0
execute if score @s counter_3 matches 1 run effect give @s minecraft:jump_boost 11 1

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/074/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/074/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/074/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"サークルファイア","color":"red","italic":false}'}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/074/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ラヴァジャヴェリン","color":"red","italic":false}'}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/074/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"火炎精霊-Salamander","color":"red","underlined":true,"italic":false}'}}}},scores={CT3=1200..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/074/skill/3/0
execute if entity @s[tag=074summoningblade] run function project-c:jobaction/074/skill/2/1
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick