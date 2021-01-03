execute store result score @a[tag=114-StatusStealer,limit=1] counter_2 run attribute @s minecraft:generic.attack_damage get
effect give @s minecraft:weakness 5 2
effect give @s minecraft:slowness 5 1


##演出
particle soul_fire_flame ~ ~1 ~ 0 0 0 0.2 20 force @a
particle minecraft:falling_obsidian_tear ~ ~1 ~ 0.5 1 0.5 0 300
tellraw @s [{"selector":"@a[tag=114-StatusStealer,limit=1]","bold":true,"italic":false},{"text":"にステータスを奪われてしまった！","color":"white","bold":true,"italic":false}]