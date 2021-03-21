#実行者     -> jobNumber = 126
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/126/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/126/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/126/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ウィンドエッジ","color":"white","italic":false}'}}}},scores={useCarrotStick=1..,CT1=1200..},gamemode=!spectator,tag=SkillReady1] run function project-c:jobaction/126/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"グライフゾイフツァー","color":"white","italic":false}'}}}},scores={CT2=1200..,sneak=1..,Mana=0},gamemode=!spectator,tag=SkillReady2] run function project-c:jobaction/126/skill/2/0

execute if entity @s[scores={CT2=1200..,sneak=0,Mana=1},gamemode=!spectator,tag=SkillReady2] run function project-c:jobaction/126/skill/2/2

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ヴィルヴェルヴィント","color":"green","italic":false}'}}}},scores={CT3=1200..,useCarrotStick=1..,Mana=0,counter_3=0},gamemode=!spectator,tag=SkillReady3,tag=Battle] run function project-c:jobaction/126/skill/3/0

scoreboard players remove @s[scores={counter_3=1..}] counter_3 1


scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players set @s[scores={sneak=1..}] sneak 0
scoreboard players reset @s[scores={adDealt=1..}] adDealt