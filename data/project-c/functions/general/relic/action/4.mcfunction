execute if entity @s[scores={relicCount=300}] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 2 1
execute if entity @s[scores={relicCount=300}] run particle minecraft:witch ~ ~0.1 ~ 0.8 0 0.8 0.02 100 force @a 
execute if entity @s[scores={relicCount=300..}] run function project-c:general/relic/action/4.active
scoreboard players add @s[scores={relicCount=..300}] relicCount 1



