scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 1080

execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["122-phycoball","122-phycoballR"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["122-phycoball","122-phycoballB"],Marker:1b}

teleport @e[limit=1,sort=nearest,tag=122-phycoball] ^ ^1.5 ^1 ~ ~

playsound minecraft:block.portal.trigger master @a ~ ~ ~ 3 2
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 3 1

tag @s remove SkillReady1
data merge block 92 61 -62 {auto:1b}