particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 50
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2

execute if entity @s[team=Red] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["DarkDamage1","DarkDamage1Red"],Invisible:1b}
execute if entity @s[team=Blue] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["DarkDamage1","DarkDamage1Blue"],Invisible:1b}

teleport @e[tag=DarkDamage1,limit=1,sort=nearest] ^ ^1.4 ^ ~ ~

scoreboard players remove @s Mana 200
scoreboard players add @s MagicFatigue 100

data merge block 27 9 31 {auto:1b}