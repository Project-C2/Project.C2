#判定
#CT
scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 1100
scoreboard players operation @s CT1 -= @s Mana

#スキル効果
#共通

particle minecraft:firework ~ ~1 ~ 0 0 0 0.3 30 force @a

execute as @s at @s if score @s playerNumber = @e[tag=066-Banish,limit=1,sort=nearest] playerNumber run tp @s @e[tag=066-Banish,limit=1,sort=nearest]
execute as @s at @s if score @s playerNumber = @e[tag=066-Banish,limit=1,sort=nearest] playerNumber run kill @e[tag=066-Banish,limit=1,sort=nearest]

playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 2
effect clear @s slowness

scoreboard players set @s Mana 0

particle minecraft:firework ~ ~1 ~ 0 0 0 0.3 30 force @a

replaceitem entity @s hotbar.1 minecraft:air

#リセット
tag @s remove SkillReady1