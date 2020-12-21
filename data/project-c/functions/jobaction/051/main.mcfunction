#実行者     -> jobNumber = 051
#実行地点   -> 実行者
#counter      -> 第三スキル
#Mana         -> 
#counter_1    -> 近接攻撃トークンの制限時間管理用
#counter_2    -> 第二のチャージ時間管理用
#counter_3    -> 第三スキルの1秒強化の管理用

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/051/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/051/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/051/replaceitem/3

execute if entity @s[scores={counter_2=1..}] run function project-c:jobaction/051/skill/2/p

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"冷血の霜撃","color":"aqua","bold":true,"italic":false}'}}}},scores={CT1=1200..,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/051/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"永凍輪舞真君","color":"aqua","bold":true,"underlined":true,"italic":false}'}}}},scores={CT2=1200..,useSnowball=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/051/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"破剣-冷刃","color":"aqua","italic":false}'}}}},scores={CT3=1200..,useSnowball=1..,stockcounter=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/051/skill/3/0

execute if entity @s[scores={counter_1=1..}] run scoreboard players remove @s counter_1 1
execute if entity @s[scores={counter_1=0}] run function project-c:jobaction/051/skill/3/taken_reset
execute if entity @s[scores={counter_3=1..}] run function project-c:jobaction/051/skill/3/1

execute if entity @s[scores={useSnowball=1..}] run kill @e[type=snowball,distance=..5,limit=1,sort=nearest]
execute if entity @s[scores={useSnowball=1..}] run function project-c:jobaction/051/replaceitem/off
scoreboard players reset @s[scores={useSnowball=1..}] useSnowball
scoreboard players reset @s[scores={sneak=1..}] sneak


