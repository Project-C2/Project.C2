scoreboard players add @s counter_1 1

execute unless score @s counter_1 matches 20.. run particle dust 0 0 0 2 ~ ~ ~ 0.2 0.2 0.2 1 2 force @a
execute if score @s counter_1 matches 20.. run particle dust 0 0 0 3 ~ ~ ~ 0.7 0.7 0.7 1 25 force @a
execute if score @s counter_1 matches 20.. run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.3 1.6
execute if score @s counter_1 matches 20 run playsound entity.wither.spawn master @a ~ ~ ~ 1.2 0.8


particle portal ~ ~ ~ 0 0 0 10 30 force @a

tag @s add this


execute if entity @e[type=arrow,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=arrow,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=spectral_arrow,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=spectral_arrow,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=trident,nbt=!{Trident:{tag:{Enchantments:[{id:"minecraft:loyalty"}]}}},tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=trident,nbt=!{Trident:{tag:{Enchantments:[{id:"minecraft:loyalty"}]}}},tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=snowball,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=snowball,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=ender_pearl,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=ender_pearl,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=eye_of_ender,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=eye_of_ender,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=experience_bottle,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=experience_bottle,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=item,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=item,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=minecart,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=minecart,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=hopper_minecart,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=hopper_minecart,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=chest_minecart,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=chest_minecart,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=furnace_minecart,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=furnace_minecart,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=command_block_minecart,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=command_block_minecart,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO

execute if entity @e[type=experience_orb,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=experience_orb,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=shulker_bullet,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=shulker_bullet,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=potion,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=potion,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=fireball,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=fireball,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=small_fireball,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=small_fireball,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO
execute if entity @e[type=dragon_fireball,tag=!099-S1-P4-BkillO,tag=!Stable,limit=1] as @e[type=dragon_fireball,tag=!099-S1-P4-BkillO,tag=!Stable] run tag @s add 099-S1-P4-BkillO



execute if score @s counter_1 matches 20.. if entity @s[tag=099-S1-P4-blackhole-Red] as @e[team=!Red,tag=Battle,tag=!099-S1-P4-BkillO,tag=!Stable,distance=..25] at @s facing entity @e[tag=this,limit=1] feet if block ^ ^ ^0.5 #project-c:wancomatter/like_air positioned ^ ^ ^0.22 rotated as @s run tp @s ~ ~ ~
execute if score @s counter_1 matches 20.. if entity @s[tag=099-S1-P4-blackhole-Red] as @e[team=!Red,tag=Battle,tag=!099-S1-P4-BkillO,tag=!Stable,distance=..25] run effect give @s levitation 1 0 true
execute if score @s counter_1 matches 20.. if entity @s[tag=099-S1-P4-blackhole-Blue] as @e[team=!Blue,tag=Battle,tag=!099-S1-P4-BkillO,tag=!Stable,distance=..25] at @s facing entity @e[tag=this,limit=1] feet if block ^ ^ ^0.5 #project-c:wancomatter/like_air positioned ^ ^ ^0.22 rotated as @s run tp @s ~ ~ ~
execute if score @s counter_1 matches 20.. if entity @s[tag=099-S1-P4-blackhole-Blue] as @e[team=!Blue,tag=Battle,tag=!099-S1-P4-BkillO,tag=!Stable,distance=..25] run effect give @s levitation 1 0 true


execute if score @s counter_1 matches 20.. as @e[type=trident,nbt={Trident:{tag:{Enchantments:[{id:"minecraft:loyalty"}]}}},tag=!this,tag=!Stable,distance=..25] run function project-c:jobaction/099/skill/1/phase4/motion
execute if score @s counter_1 matches 20.. as @e[type=armor_stand,nbt=!{Marker:1b},tag=!this,tag=!099-S1-P4-blackhole,tag=!Stable,distance=..25] run function project-c:jobaction/099/skill/1/phase4/motion
execute if score @s counter_1 matches 20.. as @e[type=armor_stand,nbt={Marker:1b},tag=!this,tag=!099-S1-P4-blackhole,tag=!Stable,distance=..25] at @s facing entity @e[tag=this,limit=1] feet if block ^ ^ ^0.5 #project-c:wancomatter/like_air positioned ^ ^ ^0.6 rotated as @s run tp @s ~ ~ ~



execute if score @s counter_1 matches 20.. as @e[tag=099-S1-P4-BkillO,tag=!Stable,distance=..25] run function project-c:jobaction/099/skill/1/phase4/motion
execute if score @s counter_1 matches 20.. as @e[tag=099-S1-P4-BkillO,tag=!Stable,distance=..1] run kill @s



tag @s remove this






kill @s[scores={counter_1=200..}]