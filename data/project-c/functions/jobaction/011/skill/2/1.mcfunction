scoreboard players add @s counter 1

execute if entity @s[tag=SculptureStandR,scores={counter=60..,counter_1=1..}] run effect give @a[distance=..10,team=Red] minecraft:instant_health 1 0
execute if entity @s[tag=SculptureStandR,scores={counter=60..,counter_1=2..}] run effect give @a[distance=..10,team=Red] minecraft:resistance 3 0
execute if entity @s[tag=SculptureStandR,scores={counter=60..,counter_1=3..}] run scoreboard players add @a[distance=..10,team=Red] CT1 60
execute if entity @s[tag=SculptureStandR,scores={counter=60..,counter_1=3..}] run scoreboard players add @a[distance=..10,team=Red] CT2 60
execute if entity @s[tag=SculptureStandR,scores={counter=60..,counter_1=3..}] run scoreboard players add @a[distance=..10,team=Red] CT3 60

execute if entity @s[tag=SculptureStandB,scores={counter=60..,counter_1=1..}] run effect give @a[distance=..10,team=Blue] minecraft:instant_health 1 0
execute if entity @s[tag=SculptureStandB,scores={counter=60..,counter_1=2..}] run effect give @a[distance=..10,team=Blue] minecraft:resistance 3 0
execute if entity @s[tag=SculptureStandB,scores={counter=60..,counter_1=3..}] run scoreboard players add @a[distance=..10,team=Blue] CT1 60
execute if entity @s[tag=SculptureStandB,scores={counter=60..,counter_1=3..}] run scoreboard players add @a[distance=..10,team=Blue] CT2 60
execute if entity @s[tag=SculptureStandB,scores={counter=60..,counter_1=3..}] run scoreboard players add @a[distance=..10,team=Blue] CT3 60

execute if entity @s[scores={counter=60..}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~1 ~ 0.5 2
execute if entity @s[scores={counter=60..}] run particle totem_of_undying ~ ~1 ~ 4 0 4 0.01 200
scoreboard players set @s[scores={counter=60..}] counter 0

execute unless entity @e[tag=StandVillager,distance=..1] run kill @s