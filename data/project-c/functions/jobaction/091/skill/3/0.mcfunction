#判定
#CT
scoreboard players set @s usedSkill 3
scoreboard players set @s CT3 1180

#スキル効果
#共通
playsound minecraft:block.anvil.land master @a ~ ~ ~ 3 1.5
scoreboard players add @s subcounter 1
scoreboard players set @s[scores={subcounter=2..}] subcounter 0

execute if entity @s[scores={subcounter=0}] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 60
execute if entity @s[scores={subcounter=1}] run particle minecraft:end_rod ~ ~1 ~ 1 1 1 0 60

execute if entity @s[scores={subcounter=0}] run effect clear @s jump_boost
execute if entity @s[scores={subcounter=0}] run attribute @s minecraft:generic.knockback_resistance base set 0
execute if entity @s[scores={subcounter=1}] run attribute @s minecraft:generic.knockback_resistance base set 1

#リセット
tag @s remove SkillReady3