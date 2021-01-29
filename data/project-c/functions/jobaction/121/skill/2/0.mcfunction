#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players remove @s[scores={stockcounter=0..}] stockcounter 1
scoreboard players set @s[scores={stockcounter=0..}] CT2 1190
scoreboard players set @s[scores={stockcounter=-1}] CT2 1100
scoreboard players set @s[scores={stockcounter=-1}] stockcounter 0
scoreboard players set @s counter_2 1

execute as @s[team=Red] at @s anchored eyes run summon armor_stand ^ ^ ^1 {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:1200,Tags:["121-first","121-hassummon","121-firstRed"],Marker:1b,NoGravity:1b,Invisible:1b}
execute as @s[team=Blue] at @s anchored eyes run summon armor_stand ^ ^ ^1 {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:1200,Tags:["121-first","121-hassummon","121-firstBlue"],Marker:1b,NoGravity:1b,Invisible:1b}
scoreboard players operation @e[limit=1,sort=nearest,tag=121-hassummon] playerNumber = @s playerNumber
execute as @e[tag=121-hassummon] at @s run tag @s remove 121-hassummon

#スキル効果
#共通
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 1 1
particle cloud ~ ~1 ~ 0.3 0.3 0.3 0 20

#リセット
tag @s remove SkillReady2