function project-c:general/playernum
function project-c:general/jobselectolder
scoreboard players set @a relicCount 0
scoreboard players set @a CT1 1200
scoreboard players set @a CT2 1200
scoreboard players set @a CT3 1200
scoreboard players set @a drop 1
effect clear @a minecraft:regeneration
effect give @a instant_health 1 100 true
scoreboard players set @a Mana 0
scoreboard players set @a subcounter 0
data merge block -51 23 -122 {auto:1b}
data merge block -51 17 -122 {auto:1b}
data merge block 105 8 -122 {auto:1b}
effect give @a minecraft:regeneration 3 30
data merge block -45 41 -122 {auto:1b}
effect clear @a minecraft:absorption
function project-c:general/relic/clocodire
gamemode spectator @a[team=]

tag @a remove nbs_phyco
scoreboard players reset @a nbs_phyco
scoreboard players reset @a nbs_phyco_t

#ゲーム開始時にカウンタースコアを保持したい場合はここに追記してください
tag @a[scores={jobNumber=106}] add counter-keep
tag @a[scores={jobNumber=110}] add counter-keep
scoreboard players set @a[tag=!counter-keep] counter 0
scoreboard players set @a[tag=!counter-keep] counter_1 0
scoreboard players set @a[tag=!counter-keep] counter_2 0
scoreboard players set @a[tag=!counter-keep] counter_3 0
scoreboard players set @a[tag=!counter-keep] counter_4 0
scoreboard players set @a[tag=!counter-keep] counter_5 0
scoreboard players set @a[tag=!counter-keep] counter_6 0
scoreboard players set @a[tag=!counter-keep] counter_7 0
scoreboard players set @a[tag=!counter-keep] counter_8 0
scoreboard players set @a[tag=!counter-keep] counter_9 0
scoreboard players set @a[tag=!counter-keep] stockcounter 0
scoreboard players reset @a damageTaken

scoreboard players reset @a advancement1
scoreboard players reset @a advancement2
scoreboard players reset @a advancement3
scoreboard players reset @a advancement4
scoreboard players reset @a advancement5

tag @a[tag=counter-keep] remove counter-keep

execute if score #MenuRandomjob counter matches 1 run execute as @a[gamemode=!spectator] at @s run function project-c:general/jobrandom-extra

kill @e[type=minecraft:area_effect_cloud,tag=VoidReturn]
execute as @r[team=Red,limit=1,gamemode=!spectator] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:600000,Tags:["Stable","VoidReturnRed","VoidReturn"]}

execute as @r[team=Blue,limit=1,gamemode=!spectator] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:600000,Tags:["Stable","VoidReturnBlue","VoidReturn"]}

scoreboard players set @a OutCombat 240

execute as @a[scores={jobNumber=73}] at @s run scoreboard players set @s MagicFatigue 0
execute as @a[scores={jobNumber=73}] at @s run function project-c:jobaction/073/changejob
advancement revoke @a[scores={jobNumber=73}] only project-c:radiochat/amchat

function project-c:jobaction/099/initialize

function project-c:jobaction/106/initialize

function project-c:jobaction/118/initialize
function project-c:hiddenjob/-118/initialize

execute as @a at @s run attribute @s minecraft:generic.max_health base set 40

effect clear @a minecraft:health_boost

tag @a[scores={jobNumber=88}] remove 088-S3-used
scoreboard players reset @a[scores={jobNumber=88}] playerKills
execute as @a[scores={jobNumber=88}] at @s run attribute @s minecraft:generic.max_health base set 30