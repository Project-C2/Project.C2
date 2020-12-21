
scoreboard players set @s counter 140

execute if entity @s[team=Red] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["099-W-P1-slowness","099-W-P1-slowness-Red"],NoGravity:1b,Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["099-W-P1-slowness","099-W-P1-slowness-Blue"],NoGravity:1b,Marker:1b}
execute anchored eyes run teleport @e[tag=099-W-P1-slowness,limit=1,sort=nearest] ^ ^ ^ ~ ~


function project-c:jobaction/099/replaceitem/0-1

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1.6
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 1.3


execute as @e[tag=099-W-P1-slowness] at @s run function project-c:jobaction/099/skill/0/phase1/1