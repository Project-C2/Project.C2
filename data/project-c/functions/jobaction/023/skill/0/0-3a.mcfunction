playsound minecraft:entity.guardian.death master @a ~ ~ ~ 0.8 2
particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 1 8 normal @a
execute unless entity @s[nbt={ActiveEffects:[{Id:10b}]}] run effect give @s regeneration 1 50 true
tag @s add 023-regen