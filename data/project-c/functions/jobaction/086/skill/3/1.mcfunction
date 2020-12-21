#スキル効果
#共通

particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 1 100 force

execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki1","086-zangekiR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki2","086-zangekiR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki3","086-zangekiR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki4","086-zangekiR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki5","086-zangekiR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki6","086-zangekiR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki7","086-zangekiR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki8","086-zangekiR"],Marker:1b}



execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki1","086-zangekiB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki2","086-zangekiB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki3","086-zangekiB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki4","086-zangekiB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki5","086-zangekiB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki6","086-zangekiB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki7","086-zangekiB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["086-zangeki","086-zangeki8","086-zangekiB"],Marker:1b}


teleport @e[limit=1,sort=nearest,tag=086-zangeki1] ^ ^1 ^ ~ 0
teleport @e[limit=1,sort=nearest,tag=086-zangeki2] ^ ^1 ^ ~45 0
teleport @e[limit=1,sort=nearest,tag=086-zangeki3] ^ ^1 ^ ~90 0
teleport @e[limit=1,sort=nearest,tag=086-zangeki4] ^ ^1 ^ ~135 0
teleport @e[limit=1,sort=nearest,tag=086-zangeki5] ^ ^1 ^ ~180 0
teleport @e[limit=1,sort=nearest,tag=086-zangeki6] ^ ^1 ^ ~225 0
teleport @e[limit=1,sort=nearest,tag=086-zangeki7] ^ ^1 ^ ~270 0
teleport @e[limit=1,sort=nearest,tag=086-zangeki8] ^ ^1 ^ ~315 0
#リセット
tag @s remove SkillReady3
data merge block -69 2 89 {auto:1b}