teleport @s ^ ^ ^3 ~ ~

particle minecraft:end_rod ~ ~ ~ 0 0 0 1 10 force @a

execute if entity @s[tag=122-phycobeamFR] run summon armor_stand ^ ^ ^ {NoGravity:1b,Invisible:1b,Tags:["122-phycobeam","122-phycobeamR","122-summon"],Marker:1b}

execute if entity @s[tag=122-phycobeamFB] run summon armor_stand ^ ^ ^ {NoGravity:1b,Invisible:1b,Tags:["122-phycobeam","122-phycobeamB","122-summon"],Marker:1b}

execute if entity @s[tag=122-phycobeamFR] run summon armor_stand ^ ^ ^-1 {NoGravity:1b,Invisible:1b,Tags:["122-phycobeam","122-phycobeamR","122-summon"],Marker:1b}

execute if entity @s[tag=122-phycobeamFB] run summon armor_stand ^ ^ ^-1 {NoGravity:1b,Invisible:1b,Tags:["122-phycobeam","122-phycobeamB","122-summon"],Marker:1b}


execute if entity @s[tag=122-phycobeamFR] run summon armor_stand ^ ^ ^-2 {NoGravity:1b,Invisible:1b,Tags:["122-phycobeam","122-phycobeamR","122-summon"],Marker:1b}

execute if entity @s[tag=122-phycobeamFB] run summon armor_stand ^ ^ ^-2 {NoGravity:1b,Invisible:1b,Tags:["122-phycobeam","122-phycobeamB","122-summon"],Marker:1b}

teleport @e[limit=1,sort=nearest,tag=122-summon] ^ ^ ^ ~ ~

scoreboard players operation @e[limit=1,sort=nearest,tag=122-summon] counter = @s counter_1

execute as @e[tag=122-summon] at @s run tag @s remove 122-summon

scoreboard players add @s counter 1

kill @s[scores={counter=20..}]

data merge block 96 64 -62 {auto:1b}