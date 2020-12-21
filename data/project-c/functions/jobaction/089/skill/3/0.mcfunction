scoreboard players set @s CT3 0
replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 40

effect give @s minecraft:resistance 1 4 true

summon armor_stand ~ ~ ~ {Tags:["089fire","this"],Marker:1b,Invisible:1b}
tp @e[tag=this] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this] playerNumber = @s playerNUmber
tag @e[tag=this] remove this
playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 3 1.5
playsound minecraft:entity.wither.death master @a ~ ~ ~ 3 1.6
particle lava ~ ~ ~ 2.5 2.5 2.5 1 256 normal @a
particle lava ~ ~ ~ 2.5 2.5 2.5 1 64 force @a
particle end_rod ~ ~ ~ 1 1 1 0.3 512 normal @a
particle end_rod ~ ~ ~ 1 1 1 0.3 128 force @a
data merge block -33 2 89 {auto:1b}

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3