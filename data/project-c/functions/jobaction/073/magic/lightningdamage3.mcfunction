particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 50
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2

execute if entity @s[team=Red] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["LightningDamage3","LightningDamage3Red"],Invisible:1b}
execute if entity @s[team=Blue] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["LightningDamage3","LightningDamage3Blue"],Invisible:1b}

teleport @e[tag=LightningDamage3,limit=1,sort=nearest] ^ ^1.4 ^ ~ ~

scoreboard players remove @s Mana 240
scoreboard players add @s MagicFatigue 55

data merge block 23 15 31 {auto:1b}