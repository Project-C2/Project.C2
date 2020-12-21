#実行者     -> jobNumber = 103
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> ノックバック2の付与用
#counter_2    -> 
#counter_3    -> 
#counter_4    -> 
#counter_5    -> 
#subcounter   -> 


scoreboard players reset @s usedSkill
scoreboard players add @s[gamemode=!spectator] counter_1 1
execute if score @s counter_1 matches 20 run title @s actionbar {"text":"|| ■□□□ ||","color":"#c00000"}
execute if score @s counter_1 matches 40 run title @s actionbar {"text":"|| ■■□□ ||","color":"#c00000"}
execute if score @s counter_1 matches 60 run title @s actionbar {"text":"|| ■■■□ ||","color":"#c00000"}
execute if score @s counter_1 matches 80 run title @s actionbar {"text":"|| ■■■■ ||","color":"#f40000"}
execute if score @s counter_1 matches 80 run function project-c:jobaction/103/skill/0/0
execute if score @s counter_1 matches 100 run title @s actionbar {"text":"|| □□□□ ||","color":"#c00000"}
execute if score @s counter_1 matches 100 run function project-c:jobaction/103/replaceitem/0
execute if score @s counter_1 matches 100.. run scoreboard players set @s counter_1 0

execute if score @s counter_2 matches 1.. run function project-c:jobaction/103/skill/2/1

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/103/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/103/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/103/replaceitem/3

execute if entity @s[scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/103/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"メテオキャスト","color":"red","bold":true,"italic":false}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/103/skill/2/0
execute if entity @s[scores={CT3=1200..},tag=SkillReady3,gamemode=!spectator] if entity @e[distance=..8,type=fireball,tag=!103enchanted,limit=1] run function project-c:jobaction/103/skill/3/0


scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
