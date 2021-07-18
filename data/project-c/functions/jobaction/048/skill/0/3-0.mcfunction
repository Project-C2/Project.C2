execute if entity @s[scores={counter_1=0}] run data merge storage score_damage: {Damage:4.00f,SkillNumber:0b,EPF:0,BypassArmor:0b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:1b,MultiDamage:0b,byUUID:[]}
execute if entity @s[scores={counter_1=1}] run data merge storage score_damage: {Damage:0.00f,SkillNumber:0b,EPF:0,BypassArmor:0b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:1b,MultiDamage:0b,byUUID:[]}
execute if entity @s[scores={counter_1=2}] run data merge storage score_damage: {Damage:5.00f,SkillNumber:0b,EPF:0,BypassArmor:0b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:1b,MultiDamage:0b,byUUID:[]}
execute if entity @s[scores={counter_1=5}] run data merge storage score_damage: {Damage:9.00f,SkillNumber:0b,EPF:0,BypassArmor:0b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:1b,MultiDamage:0b,byUUID:[]}

execute if entity @s[scores={counter_1=1}] as @e[tag=hit] at @s run summon arrow ~ ~2.5 ~ {CustomName:'{"text":"§c炎のフェアリー"}',CustomNameVisible:1,Motion:[0.0,-1.0,0.0],pickup:0,damage:4,Fire:20}

execute if entity @s[scores={counter_1=2}] run effect give @e[tag=hit] slowness 2 1


scoreboard players operation #skill_dmg playerNumber = @s playerNumber
execute as @e[tag=hit] at @s run function project-c:general/damage
scoreboard players reset #skill_dmg


tag @e[tag=hit] remove hit