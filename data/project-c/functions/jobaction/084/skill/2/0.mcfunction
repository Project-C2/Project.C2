#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 600


#スキル効果
#共通
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 1
particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 1 100

execute if entity @s[team=Red] run teleport @s @a[team=Red,distance=1..,sort=nearest,tag=Battle,gamemode=!spectator,limit=1]
execute if entity @s[team=Blue] run teleport @s @a[team=Blue,distance=1..,sort=nearest,tag=Battle,gamemode=!spectator,limit=1]

particle minecraft:portal ~ ~1 ~ 0 0 0 1 100

#リセット
tag @s remove SkillReady2