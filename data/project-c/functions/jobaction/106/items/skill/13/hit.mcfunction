#スキル16
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.6
execute as @a[tag=106_perforate_hit] if entity @s[gamemode=spectator] run tag @s remove 106_perforate_hit

scoreboard players set @s counter_4 18
scoreboard players operation @s counter_4 *= @s counter_3
scoreboard players operation @s counter_4 /= #1000 counter
execute if score @s counter_4 matches 72.. run scoreboard players set @s counter_4 72

scoreboard players operation #skill_dmg playerNumber = @s playerNumber
execute as @a if score @s playerNumber = #skill_dmg playerNumber run tag @s add 106-e-chest-C
loot replace entity @a[tag=106-e-chest-C] enderchest.5 loot project-c:neac/106/skill/13
execute as @a[tag=106-e-chest-C] run tag @s remove 106-e-chest-C
data merge storage score_damage: {Damage:0.0f,SkillNumber:5b,EPF:0,BypassArmor:0b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:1b,MultiDamage:0b,byUUID:[]}
execute store result storage score_damage: Damage float 0.1 run scoreboard players get @s counter_4
execute as @e[tag=106_perforate_hit] at @s run function project-c:general/damage
scoreboard players reset #skill_dmg


tag @e[tag=106_perforate_hit] remove 106_perforate_hit