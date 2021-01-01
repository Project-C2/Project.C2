#実行者     -> jobNumber = 113
#実行地点   -> 実行者
#counter -> ラーメン移動方向切り替えのCT


scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/113/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/113/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/113/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{Ramen:1b}}},scores={useCarrotStick=1..,counter=..0}] run function project-c:jobaction/113/skill/0/summon_noodle
execute if entity @s[nbt={SelectedItem:{tag:{Ramen:0b}}},scores={useCarrotStick=1..,counter=..0}] unless score @s sneak matches 1.. run function project-c:jobaction/113/skill/0/reverse_noodle_motion
execute if entity @s[nbt={SelectedItem:{tag:{Ramen:0b}}},scores={useCarrotStick=1..,sneak=1..,counter=..0}] run function project-c:jobaction/113/skill/0/kill_noodle
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ダークハンバーグ展開","italic":false}'}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/001/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ステータスの握り","italic":false}'}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/001/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"レールガン","italic":false}'}}}},scores={CT3=1200..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] unless score @s sneak matches 1.. run function project-c:jobaction/001/skill/3/0

execute unless score @s counter matches ..0 run scoreboard players remove @s counter 1
scoreboard players reset @s useCarrotStick
scoreboard players reset @s sneak
scoreboard players reset @s damageDealt