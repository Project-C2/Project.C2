execute as @e[tag=023-20s] if score @s playerNumber = @e[limit=1,sort=nearest,distance=..0.01,tag=023-20] playerNumber run kill @s
particle minecraft:dust 0.67 0.67 0.67 3 ~ ~ ~ 5 5 5 1 600 normal @a
particle minecraft:dust 0.67 0.67 0.67 3 ~ ~ ~ 5 5 5 1 150 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 2

summon armor_stand ~3.5 ~ ~ {Tags:["023-n-Animation","023-7-20s"],Marker:1b,NoGravity:1b,Invisible:1b,Rotation:[0.0f,0.0f]}
summon armor_stand ~-3.5 ~ ~ {Tags:["023-n-Animation","023-7-20s"],Marker:1b,NoGravity:1b,Invisible:1b,Rotation:[180.0f,0.0f]}
scoreboard players set @e[tag=023-n-Animation] counter 10
summon armor_stand ~ ~ ~ {Tags:["023-n-Animation","023-7-20"],Marker:1b,NoGravity:1b,Invisible:1b}
summon armor_stand ~7.0 ~ ~ {Tags:["023-n-Animation","023-7-20s"],Marker:1b,NoGravity:1b,Invisible:1b,Rotation:[60.0f,0.0f]}
summon armor_stand ~-7.0 ~ ~ {Tags:["023-n-Animation","023-7-20s"],Marker:1b,NoGravity:1b,Invisible:1b,Rotation:[-120.0f,0.0f]}
data merge block -95 2 -68 {auto:1b}
