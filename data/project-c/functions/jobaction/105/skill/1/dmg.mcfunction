data merge storage score_damage: {Damage:9.00f,SkillNumber:1b,EPF:0,BypassArmor:0b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:1b,MultiDamage:0b,byUUID:[]}
scoreboard players operation #skill_dmg playerNumber = @s playerNumber
execute as @e[tag=hit] at @s run function project-c:general/damage
scoreboard players reset #skill_dmg
tag @e[tag=hit] remove hit
