execute if entity @s[tag=023-20] run function project-c:jobaction/023/skill/2/2-0
execute if entity @s[tag=023-21] run function project-c:jobaction/023/skill/2/2-1
execute if entity @s[tag=023-22] run function project-c:jobaction/023/skill/2/2-2
execute if entity @s[tag=023-23] run function project-c:jobaction/023/skill/2/2-3
execute if entity @s[tag=023-24] run function project-c:jobaction/023/skill/2/2-4
execute if entity @e[tag=023-n-Animation] if entity @s[team=RedDummy] run team join RedDummy @e[tag=023-n-Animation]
execute if entity @e[tag=023-n-Animation] if entity @s[team=BlueDummy] run team join BlueDummy @e[tag=023-n-Animation]
execute if entity @e[tag=023-n-Animation] run scoreboard players operation @e[tag=023-n-Animation,limit=1] playerNumber = @s playerNumber
tag @e[tag=023-n-Animation] remove 023-n-Animation
kill @s[tag=!023-7-21]