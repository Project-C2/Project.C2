#スキル効果
#共通

execute as @e[tag=062-hanrei] at @s if score @s playerNumber = @a[scores={jobNumber=62,Mana=..0},limit=1] playerNumber run kill @s

scoreboard players operation @e[tag=062-hanrei,sort=nearest,limit=1] playerNumber = @s playerNumber

particle end_rod ~ ~ ~ 0 0 0 0.3 40
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 1

execute as @s[team=Red] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["062-hanrei","062-hanreiR"],Marker:1b}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["062-hanrei","062-hanreiB"],Marker:1b}

scoreboard players operation @e[tag=062-hanrei,sort=nearest,limit=1] playerNumber = @s playerNumber

data merge block -111 11 31 {auto:1b}

#リセット
scoreboard players set @s Mana 1