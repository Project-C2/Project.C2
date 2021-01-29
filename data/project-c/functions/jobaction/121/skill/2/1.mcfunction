#判定
#CT
scoreboard players set @s counter_2 0

execute as @s[team=Red] at @s anchored eyes run summon armor_stand ^ ^ ^2 {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:1200,Tags:["121-second","121-hassummon","121-firstRed"],Marker:1b,NoGravity:1b,Invisible:1b}
execute as @s[team=Blue] at @s anchored eyes run summon armor_stand ^ ^ ^2 {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:1200,Tags:["121-second","121-hassummon","121-firstBlue"],Marker:1b,NoGravity:1b,Invisible:1b}
execute as @e[tag=121-hassummon] at @s run tag @s remove 121-hassummon

execute as @e[tag=121-first,sort=nearest,limit=1] at @s run tp @s ^ ^ ^1 facing entity @e[tag=121-second,sort=nearest,limit=1]

execute as @e[tag=WakingBulletRed,tag=!WakingFacing] at @s run tp @s ^ ^ ^1 facing entity @e[team=Blue,limit=1,sort=random,gamemode=!spectator]

kill @e[tag=121-second,sort=nearest,limit=1]

#スキル効果
#共通
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1
particle cloud ~ ~1 ~ 0.3 0.3 0.3 0 20

#リセット
data merge block 82 61 -62 {auto:1b}