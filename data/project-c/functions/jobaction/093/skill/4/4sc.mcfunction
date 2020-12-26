scoreboard players add @e[tag=093_4wave] counter 1
execute if entity @e[tag=093_4wave,scores={counter=100..},limit=1] run kill @e[tag=093_4wave,scores={counter=100..}]
execute as @e[tag=093_4wave,tag=!093_4wave_onGround,nbt={OnGround:1b}] at @s run function project-c:jobaction/093/skill/4/4
execute at @e[tag=093_4wave_onGround] run particle dust 0.4 0.7 1 1 ~ ~ ~ 1 1 1 1 3 normal @a
execute at @e[tag=093_4wave_onGround] if entity @e[distance=..3,tag=Battle,limit=1] run effect give @e[distance=..3,tag=Battle] slowness 4 4
execute if entity @e[tag=093_4wave,limit=1] run schedule function project-c:jobaction/093/skill/4/4sc 1t replace


