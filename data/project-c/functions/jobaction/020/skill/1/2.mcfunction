data merge storage score_damage: {Damage:2.50f,SkillNumber:1b,EPF:0,BypassArmor:0b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:0b,MultiDamage:0b,byUUID:[]}

effect give @e[tag=hit] glowing 1 0
scoreboard players operation #skill_dmg playerNumber = @s playerNumber
execute as @e[tag=hit] at @s run function project-c:general/damage
scoreboard players reset #skill_dmg
tag @e[tag=hit] remove hit