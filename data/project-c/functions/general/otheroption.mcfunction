execute if entity @e[tag=Damage1,limit=1] as @e[tag=Damage1] run effect give @s resistance 1 1 true
execute if entity @e[tag=Damage1,limit=1] as @e[tag=Damage1] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @e[tag=Damage1,limit=1] as @e[tag=Damage1] run tag @s remove Damage1

execute if entity @e[tag=Damage2,limit=1] as @e[tag=Damage2] run effect give @s resistance 1 0 true
execute if entity @e[tag=Damage2,limit=1] as @e[tag=Damage2] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @e[tag=Damage2,limit=1] as @e[tag=Damage2] run tag @s remove Damage2

execute if entity @e[tag=Damage4,limit=1] as @e[tag=Damage2] run effect give @s resistance 1 0 true
execute if entity @e[tag=Damage4,limit=1] as @e[tag=Damage4] run effect give @s minecraft:instant_damage 1 1 true
execute if entity @e[tag=Damage4,limit=1] as @e[tag=Damage4] run tag @s remove Damage4


clear @a minecraft:glass_bottle 1
clear @a minecraft:elytra{Damage:431} 1
scoreboard players add @e[type=shulker_bullet] counter 1
kill @e[type=shulker_bullet,scores={counter=80}]

execute if entity @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator,scores={OutCombat=240..},limit=1] as @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator,scores={OutCombat=240..}] run effect clear @s regeneration
execute if entity @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator,scores={OutCombat=240..},limit=1] as @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator,scores={OutCombat=240..}] run tag @s remove Regene

execute if entity @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator,limit=1] as @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator] run scoreboard players set @s OutCombat 0
execute if entity @a[tag=Battle,team=Blue,limit=1] as @a[tag=Battle,team=Blue] unless entity @a[tag=Battle,team=Red,distance=..16,gamemode=!spectator] run scoreboard players add @s OutCombat 1
execute if entity @a[tag=Battle,team=Red,limit=1] as @a[tag=Battle,team=Red] unless entity @a[tag=Battle,team=Blue,distance=..16,gamemode=!spectator] run scoreboard players add @s OutCombat 1


execute if entity @a[tag=Battle,scores={OutCombat=240},gamemode=!spectator,limit=1] as @a[tag=Battle,scores={OutCombat=240},gamemode=!spectator] at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.75
execute if entity @a[tag=Battle,scores={OutCombat=240},limit=1] as @a[tag=Battle,scores={OutCombat=240}] run effect give @s regeneration 100000 1 true

execute if entity @a[tag=Battle,scores={OutCombat=400},gamemode=!spectator,limit=1] as @a[tag=Battle,scores={OutCombat=400},gamemode=!spectator] at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1
execute if entity @a[tag=Battle,scores={OutCombat=400},limit=1] as @a[tag=Battle,scores={OutCombat=400}] run effect give @s regeneration 100000 2 true
execute if entity @a[tag=Battle,scores={OutCombat=401..},limit=1] as @a[tag=Battle,scores={OutCombat=401..}] run effect give @s speed 1 0 true

execute as @a at @s store result score @s Hight run data get entity @s Pos[1]

execute if entity @a[gamemode=!spectator,tag=Battle,limit=1] as @a[gamemode=!spectator,tag=Battle] if score @s Hight matches ..4 unless score #GameTime counter matches ..0 run function project-c:general/void_return