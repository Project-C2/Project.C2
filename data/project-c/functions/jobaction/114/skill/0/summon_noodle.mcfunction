# 実行者　-> useCarrotStick = 1..
# 実行位置 -> 実行者
tag @s remove 114-DoingCountDown
summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["Ramen","Initializing"],Pose:{Head:[0f,0f,0.0000000001f]},CustomName:'{"text":"ラーメン"}',ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Bowl of Noodles\"}"},SkullOwner:{Id:[I;-245714829,1093554146,-2039997471,543613612],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjY4MzRiNWIyNTQyNmRlNjM1MzhlYzgyY2E4ZmJlY2ZjYmIzZTY4MmQ4MDYzNjQzZDJlNjdhNzYyMWJkIn19fQ=="}]}}}}]}
execute if entity @s[team=Red] run team join RedDummy @e[tag=Initializing,limit=1]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=Initializing,limit=1]
scoreboard players set @e[tag=Initializing,limit=1] counter 4
execute if score @s counter_1 matches 1.. run scoreboard players add @e[tag=Initializing,limit=1] counter 2
scoreboard players set @e[tag=Initializing,limit=1] counter_3 2
scoreboard players operation @e[tag=Initializing,limit=1] counter_2 = @s playerNumber
scoreboard players operation @e[tag=Initializing,limit=1] counter_4 = @s counter_2
tag @e[tag=Initializing] remove Initializing



function project-c:jobaction/114/replaceitem/0-1
schedule function project-c:jobaction/114/skill/0/schedule_loop 1t replace