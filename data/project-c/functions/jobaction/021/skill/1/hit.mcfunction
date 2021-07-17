scoreboard players set #021- subcounter 100

data merge storage score_damage: {Damage:1.00f,SkillNumber:1b,EPF:0,BypassArmor:0b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:0b,MultiDamage:1b,byUUID:[]}
scoreboard players operation #skill_dmg playerNumber = @s playerNumber
execute as @e[tag=hit] at @s run function project-c:general/damage
scoreboard players reset #skill_dmg
scoreboard players reset #021-
tag @e[tag=hit] remove hit

kill @s
