execute if entity @s[scores={walk=0,sprint=0},gamemode=!spectator] run scoreboard players add @s relicCount 1
execute if entity @s[scores={walk=0,sprint=0,relicCount=41..99},gamemode=!spectator] run particle dust 0 1 0 1 ~ ~1 ~ 1 2 1 0 1 force @a

execute if entity @s[scores={walk=1..}] run scoreboard players set @s relicCount 0
execute if entity @s[scores={sprint=1..}] run scoreboard players set @s relicCount 0
scoreboard players set @s walk 0
scoreboard players set @s sprint 0
execute if entity @s[scores={walk=0,sprint=0,relicCount=99}] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~1 ~ 1 1
execute if entity @s[scores={walk=0,sprint=0,relicCount=99}] run particle end_rod ~ ~1 ~ 0 0 0 0.1 30 force @a
execute if entity @s[scores={walk=0,sprint=0,relicCount=100..}] run particle dust 0 1 0 2 ~ ~ ~ 2 0 2 0 4 force @a

execute if entity @s[scores={walk=0,sprint=0,relicCount=100..}] run scoreboard players add @s[scores={CT1=..1200}] CT1 1
execute if entity @s[scores={walk=0,sprint=0,relicCount=100..}] run scoreboard players add @s[scores={CT2=..1200}] CT2 1
execute if entity @s[scores={walk=0,sprint=0,relicCount=100..}] run scoreboard players add @s[scores={CT3=..1200}] CT3 1

execute if entity @s[tag=Battle,team=Blue,scores={walk=0,sprint=0,relicCount=100..}] if score #Clock counter matches 1 unless entity @a[tag=Battle,team=Red,distance=..10,gamemode=!spectator] run scoreboard players add @s OutCombat 1
execute if entity @s[tag=Battle,team=Red,scores={walk=0,sprint=0,relicCount=100..}] if score #Clock counter matches 1 unless entity @a[tag=Battle,team=Blue,distance=..10,gamemode=!spectator] run scoreboard players add @s OutCombat 1

execute if entity @s[tag=Battle,scores={OutCombat=240,walk=0,sprint=0,relicCount=100..}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.75
execute if entity @s[tag=Battle,scores={OutCombat=240,walk=0,sprint=0,relicCount=100..}] run effect give @s regeneration 100000 1 true

execute if entity @s[tag=Battle,scores={OutCombat=400,walk=0,sprint=0,relicCount=100..}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1
execute if entity @s[tag=Battle,scores={OutCombat=400,walk=0,sprint=0,relicCount=100..}] run effect give @s regeneration 100000 2 true

effect clear @s minecraft:strength
effect clear @s minecraft:resistance
effect clear @s minecraft:speed
effect clear @s minecraft:jump_boost
effect clear @s minecraft:haste
effect clear @s minecraft:absorption
effect clear @s minecraft:fire_resistance
effect clear @s minecraft:dolphins_grace
effect clear @s minecraft:conduit_power
effect clear @s minecraft:invisibility
effect clear @s minecraft:night_vision
effect clear @s minecraft:water_breathing