scoreboard players set @s subcounter 30
execute if entity @e[tag=023-21] at @e[tag=023-21] if score @s playerNumber = @e[tag=023-21,limit=1,sort=nearest,distance=..0.01] playerNumber run kill @e[tag=023-21,limit=1,sort=nearest,distance=..0.01]
execute if entity @e[tag=023-21s] at @e[tag=023-21s] if score @s playerNumber = @e[tag=023-21s,limit=1,sort=nearest,distance=..0.01] playerNumber run kill @e[tag=023-21s,limit=1,sort=nearest,distance=..0.01]
summon armor_stand ~1.25 ~ ~ {Tags:["023-2-Animation","023-21s"],Marker:1b,NoGravity:1b,Invisible:1b,Rotation:[0.0f,0.0f]}
summon armor_stand ~-1.25 ~ ~ {Tags:["023-2-Animation","023-21s"],Marker:1b,NoGravity:1b,Invisible:1b,Rotation:[180.0f,0.0f]}
scoreboard players set @e[tag=023-2-Animation] counter 5
summon armor_stand ~ ~ ~ {Tags:["023-2-Animation","023-21","023-2x"],Marker:1b,NoGravity:1b,Invisible:1b}
summon armor_stand ~2.5 ~ ~ {Tags:["023-2-Animation","023-21s"],Marker:1b,NoGravity:1b,Invisible:1b,Rotation:[60.0f,0.0f]}
summon armor_stand ~-2.5 ~ ~ {Tags:["023-2-Animation","023-21s"],Marker:1b,NoGravity:1b,Invisible:1b,Rotation:[-120.0f,0.0f]}
data merge block -95 3 -71 {auto:1b}
particle dust 0 0.67 0.67 1 ~ ~0.1 ~ 0.7 0 0.7 1 150 normal @a