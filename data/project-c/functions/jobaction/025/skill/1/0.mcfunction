#CT
scoreboard players set @s CT1 600
#スキル効果
#共通
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 50 force @a
execute at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 2 2
execute at @s run tellraw @a[distance=..15] ["",{"text":"*","bold":true},{"selector":"@s","bold":true},{"text":" \u308f\u3044\u306f\u3084\u308b\u4e8b\u3084\u3063\u305f\u3060\u3051\u3084\u3067","bold":true}]
#リセット
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
#全能をclearする
clear @s minecraft:diamond_pickaxe