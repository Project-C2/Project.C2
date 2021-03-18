scoreboard players set @s CT2 1000
replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 10

playsound minecraft:entity.wither.death master @a ~ ~ ~ 2 1

execute if entity @s[team=Red] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["122sword","122swordF","122-swordRed","122sword-Level1"],Invisible:1b,Marker:1b}
execute if entity @s[team=Blue] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["122sword","122swordF","122-swordBlue","122sword-Level1"],Invisible:1b,Marker:1b}
teleport @e[tag=122swordF] ^ ^0.5 ^ ~ ~
execute as @e[tag=122swordF] at @s run teleport @s ^ ^ ^ ~-60 ~

tag @e[tag=122swordF] remove 122swordF

data merge block 94 61 -62 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2