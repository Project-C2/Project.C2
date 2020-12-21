tag @s add 039-as
scoreboard players add @s counter 1
execute if entity @s[team=RedDummy] positioned ~ ~0.5 ~ positioned ^ ^ ^0 if entity @e[team=!Red,tag=Battle,distance=..2.5] run function project-c:jobaction/039/skill/1/2
execute if entity @s[team=BlueDummy] positioned ~ ~0.5 ~ positioned ^ ^ ^0 if entity @e[team=!Blue,tag=Battle,distance=..2.5] run function project-c:jobaction/039/skill/1/2
execute if entity @s[team=RedDummy] positioned ~ ~0.5 ~ positioned ^ ^ ^1 if entity @e[team=!Red,tag=Battle,distance=..2.5] run function project-c:jobaction/039/skill/1/2
execute if entity @s[team=BlueDummy] positioned ~ ~0.5 ~ positioned ^ ^ ^1 if entity @e[team=!Blue,tag=Battle,distance=..2.5] run function project-c:jobaction/039/skill/1/2
execute if score @s counter matches 1 as @a[scores={jobNumber=39}] if score @s playerNumber = @e[tag=039-as,limit=1] playerNumber run tp @e[tag=039-as,limit=1] @s
execute if score @s counter matches 6.. as @a[scores={jobNumber=39}] if score @s playerNumber = @e[tag=039-as,limit=1] playerNumber if entity @s[scores={sneak=1..}] run scoreboard players set @e[tag=039-as,limit=1] counter 40
execute if score @s counter matches 6.. as @a[scores={jobNumber=39}] if score @s playerNumber = @e[tag=039-as,limit=1] playerNumber at @e[tag=039-as,limit=1] positioned ~ ~0.5 ~ run tp @s ^ ^ ^2 ~ ~
#execute if score @s counter matches 2.. as @a[scores={jobNumber=39}] if score @s playerNumber = @e[tag=039-as,limit=1] playerNumber run effect give @s levitation 1 0 true
execute if score @s counter matches 6.. unless block ^ ^ ^1.0 air run scoreboard players set @s counter 40
execute if score @s counter matches 6.. unless block ^ ^ ^2.0 air run scoreboard players set @s counter 40
execute if score @s counter matches 6.. run tp @s ^ ^ ^2 ~ ~
execute if score @s counter matches 24.. as @a[scores={jobNumber=39}] if score @s playerNumber = @e[tag=039-as,limit=1] playerNumber run gamemode adventure @s
execute if score @s counter matches 24.. run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
execute if score @s counter matches 24.. run particle end_rod ~ ~1 ~ 0 0 0 0.2 30 normal @a
execute if score @s counter matches 24.. run particle end_rod ~ ~1 ~ 0 0 0 0.2 10 force @a
execute if score @s counter matches 24.. run kill @s
playsound minecraft:entity.player.attack.sweep master @a ^ ^ ^1 1.5 1.5
execute positioned ^ ^ ^1 run particle minecraft:sweep_attack ~ ~1.3 ~ 1 0.2 1 1 12 normal @a
execute positioned ^ ^ ^1 run particle minecraft:sweep_attack ~ ~1.3 ~ 1 0.2 1 1 3 force @a
tag @s remove 039-as
