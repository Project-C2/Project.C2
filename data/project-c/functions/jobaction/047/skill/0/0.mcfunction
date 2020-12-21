#CT
scoreboard players set @s Mana 60
#スキル効果
#Red
execute anchored eyes if entity @s[team=Red] run summon armor_stand ^0.25 ^ ^1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0R","047-0Summoned"]}
execute anchored eyes if entity @s[team=Red] run summon armor_stand ^-0.25 ^ ^1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0R","047-0Summoned"]}
execute anchored eyes if entity @s[team=Red] run summon armor_stand ^0.75 ^-0.25 ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0R","047-0Summoned"]}
execute anchored eyes if entity @s[team=Red] run summon armor_stand ^-0.75 ^-0.25 ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0R","047-0Summoned"]}
#Blue
execute anchored eyes if entity @s[team=Blue] run summon armor_stand ^0.25 ^ ^1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0B","047-0Summoned"]}
execute anchored eyes if entity @s[team=Blue] run summon armor_stand ^-0.25 ^ ^1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0B","047-0Summoned"]}
execute anchored eyes if entity @s[team=Blue] run summon armor_stand ^0.75 ^-0.25 ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0B","047-0Summoned"]}
execute anchored eyes if entity @s[team=Blue] run summon armor_stand ^-0.75 ^-0.25 ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0B","047-0Summoned"]}
#共通
execute at @e[tag=047-0Summoned] rotated as @s run teleport @e[limit=1,sort=nearest,tag=047-0Summoned] ~ ~ ~ ~ ~
data merge block -63 5 -20 {auto:1b}
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 2
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1.45
tag @e[tag=047-0Summoned] remove 047-0Summoned
#リセット
scoreboard players set @s usedSkill 1
kill @e[type=snowball,limit=1,sort=nearest]