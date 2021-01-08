#実行者     -> jobNumber = 113
#実行地点   -> 実行者
#counter -> ラーメン移動方向切り替えのCT
#counter_1 -> 第二スキルの持続時間 
#counter_2 -> 第二スキルの攻撃力上昇量
#counter_3 -> 第一スキルの持続時間
#counter_4 -> 第一スキルの追加入力でのCT増加量
#counter_5 -> レールガンを設置できるかどうか
#counter_6 -> ラーメンの発射時の演出
#counter_7 -> 制空権の握り発動中かどうか

# Author: bamboon
# Title: SCP-1134-JP - 爆転ニギリ スシブレード
# Source: http://scp-jp.wikidot.com/scp-1134-jp
# CC-BY-SA 3.0

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/114/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/114/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/114/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{Ramen:1b}}},scores={useCarrotStick=1..,counter=..0}] run function project-c:jobaction/114/skill/0/0
execute if entity @s[nbt={SelectedItem:{tag:{Ramen:0b}}},scores={useCarrotStick=1..,counter=..0}] unless score @s sneak matches 1.. run function project-c:jobaction/114/skill/0/reverse_noodle_motion
execute if entity @s[nbt={SelectedItem:{tag:{Ramen:0b}}},scores={useCarrotStick=1..,sneak=1..,counter=..0}] run function project-c:jobaction/114/skill/0/kill_noodle

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"ダークハンバーグ","italic":false,"color":"dark_purple"},{"text":"展開","italic":false,"color":"white"}]'}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/114/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"ダークハンバーグ","italic":false,"color":"dark_purple"},{"text":"発射","italic":false,"color":"white"}]'}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/114/skill/1/1

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"ステータス","italic":false,"bold":true,"color":"dark_red"},{"text":"の握り","italic":false,"bold":false,"color":"white"}]'}}}},scores={CT2=1200..,damageDealt=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/114/skill/2/0

execute if entity @s[nbt={OnGround:1b,SelectedItem:{tag:{display:{Name:'{"text":"レールガン","italic":false,"color":"aqua"}'}}}},scores={CT3=1200..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/114/skill/3/0

execute unless score @s counter matches ..0 run scoreboard players remove @s counter 1
execute unless score @s counter_1 matches ..0 run scoreboard players remove @s counter_1 1
execute unless score @s counter_3 matches ..0 run scoreboard players remove @s counter_3 1
execute if score @s counter_1 matches 0 run function project-c:jobaction/114/skill/2/2
execute if score @s counter_3 matches 1 run function project-c:jobaction/114/skill/1/2
execute if score @s deathCountExt matches 1.. run function project-c:jobaction/114/skill/0/kill_noodle
scoreboard players reset @s useCarrotStick
scoreboard players reset @s sneak
scoreboard players reset @s damageDealt