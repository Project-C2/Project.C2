#実行者     -> jobNumber = 109
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> バトルヒーリングに使用
#counter_2    -> ヴォーパルストライクに使用
#counter_3    -> 
#counter_4    -> 
#counter_5    -> 
#subcounter   -> 


scoreboard players reset @s usedSkill
execute if entity @s[scores={OutCombat=241}] run effect clear @s regeneration
execute if entity @s[scores={OutCombat=241}] run effect give @s regeneration 1000000 0 true
execute if entity @s[scores={CT2=1200..,OutCombat=..240},tag=SkillReady2,gamemode=!spectator] run scoreboard players add @s counter_1 1
execute if entity @s[scores={counter_1=50..}] run function project-c:jobaction/109/skill/2/0
execute if entity @s[scores={counter_2=1..}] run function project-c:jobaction/109/skill/1/1

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/109/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/109/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/109/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{109weapon:1b}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/109/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"スターバーストストリーム","color":"aqua","bold":true,"underlined":true,"italic":false}'}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/109/skill/3/0

execute if entity @s[nbt={SelectedItem:{tag:{105starburst_stream:1b}}},scores={drop=1..},gamemode=!spectator,tag=SkillReady3] run function project-c:jobaction/105/skill/3/-

scoreboard players reset @s[scores={sneak=1..}] sneak
