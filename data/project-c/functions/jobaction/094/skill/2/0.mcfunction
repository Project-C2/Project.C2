#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 1000

#スキル効果
#共通
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["094-voidB","094-voidBR"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["094-voidB","094-voidBB"],Marker:1b}

teleport @e[limit=1,sort=nearest,tag=094-voidB] ^ ^1.5 ^1 ~ ~

playsound minecraft:block.portal.trigger master @a ~ ~ ~ 3 2
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 3 1

#リセット
tag @s remove SkillReady2
data merge block 25 2 89 {auto:1b}