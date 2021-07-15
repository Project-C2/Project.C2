scoreboard players set @s CT2 600
summon armor_stand ~ ~-1.35 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2009337434,913129478,-1091314930,2041836320],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTM1ZTg3YTMzZTgxOGNmZTk3OWQ3YzEyMzk1OTAzMGE1MDVkZTVhZGY0NTZkMzI4MTMwNGU5N2MzN2UwYWNlZSJ9fX0="}]}}}}],Tags:["020-Cock","020-CockSummon"]}
item replace entity @s hotbar.2 with minecraft:compass{display:{Name:'"CoolTime"'}} 2


scoreboard players operation @e[tag=020-CockSummon,limit=1] playerNumber = @s playerNumber
scoreboard players operation #skillCheck teamNumber = @s teamNumber
scoreboard players operation @e[tag=020-CockSummon] teamNumber = #skillCheck teamNumber
scoreboard players reset #skillCheck teamNumber

tag @e[tag=020-CockSummon] remove 020-CockSummon

playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 2 0.45
playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 2 0.45
particle minecraft:flame ~ ~ ~ 0 0 0 0.4 50
particle minecraft:enchant ~ ~2.3 ~ 0 0 0 3 200

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2

data merge block 121 2 -122 {auto:1b}