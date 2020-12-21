#実行者     -> jobNumber = 096
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> 第二スキルのチャージ管理用
#counter_2    -> 
#counter_3    -> 
#counter_4    -> 
#counter_5    -> 
#subcounter   -> 

execute if entity @s[scores={counter_1=1..}] run function project-c:jobaction/096/skill/2/1
execute if entity @s[tag=096_jumped] if data entity @s {OnGround:1b} run tag @s remove 096_jumped

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/096/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/096/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/096/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"光輝裂玉","color":"yellow","underlined":true,"italic":false}'}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/096/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"逆風剣・黒月","color":"dark_purple","underlined":true,"italic":false}'}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/096/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"蛇腹剣","color":"#cccccc","bold":true,"underlined":true,"italic":false}'}}}},scores={CT3=1200..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/096/skill/3/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"蛇腹剣","color":"#cccccc","bold":true,"underlined":true,"italic":false}'}}}},scores={jump=1..},gamemode=!spectator] if entity @e[tag=096chained,limit=1] run function project-c:jobaction/096/skill/3/jump
execute if entity @s[tag=096chainjump_p,scores={sneak=1..}] run function project-c:jobaction/096/skill/3/cancel

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={jump=1..}] jump
