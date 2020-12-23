#実行者     -> jobNumber = 108
#実行地点   -> 実行者
#第一スキル
scoreboard players set @s CT1 800

execute if entity @s[team=Red] run scoreboard players add @e[team=Blue,distance=..6] 108-Confuse 60
execute if entity @s[team=Red] run tell @a[team=Blue,distance=..6] ちぇるちぇらちぇぽーん。
execute if entity @s[team=Blue] run scoreboard players add @e[team=Red,distance=..6] 108-Confuse 60
execute if entity @s[team=Blue] run tell @a[team=Red,distance=..6] ちぇるらぱるるちぇるれ。

schedule function project-c:jobaction/108/skill/1/schedule_loop 1t replace

particle minecraft:enchant ~ ~1 ~ 1 1 1 0.5 500 normal
playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 1 1.5

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1