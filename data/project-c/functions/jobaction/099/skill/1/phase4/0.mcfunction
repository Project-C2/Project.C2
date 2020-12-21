scoreboard players set @s CT1 500
replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 35



execute if entity @s[team=Red] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["099-S1-P4-blackhole","099-S1-P4-blackhole-Red","099-S1-P4-blackhole-tp"],NoGravity:1b,Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["099-S1-P4-blackhole","099-S1-P4-blackhole-Blue","099-S1-P4-blackhole-tp"],NoGravity:1b,Marker:1b}
execute anchored eyes run teleport @e[tag=099-S1-P4-blackhole,limit=1,sort=nearest] ^ ^ ^ ~ ~




playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.7 1.2
particle dust 0 0 0 3 ~ ~1 ~ 1.4 1.4 1.4 1 35 force @a


execute as @e[tag=099-S1-P4-blackhole-tp] at @s run function project-c:jobaction/099/skill/1/phase4/1


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
