particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 50
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2

execute if entity @s[team=Red] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Slow1","Slow1Red"],Invisible:1b}
execute if entity @s[team=Blue] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Slow1","Slow1Blue"],Invisible:1b}

teleport @e[tag=Slow1,limit=1,sort=nearest] ^ ^1.4 ^ ~ ~

scoreboard players remove @s Mana 100
scoreboard players add @s MagicFatigue 75

data merge block 27 5 31 {auto:1b}