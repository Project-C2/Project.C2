execute if entity @s[scores={counter=1..}] if entity @e[tag=118_0_selecting,limit=1] as @e[tag=118_0_selecting] if score @s playerNumber = @e[tag=Battle,tag=!118_0_anchor,limit=1,sort=nearest] playerNumber run tag @s add 118_0_selected--

execute unless entity @e[tag=118_0_selected--,limit=1] run function project-c:jobaction/118/skill/0/change

execute if entity @e[tag=118_0_selected--,limit=1] as @e[tag=118_0_selected--] run tag @s remove 118_0_selected--