execute as @a[tag=extraready] at @s run me がメルクの星屑を使用した！
execute as @a[tag=extraready] at @s run particle totem_of_undying ~ ~1.5 ~ 0 0 0 0.5 100
execute as @a[tag=extraready] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @a ~ ~ ~ 3 1
execute as @a[tag=extraready] at @s run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 3 1

execute as @a[tag=extraready,team=Red] at @s run tag @a[team=Red,limit=1,gamemode=spectator,tag=!Battle] add extrahelp
execute as @a[tag=extrahelp,team=Red] at @s run scoreboard players add #GamePointRed counter 1

execute as @a[tag=extraready,team=Blue] at @s run tag @a[team=Blue,limit=1,gamemode=spectator,tag=!Battle] add extrahelp
execute as @a[tag=extrahelp,team=Blue] at @s run scoreboard players add #GamePointBlue counter 1

tag @a[tag=extrahelp] add Battle
tp @a[tag=extrahelp] @s
scoreboard players reset @a[tag=extrahelp] deathCount
scoreboard players reset @a[tag=extrahelp] deathCountExt
execute as @a[tag=extrahelp] at @s run gamemode adventure @s
execute as @a[tag=extrahelp] at @s run scoreboard players set @s relicCount 0
execute as @a[tag=extrahelp] at @s run scoreboard players set @s relicCount2 0
execute as @a[tag=extrahelp] at @s run scoreboard players set @s drop 1
execute as @a[tag=extrahelp] at @s run scoreboard players set @s OutCombat 0
execute as @a[tag=extrahelp] run function project-c:general/max-health
execute as @a[tag=extrahelp] at @s run scoreboard players set @s ScoreToHealth 6
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 3 0
execute if entity @a[tag=extrahelp] if score #MerckCount counter matches 0..1 run scoreboard players add #MerckCount counter 1
execute if entity @a[tag=extrahelp] run tellraw @a [{"selector":"@s"},{"text":"が復活しました！","bold":true},{"text":" [","color":"white","bold":true},{"score":{"name":"#MerckCount","objective":"counter"},"color":"white","bold":true},{"text":"/2]","color":"white","bold":true}]


execute if score #MenuRuleselect counter matches 2 run execute as @a[tag=extrahelp] at @s run scoreboard players set @s eliminationp 1
tag @a[tag=extraready] remove extraready
tag @a[tag=extrahelp] remove extrahelp
