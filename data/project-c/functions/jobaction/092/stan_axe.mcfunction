execute if entity @s[team=Red] anchored eyes positioned ^ ^ ^2 as @e[team=!Red,tag=Battle,nbt={HurtTime:10s},limit=1,sort=nearest,distance=..3.5] run tag @s add 092taken
execute if entity @s[team=Blue] anchored eyes positioned ^ ^ ^2 as @e[team=!Blue,tag=Battle,nbt={HurtTime:10s},limit=1,sort=nearest,distance=..3.5] run tag @s add 092taken
scoreboard players set @e[tag=092taken] stanTime 21
execute at @e[tag=092taken] run particle minecraft:ash ~ ~1 ~ 0.8 1.2 0.8 1 400 normal @a
execute at @e[tag=092taken] run particle block netherite_block ~ ~1 ~ 1 1 1 1 50 force @a
execute at @e[tag=092taken] run particle explosion ~ ~1 ~ 0.1 0.1 0.1 1 3 force @a
execute at @e[tag=092taken] run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.8 0.8
data merge block -113 2 -122 {auto:1b}




tag @e[tag=092taken] remove 092taken
advancement revoke @s only project-c:wanco_job/092/stan_axe