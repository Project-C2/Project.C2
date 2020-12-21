#CT
scoreboard players set @s CT1 1000
scoreboard players set @s usedSkill 1
#スキル効果
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1

execute as @a[scores={jobNumber=55,usedSkill=1}] at @s anchored eyes run summon fireball ^ ^ ^2 {ExplosionPower:2,direction:[0.0,0.0,0.0],CustomName:"{\"text\":\"RPG\",\"color\":\"white\",\"italic\":false}",Tags:[055-RPG]}

#共通
#リセット
tag @s remove SkillReady1
scoreboard players set @s usedSkill