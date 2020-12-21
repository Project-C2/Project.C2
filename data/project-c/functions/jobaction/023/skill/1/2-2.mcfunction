execute unless entity @s[nbt={ActiveEffects:[{Id:20b,Amplifier:0b}]}] run tag @s remove 023-antiRegen
execute if entity @s[tag=023-antiRegen] run effect clear @s minecraft:regeneration