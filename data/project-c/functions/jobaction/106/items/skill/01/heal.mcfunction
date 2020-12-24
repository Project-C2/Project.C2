#スキル6


playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.8
particle minecraft:firework ~ ~1 ~ 2 2 2 0 20 force

tag @s add 106_relieve_heal_anchor
execute if entity @s[team=Red] as @e[tag=Battle,team=Red,tag=!106_relieve_heal_anchor,distance=..4,sort=random,limit=2] run tag @s add 106_relieve_heal
execute if entity @s[team=Blue] as @e[tag=Battle,team=Blue,tag=!106_relieve_heal_anchor,distance=..4,sort=random,limit=2] run tag @s add 106_relieve_heal

execute as @e[tag=Battle,tag=!106_relieve_heal_anchor,tag=106_relieve_heal] at @s anchored eyes run particle minecraft:heart ~ ~1 ~ 0.2 0.4 0.2 1 2 force
execute as @e[tag=Battle,tag=!106_relieve_heal_anchor,tag=106_relieve_heal,type=!#project-c:neac/undead] run tag @s add Nundead
execute as @e[tag=Battle,tag=!106_relieve_heal_anchor,tag=106_relieve_heal,tag=Nundead] run effect give @s instant_health 1 1 true
execute as @e[tag=Battle,tag=!106_relieve_heal_anchor,tag=106_relieve_heal,tag=!Nundead] run effect give @s instant_damage 1 1 true
execute if entity @e[tag=106_relieve_heal,limit=1] as @e[tag=106_relieve_heal] run tag @s remove 106_relieve_heal
execute if entity @e[tag=Nundead,limit=1] as @e[tag=Nundead] run tag @s remove Nundead


tag @s remove 106_relieve_heal_anchor
scoreboard players reset #team_number


