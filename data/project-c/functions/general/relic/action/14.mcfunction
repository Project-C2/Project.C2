scoreboard players add @s relicCount 1
execute if entity @s[scores={relicCount=0..600},team=Red] at @s run effect give @s minecraft:strength 1 3
execute if entity @s[scores={relicCount=0..600},team=Red] run function project-c:general/effect/checkeffect
execute if entity @s[scores={relicCount=0..600},team=Red] at @s run effect give @s minecraft:resistance 1 0
execute if entity @s[scores={relicCount=0..600},team=Red] at @s run effect give @s minecraft:speed 1 0
execute if entity @s[scores={relicCount=0..600},team=Red] at @s run effect give @s minecraft:glowing 1 0
execute if entity @s[scores={relicCount=601..1200},team=Blue] at @s run effect give @s minecraft:strength 1 3
execute if entity @s[scores={relicCount=601..1200},team=Blue] at @s run function project-c:general/effect/checkeffect
execute if entity @s[scores={relicCount=601..1200},team=Blue] at @s run effect give @s minecraft:resistance 1 0
execute if entity @s[scores={relicCount=601..1200},team=Blue] at @s run effect give @s minecraft:speed 1 0
execute if entity @s[scores={relicCount=601..1200},team=Blue] at @s run effect give @s minecraft:glowing 1 0

execute if entity @s[scores={relicCount=1},team=Red] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 3 0
execute if entity @s[scores={relicCount=600},team=Red] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 3 0.75
execute if entity @s[scores={relicCount=601},team=Blue] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 3 0
execute if entity @s[scores={relicCount=1},team=Blue] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 3 0.75
execute if entity @s[scores={relicCount=601..1200},team=Red] at @s run effect give @s minecraft:slowness 1 0
execute if entity @s[scores={relicCount=601..1200},team=Red] at @s run effect give @s minecraft:weakness 1 4
execute if entity @s[scores={relicCount=601..1200},team=Red] run function project-c:general/effect/checkeffect
execute if entity @s[scores={relicCount=601..1200},team=Red] at @s run effect give @s minecraft:mining_fatigue 1 1
execute if entity @s[scores={relicCount=1..600},team=Blue] at @s run effect give @s minecraft:slowness 1 0
execute if entity @s[scores={relicCount=1..600},team=Blue] at @s run effect give @s minecraft:weakness 1 4
execute if entity @s[scores={relicCount=1..600},team=Blue] run function project-c:general/effect/checkeffect
execute if entity @s[scores={relicCount=1..600},team=Blue] at @s run effect give @s minecraft:mining_fatigue 1 1
execute if entity @s[scores={relicCount=1200..}] run scoreboard players set @s relicCount 0



