#実行者     -> jobNumber = 108
#実行地点   -> 実行者
#第一スキル
scoreboard players set @s CT1 800

execute if entity @s[team=red] run scoreboard players add @a[team=blue,distance=..6] 108-Confuse 60
execute if entity @s[team=red] run tell @a[team=blue,distance=..6] ちぇるちぇらちぇぽーん。
execute if entity @s[team=blue] run scoreboard players add @a[team=red,distance=..6] 108-Confuse 60
execute if entity @s[team=blue] run tell @a[team=red,distance=..6] ちぇるらぱるるちぇるれ。

schedule function project-c:jobaction/108/skill/1/schedule_loop 1t replace

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1


