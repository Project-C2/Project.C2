#実行者     -> jobNumber = 83
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/083/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/083/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/083/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ダークムーン","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/083/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ダークギャザリング","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/083/skill/2/0

execute as @s[scores={counter_1=1..},team=Red] at @s run summon armor_stand ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:1200,Tags:["083-slash","083-hassummon","083-slashRed"],Marker:1b,NoGravity:1b,Invisible:1b}
execute as @s[scores={counter_1=1..},team=Blue] at @s run summon armor_stand ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:1200,Tags:["083-slash","083-hassummon","083-slashBlue"],Marker:1b,NoGravity:1b,Invisible:1b}
execute as @s[scores={counter_1=1..}] at @s anchored eyes run teleport @e[tag=083-hassummon,limit=1,sort=nearest] ^ ^ ^0.1 ~ ~
scoreboard players operation @e[limit=1,sort=nearest,tag=083-hassummon] playerNumber = @s playerNumber
execute as @e[tag=083-hassummon] at @s run tag @s remove 083-hassummon
execute as @e[tag=083-slash] at @s run particle end_rod ^ ^ ^1.3 0 0 0 0 1 force
execute as @s[scores={counter_1=1..}] at @s anchored eyes run particle firework ^ ^ ^1 0 0 0 0.3 2 force
execute as @s[scores={counter_1=1..}] at @s run scoreboard players add @s counter_1 1
execute as @s[scores={counter_1=12..}] at @s run function project-c:jobaction/083/skill/1/1

execute as @s[scores={counter_3=300},tag=Battle,gamemode=!spectator] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 1
execute as @s[scores={counter_3=301..},tag=Battle,gamemode=!spectator] at @s run particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={counter_3=301..},tag=Battle,gamemode=!spectator] at @s run effect give @s resistance 1 4
execute as @s[scores={counter_3=..300},tag=Battle,gamemode=!spectator] at @s run scoreboard players add @s counter_3 1

execute as @s[scores={counter_3=301..},nbt={HurtTime:9s}] at @s run effect clear @s resistance
execute as @s[scores={counter_3=301..},nbt={HurtTime:9s}] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 1 100
execute as @s[scores={counter_3=301..},nbt={HurtTime:9s}] at @s run playsound minecraft:item.totem.use master @a ~ ~ ~ 1 1
execute as @s[scores={counter_3=301..},nbt={HurtTime:9s}] at @s run scoreboard players set @s counter_3 0

scoreboard players set @s sneak 0
scoreboard players reset @s useCarrotStick