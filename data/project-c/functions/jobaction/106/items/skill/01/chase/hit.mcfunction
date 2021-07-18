#スキル01
execute as @a[tag=hit] if entity @s[gamemode=spectator] run tag @s remove hit

scoreboard players operation #skill_dmg playerNumber = @s playerNumber
execute as @a if score @s playerNumber = #skill_dmg playerNumber run tag @s add 106-e-chest-C
loot replace entity @a[tag=106-e-chest-C] enderchest.5 loot project-c:neac/106/skill/01
execute as @a[tag=106-e-chest-C] run tag @s remove 106-e-chest-C
data merge storage score_damage: {Damage:8.50f,SkillNumber:5b,EPF:0,BypassArmor:0b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:1b,MultiDamage:0b,byUUID:[]}
execute as @e[tag=hit] at @s run function project-c:general/damage
scoreboard players reset #skill_dmg

tag @e[tag=hit] remove hit