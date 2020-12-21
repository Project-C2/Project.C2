#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 1120
tag @s add 85swap

#スキル効果
#共通

summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["085-swaprecall"]}

execute if entity @s[scores={sneak=0}] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["085-swap","085-swap1"],NoGravity:1b,Marker:1b}

execute if entity @s[scores={sneak=1..}] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["085-swap","085-swap2"],NoGravity:1b,Marker:1b}

execute anchored eyes run teleport @e[tag=085-swap,limit=1,sort=nearest] ^ ^ ^2.5 ~ ~


kill @e[limit=1,sort=nearest,type=snowball]

playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 2 1

#リセット
tag @s remove SkillReady2
execute as @e[tag=085-swap] at @s run function project-c:jobaction/085/skill/2/1