#スキル8
execute as @a[tag=hit] if entity @s[gamemode=spectator] run tag @s remove hit
scoreboard players set @s counter_5 20
scoreboard players operation @s counter_5 += @s counter_2
execute if score @s counter_5 matches 40.. run scoreboard players set @s counter_5 40
scoreboard players operation #106- counter = @s counter_5

scoreboard players operation #skill_dmg playerNumber = @s playerNumber
execute as @a if score @s playerNumber = #skill_dmg playerNumber run tag @s add 106-e-chest-C
loot replace entity @a[tag=106-e-chest-C] enderchest.5 loot project-c:neac/106/skill/08
execute as @a[tag=106-e-chest-C] run tag @s remove 106-e-chest-C
data merge storage score_damage: {Damage:0.0f,SkillNumber:5b,EPF:0,BypassArmor:0b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:0b,MultiDamage:0b,byUUID:[]}
execute store result storage score_damage: Damage float 0.1 run scoreboard players get #106- counter
execute as @e[tag=hit] at @s run function project-c:general/damage
scoreboard players reset #skill_dmg



tag @e[tag=hit] remove hit

