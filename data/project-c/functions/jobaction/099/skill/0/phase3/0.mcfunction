
scoreboard players set @s counter 100

execute if entity @s[team=Red] as @e[team=!Red,distance=..5,limit=1,nbt={HurtTime:10s},tag=Battle] at @s run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a
execute if entity @s[team=Blue] as @e[team=!Blue,distance=..5,limit=1,nbt={HurtTime:10s},tag=Battle] at @s run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a

function project-c:jobaction/099/replaceitem/0-1

playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 0.8
