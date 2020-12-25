execute if score @s counter_8 matches 0.. run scoreboard players remove @s counter_8 1
execute if score @s counter_8 matches 1 run data merge entity @s {Marker:0b}
scoreboard players add @s counter 1
execute store result entity @s Pose.RightArm[1] float 1 run scoreboard players add @s counter_7 6
execute unless score @s counter_8 matches ..-2 if data entity @s {OnGround:1b} run data merge entity @s {Marker:1b,Glowing:1b,Team:"DarkGray"}
execute unless score @s counter_8 matches ..-2 if data entity @s {OnGround:1b} run scoreboard players set @s counter_8 -2
tag @s add now
execute if entity @a[tag=110_dagger_owner,distance=..1.2,limit=1] as @a[tag=110_dagger_owner,distance=..1.2] if score @s playerNumber = @e[tag=now,limit=1] playerNumber run function project-c:jobaction/110/weapons/7/pickup
execute positioned ~ ~-0.8 ~ if entity @a[tag=110_dagger_owner,distance=..1.2,limit=1] as @a[tag=110_dagger_owner,distance=..1.2] if score @s playerNumber = @e[tag=now,limit=1] playerNumber run function project-c:jobaction/110/weapons/7/pickup
execute if score @s counter >= @s counter_6 run function project-c:jobaction/110/weapons/7/despawn
tag @s remove now