scoreboard players set @s counter_3 200

execute rotated ~030 0 run summon minecraft:armor_stand ^ ^-0.3 ^3 {Tags:["Initializing","114-DarkHamburg"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dark_oak_slab",Count:1b,tag:{}}],Pose:{Head:[180f,0f,0f]}}
execute rotated ~090 0 run summon minecraft:armor_stand ^ ^-0.3 ^3 {Tags:["Initializing","114-DarkHamburg"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dark_oak_slab",Count:1b,tag:{}}],Pose:{Head:[180f,0f,0f]}}
execute rotated ~150 0 run summon minecraft:armor_stand ^ ^-0.3 ^3 {Tags:["Initializing","114-DarkHamburg"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dark_oak_slab",Count:1b,tag:{}}],Pose:{Head:[180f,0f,0f]}}
execute rotated ~210 0 run summon minecraft:armor_stand ^ ^-0.3 ^3 {Tags:["Initializing","114-DarkHamburg"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dark_oak_slab",Count:1b,tag:{}}],Pose:{Head:[180f,0f,0f]}}
execute rotated ~270 0 run summon minecraft:armor_stand ^ ^-0.3 ^3 {Tags:["Initializing","114-DarkHamburg"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dark_oak_slab",Count:1b,tag:{}}],Pose:{Head:[180f,0f,0f]}}
execute rotated ~330 0 run summon minecraft:armor_stand ^ ^-0.3 ^3 {Tags:["Initializing","114-DarkHamburg"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:dark_oak_slab",Count:1b,tag:{}}],Pose:{Head:[180f,0f,0f]}}
scoreboard players operation @e[tag=Initializing] playerNumber = @s playerNumber

tag @s add DarkSushiBlader
execute as @e[tag=Initializing] at @s facing entity @a[tag=DarkSushiBlader,limit=1] feet run tp @s ~ ~ ~ ~ 0
tag @s remove DarkSushiBlader

function project-c:jobaction/114/replaceitem/1-1
schedule function project-c:jobaction/114/skill/1/schedule_loop/0 1t replace
tag @e[tag=Initializing] remove Initializing

scoreboard players reset @s useCarrotStick