#実行者     -> jobNumber = 020
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/020/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/020/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/020/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"スターロッド","color":"white","italic":"false","underlined":"false"}'}}}},scores={useCarrotStick=1..,CT1=1200..},gamemode=!spectator,tag=SkillReady1] run function project-c:jobaction/020/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"コック","color":"white","italic":"false","underlined":"false"}'}}}},scores={sneak=1..,CT2=1200..},gamemode=!spectator,tag=SkillReady2] run function project-c:jobaction/020/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ウェイクアップ","color":"white","italic":"false","underlined":"false"}'}}}},scores={useCarrotStick=1..,CT3=1200..},gamemode=!spectator,tag=SkillReady3] run function project-c:jobaction/020/skill/3/0

execute if entity @e[tag=020-spawner,limit=1] as @e[tag=020-spawner] at @s run function project-c:jobaction/020/skill/2/4

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={adDealt=1..}] adDealt