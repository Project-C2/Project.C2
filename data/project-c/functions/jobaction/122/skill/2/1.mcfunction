scoreboard players add @s counter 1

teleport @s ^ ^ ^ ~10 ~

execute if entity @s[tag=122-swordRed,tag=122sword-Level1] run summon minecraft:armor_stand ^ ^0.5 ^2 {Tags:["122-swordD","122-swordDRed","122swordD-Level1"],Invisible:1b,Marker:1b}
execute if entity @s[tag=122-swordRed,tag=122sword-Level1] run summon minecraft:armor_stand ^ ^0.5 ^4 {Tags:["122-swordD","122-swordDRed","122swordD-Level1"],Invisible:1b,Marker:1b}
execute if entity @s[tag=122-swordRed,tag=122sword-Level1] run summon minecraft:armor_stand ^ ^0.5 ^6 {Tags:["122-swordD","122-swordDRed","122swordD-Level1"],Invisible:1b,Marker:1b}
execute if entity @s[tag=122-swordRed,tag=122sword-Level1] run summon minecraft:armor_stand ^ ^0.5 ^8 {Tags:["122-swordD","122-swordDRed","122swordD-Level1"],Invisible:1b,Marker:1b}
execute if entity @s[tag=122-swordRed,tag=122sword-Level1] run summon minecraft:armor_stand ^ ^0.5 ^10 {Tags:["122-swordD","122-swordDRed","122swordD-Level1"],Invisible:1b,Marker:1b}




execute if entity @s[tag=122-swordBlue,tag=122sword-Level1] run summon minecraft:armor_stand ^ ^0.5 ^2 {Tags:["122-swordD","122-swordDBlue","122swordD-Level1"],Invisible:1b,Marker:1b}

execute if entity @s[tag=122-swordBlue,tag=122sword-Level1] run summon minecraft:armor_stand ^ ^0.5 ^4 {Tags:["122-swordD","122-swordDBlue","122swordD-Level1"],Invisible:1b,Marker:1b}

execute if entity @s[tag=122-swordBlue,tag=122sword-Level1] run summon minecraft:armor_stand ^ ^0.5 ^6 {Tags:["122-swordD","122-swordDBlue","122swordD-Level1"],Invisible:1b,Marker:1b}

execute if entity @s[tag=122-swordBlue,tag=122sword-Level1] run summon minecraft:armor_stand ^ ^0.5 ^8 {Tags:["122-swordD","122-swordDBlue","122swordD-Level1"],Invisible:1b,Marker:1b}

execute if entity @s[tag=122-swordBlue,tag=122sword-Level1] run summon minecraft:armor_stand ^ ^0.5 ^10 {Tags:["122-swordD","122-swordDBlue","122swordD-Level1"],Invisible:1b,Marker:1b}




kill @s[scores={counter=13..}]

data merge block 94 64 -62 {auto:1b}