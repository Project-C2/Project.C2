execute if entity @s[team=RedDummy] run effect give @e[tag=Battle,team=Red,distance=..4] resistance 1 3
execute if entity @s[team=BlueDummy] run effect give @e[tag=Battle,team=Blue,distance=..4] resistance 1 3

execute if entity @s[team=RedDummy] as @e[tag=Battle,team=!Red,nbt=!{HurtTime:0s},nbt={ActiveEffects:[{Id:24b}]}] run tag @s add hit
execute if entity @s[team=BlueDummy] as @e[tag=Battle,team=!Blue,nbt=!{HurtTime:0s},nbt={ActiveEffects:[{Id:24b}]}] run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] positioned as @s run function project-c:jobaction/097/skill/2/4-hit
kill @s