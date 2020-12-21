#実行者     -> jobNumber = 043
#実行地点   -> 実行者
#counter    -> 浮遊管理用
#subcounter -> 第二スキルの盟約対象のplayerNumber保存用
#counter_1    -> 第一スキル管理用
#counter_2    -> 第二スキルactive管理用
#counter_3    -> 浮遊管理用

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/043/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/043/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/043/replaceitem/3


execute if entity @s[scores={CT1=1200..,aviate=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/043/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"盟約-ツキシタガウモノ\",\"color\":\"light_purple\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/043/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"解脱-完全浮遊者\"}"}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/043/skill/3/0

execute if entity @s[tag=043-3holding,scores={CT3=1200..,drop=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/043/skill/3/drop
execute if entity @s[tag=043-3holding] run tag @s remove 043-3holding
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"解脱-完全浮遊者\"}"}}}},scores={CT3=1200..,counter_2=1..},tag=SkillReady3,gamemode=!spectator] run tag @s add 043-3holding

execute if entity @s[scores={counter_1=1..}] at @s run function project-c:jobaction/043/skill/1/1

execute if entity @s[scores={useCarrotStick=1..,counter=..0},gamemode=!spectator] run function project-c:jobaction/043/skill/3/p
execute if entity @s[scores={counter=-2}] run effect clear @s levitation
execute unless entity @s[scores={counter=..-3}] run scoreboard players remove @s counter 1
execute if entity @s[scores={counter_2=1..}] at @s run function project-c:jobaction/043/skill/2/1
execute if entity @s[tag=Battle] unless entity @s[scores={counter_2=1..}] run effect give @s wither 1 1 true
execute if score @s counter_3 matches 1 run effect give @s slow_falling 1 0

scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={aviate=1..}] aviate
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick