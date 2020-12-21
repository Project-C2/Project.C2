#実行者     -> jobNumber = 097
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> スキル1の時間管理用
#counter_2    -> スキル2のタグ代替
#counter_3    -> スキル1の管理用
#counter_4    -> スキル0のCT管理用
#counter_5    -> スキル2の3番目の矢の猶予管理用
#subcounter   -> スキル2の矢の飛翔時間計算用


scoreboard players reset @s usedSkill
execute if entity @s[scores={relic=2}] if entity @s[scores={CT3=1201..1340}] run scoreboard players add @s CT3 1

execute if entity @s[scores={CT3=1340..}] unless score @s stockcounter matches 2.. run function project-c:jobaction/097/charge
execute unless score @s stockcounter matches 1.. if entity @s[scores={CT3=1200..}] run function project-c:jobaction/097/charge
execute if entity @s[scores={counter_1=1..}] run function project-c:jobaction/097/skill/1/1
execute if entity @s[scores={counter_4=1}] run function project-c:jobaction/097/skill/0/charge
execute if entity @s[scores={counter_4=1..}] run scoreboard players remove @s counter_4 1


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/097/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/097/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/097/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"La Troisième flèche","color":"gold","bold":true,"italic":true}'}}}},scores={useCarrotStick=1..},gamemode=!spectator] run function project-c:jobaction/097/skill/2/2
execute if entity @s[scores={counter_2=1}] run function project-c:jobaction/097/skill/2/p_tick
execute if entity @s[scores={counter_5=1..}] run function project-c:jobaction/097/skill/2/p_tick_3
execute if entity @s[nbt={SelectedItem:{tag:{097weapon:1b}}},scores={useCarrotStick=1..},gamemode=!spectator] run function project-c:jobaction/097/skill/0/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Sagittaire","color":"aqua","bold":true,"italic":true}'}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/097/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"La Troisième flèche","color":"#55aadd","bold":true,"italic":true}'}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/097/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Sarbacane","color":"dark_purple","bold":true,"italic":true}'}}}},scores={CT3=1200..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/097/skill/3/0


scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
