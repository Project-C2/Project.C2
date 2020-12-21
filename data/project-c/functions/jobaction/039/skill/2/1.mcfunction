tag @s add 039-as
scoreboard players add @s counter 1
execute if entity @s[team=RedDummy] positioned ~ ~1.0 ~ positioned ^ ^ ^0 if entity @e[team=Blue,tag=Battle,distance=..2.5] run scoreboard players set @s counter 40
execute if entity @s[team=BlueDummy] positioned ~ ~1.0 ~ positioned ^ ^ ^0 if entity @e[team=Red,tag=Battle,distance=..2.5] run scoreboard players set @s counter 40
execute if entity @s[team=RedDummy] positioned ~ ~1.0 ~ positioned ^ ^ ^1 if entity @e[team=Blue,tag=Battle,distance=..2.5] run scoreboard players set @s counter 40
execute if entity @s[team=BlueDummy] positioned ~ ~1.0 ~ positioned ^ ^ ^1 if entity @e[team=Red,tag=Battle,distance=..2.5] run scoreboard players set @s counter 40
execute if score @s counter matches 1 as @a[scores={jobNumber=39}] if score @s playerNumber = @e[tag=039-as,limit=1] playerNumber run tp @e[tag=039-as,limit=1] @s
execute if score @s counter matches 6 at @s run tp @s ~ ~1 ~
execute if score @s counter matches 7.. as @a[scores={jobNumber=39}] if score @s playerNumber = @e[tag=039-as,limit=1] playerNumber if entity @s[scores={sneak=1..}] run scoreboard players set @e[tag=039-as,limit=1] counter 40
#execute if score @s counter matches 2.. as @a[scores={jobNumber=39}] if score @s playerNumber = @e[tag=039-as,limit=1] playerNumber run effect give @s levitation 1 0 true
execute if score @s counter matches 7.. positioned ~ ~1.0 ~ unless block ^ ^ ^1.0 air run scoreboard players set @s counter 40
execute if score @s counter matches 7.. positioned ~ ~1.0 ~ unless block ^ ^ ^2.0 air run scoreboard players set @s counter 40
execute if score @s counter matches 7.. run tp @s ^ ^ ^2 ~ ~
execute if score @s counter matches 24.. run function project-c:jobaction/039/skill/2/2
particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0.1 12 normal @a
particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0.1 3 force @a
tag @s remove 039-as
