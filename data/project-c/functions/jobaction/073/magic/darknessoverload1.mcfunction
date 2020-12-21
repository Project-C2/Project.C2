tag @s add usedarknessoverload

particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 50
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2

execute if entity @s[team=Red] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["darknessoverload","darknessoverloadR"]}
execute if entity @s[team=Blue] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["darknessoverload","darknessoverloadB"]}

teleport @e[tag=darknessoverload,limit=1,sort=nearest] ~ ~1 ~ ~ ~

execute as @e[tag=darknessoverload,limit=1,sort=nearest] store result entity @s Motion[0] double 0.00075 run data get entity @e[limit=1,sort=nearest,type=snowball] Motion[0] 2000
execute as @e[tag=darknessoverload,limit=1,sort=nearest] store result entity @s Motion[1] double 0.00075 run data get entity @e[limit=1,sort=nearest,type=snowball] Motion[1] 2000
execute as @e[tag=darknessoverload,limit=1,sort=nearest] store result entity @s Motion[2] double 0.00075 run data get entity @e[limit=1,sort=nearest,type=snowball] Motion[2] 2000
kill @e[limit=1,sort=nearest,type=snowball]


scoreboard players remove @s Mana 600
scoreboard players add @s MagicFatigue 250

data merge block 25 5 31 {auto:1b}