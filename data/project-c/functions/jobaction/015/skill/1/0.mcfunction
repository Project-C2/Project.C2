#実行者     -> スキル発動者
#実行地点   -> 実行者

scoreboard players set @s CT1 800

#実行者にBattleタグが付いていない場合発動させない
execute if entity @s[tag=!Battle] run tellraw @s ["",{"text":"["},{"text":"システム","color":"yellow"},{"text":"] このスキルは試合中以外では使用できません"}]

execute if entity @s[tag=Battle] run function project-c:jobaction/015/skill/1/0-2


#ループ用コマブロ起動
data merge block 59 2 -122 {auto:1b}


scoreboard players set @s usedSkill 1
tag @s remove SkillReady1