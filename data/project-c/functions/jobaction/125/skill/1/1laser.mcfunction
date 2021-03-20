scoreboard players add @s[nbt={OnGround:0b}] counter 1
kill @s[scores={counter=60..}]

particle end_rod ~ ~ ~ 0 0 0 0.1 1 force @a

teleport @s ^ ^ ^1 ~ ~
execute if entity @a[distance=..1.5] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["125-rspawn"],NoGravity:1b,Marker:1b}
execute if entity @a[distance=..1.5] run kill @s

execute unless block ^ ^ ^1 air run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["125-rspawn"],NoGravity:1b,Marker:1b}
execute unless block ^ ^ ^1 air run kill @s

execute if entity @e[tag=125-rspawn] run scoreboard players operation @e[limit=1,sort=nearest,tag=125-rspawn] counter = @s counter_1
execute if entity @e[tag=125-rspawn] run data merge block 128 61 -62 {auto:1b}

execute as @e[tag=125-rr] at @s run function project-c:jobaction/125/skill/1/1laser