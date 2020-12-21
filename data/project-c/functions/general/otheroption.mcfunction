execute as @e[tag=Damage1] at @s run effect give @s minecraft:absorption 1 0 true
execute as @e[tag=Damage1] at @s run effect give @s minecraft:instant_damage 1 0 true
execute as @e[tag=Damage1] at @s run tag @s remove Damage1

execute as @e[tag=Damage2] at @s run effect give @s minecraft:absorption 1 1 true
execute as @e[tag=Damage2] at @s run effect give @s minecraft:instant_damage 1 1 true
execute as @e[tag=Damage2] at @s run tag @s remove Damage2

execute as @e[tag=Damage4] at @s run effect give @s minecraft:absorption 1 0 true
execute as @e[tag=Damage4] at @s run effect give @s minecraft:instant_damage 1 1 true
execute as @e[tag=Damage4] at @s run tag @s remove Damage4


clear @a minecraft:glass_bottle 1
clear @a minecraft:elytra{Damage:431} 1
scoreboard players add @e[type=shulker_bullet] counter 1
kill @e[type=shulker_bullet,scores={counter=80}]

execute as @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator,scores={OutCombat=240..}] at @s run effect clear @s regeneration
execute as @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator,scores={OutCombat=240..}] at @s run tag @s remove Regene

execute as @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator] at @s run scoreboard players set @s OutCombat 0
execute as @a[tag=Battle,team=Blue] at @s unless entity @a[tag=Battle,team=Red,distance=..16,gamemode=!spectator] run scoreboard players add @s OutCombat 1
execute as @a[tag=Battle,team=Red] at @s unless entity @a[tag=Battle,team=Blue,distance=..16,gamemode=!spectator] run scoreboard players add @s OutCombat 1


execute as @a[tag=Battle,scores={OutCombat=240},gamemode=!spectator] at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1
execute as @a[tag=Battle,scores={OutCombat=240}] at @s run effect give @s regeneration 100000 2 true
execute as @a[tag=Battle,scores={OutCombat=241..}] at @s run effect give @s speed 1 0 true

execute as @a at @s store result score @s Hight run data get entity @s Pos[1]

execute as @a[gamemode=!spectator,tag=Battle] at @s if score @s Hight matches ..4 unless score #GameTime counter matches ..0 run scoreboard players operation @s HarfHP = @s HP
execute as @a[gamemode=!spectator,tag=Battle] at @s if score @s Hight matches ..4 unless score #GameTime counter matches ..0 run scoreboard players operation @s HarfHP /= #2 counter
execute as @a[gamemode=!spectator,tag=Battle] at @s if score @s Hight matches ..4 unless score #GameTime counter matches ..0 run scoreboard players operation @s HarfHP *= #100 counter
execute as @a[gamemode=!spectator,tag=Battle] at @s if score @s Hight matches ..4 unless score #GameTime counter matches ..0 run execute store result score @s ScoreToHealth run scoreboard players get @s HarfHP

execute as @a[gamemode=!spectator,tag=Battle] at @s if score @s Hight matches ..4 unless score #GameTime counter matches ..0 run effect give @s slow_falling 1 1 true
execute as @a[gamemode=!spectator,tag=Battle] at @s if score @s Hight matches ..4 unless score #GameTime counter matches ..0 run effect give @s instant_damage 1 1 true

execute as @a[gamemode=!spectator,tag=Battle] at @s if score @s Hight matches ..4 unless score #GameTime counter matches ..0 run effect give @s wither 3 4 true
execute as @a[gamemode=!spectator,tag=Battle] at @s if score @s Hight matches ..4 unless score #GameTime counter matches ..0 run effect give @s glowing 8 0 true


execute as @a[gamemode=!spectator,tag=Battle] at @s if score @s Hight matches ..4 unless score #GameTime counter matches ..0 run scoreboard players set @s OutCombat -100

execute as @a[gamemode=!spectator,tag=Battle,team=Red] at @s if score @s Hight matches ..4 unless score #GameTime counter matches ..0 run tp @s @e[type=minecraft:area_effect_cloud,tag=VoidReturnRed,limit=1]
execute as @a[gamemode=!spectator,tag=Battle,team=Blue] at @s if score @s Hight matches ..4 unless score #GameTime counter matches ..0 run tp @s @e[type=minecraft:area_effect_cloud,tag=VoidReturnBlue,limit=1]
