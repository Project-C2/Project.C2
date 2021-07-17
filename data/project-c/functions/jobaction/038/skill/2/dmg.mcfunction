execute if entity @s[scores={subcounter=2..}] run data merge storage score_damage: {Damage:6.00f,SkillNumber:2b,EPF:0,BypassArmor:0b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:0b,MultiDamage:0b,byUUID:[]}
execute if entity @s[scores={subcounter=5..}] run data merge storage score_damage: {Damage:12.00f,SkillNumber:2b,EPF:0,BypassArmor:0b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:0b,MultiDamage:0b,byUUID:[]}
execute if entity @s[scores={subcounter=9..}] run data merge storage score_damage: {Damage:24.00f,SkillNumber:2b,EPF:0,BypassArmor:0b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:0b,MultiDamage:0b,byUUID:[]}
execute if entity @s[scores={subcounter=13}] run data merge storage score_damage: {Damage:100.00f,SkillNumber:2b,EPF:0,BypassArmor:1b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:0b,MultiDamage:0b,byUUID:[]}
scoreboard players operation #skill_dmg playerNumber = @s playerNumber
execute as @e[tag=hit] at @s run function project-c:general/damage
scoreboard players reset #skill_dmg
tag @e[tag=hit] remove hit
