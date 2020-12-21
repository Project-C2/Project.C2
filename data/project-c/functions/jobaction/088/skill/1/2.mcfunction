#as @a[scores={jobNumber=88},tag=088-S1-particle]

execute unless entity @a[tag=088-S1-particle] run data merge block -49 2 89 {auto:0b}

particle minecraft:falling_dust purple_concrete ~ ~1 ~ 0.3 0.5 0.3 0 1
particle minecraft:falling_dust crying_obsidian ~ ~1 ~ 0.3 0.25 0.3 0 1

execute if entity @s[nbt={ActiveEffects:[{Id:31b,Amplifier:88b,Duration:10}]}] run tag @s remove 088-S1-particle
execute if entity @s[nbt={ActiveEffects:[{Id:31b,Amplifier:88b,Duration:10}]}] run effect clear @s bad_omen