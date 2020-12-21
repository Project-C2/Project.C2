#CT
scoreboard players set @s CT2 1000
scoreboard players set @s usedSkill 2
#スキル効果
#共通
execute as @e[tag=058-Arrow] at @s if score @s playerNumber = @a[scores={jobNumber=58,usedSkill=2},limit=1] playerNumber run summon creeper ~ ~ ~ {CustomName:"{\"text\":\"ボムチップ\"}",ignited:1b,ExplosionRadius:2b,Fuse:2s,Invulnerable:0b,NoAI:1b,Silent:1b}

#リセット
tag @s remove SkillReady2