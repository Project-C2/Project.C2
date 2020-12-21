scoreboard players set @s CT2 600
scoreboard players remove @s Mana 150

execute anchored eyes run particle minecraft:dragon_breath ^ ^ ^ 0 0 0 0.2 400 normal @a
execute anchored eyes run particle minecraft:dragon_breath ^ ^ ^ 0 0 0 0.2 100 force @a
playsound minecraft:entity.enderman.death master @a ~ ~ ~ 2 0.5
scoreboard players set @s counter_3 200
scoreboard players set @s counter_2 0
execute store result score @s counter_2 run clear @s minecraft:bread{018bread:1b}
scoreboard players add @s counter_2 1
execute unless entity @s[scores={counter_2=0}] run scoreboard players operation @s counter_3 /= @s counter_2
scoreboard players add @s counter_3 30


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
