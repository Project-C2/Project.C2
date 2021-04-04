scoreboard players set @s counter_1 0

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1

execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["128-Whirlwind","128-WhirlwindR"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["128-Whirlwind","128-WhirlwindB"],Marker:1b}

teleport @e[limit=1,sort=nearest,tag=128-Whirlwind] ^ ^1.5 ^ ~90 ~

execute as @e[tag=128-Whirlwind] at @s run function project-c:jobaction/128/skill/1/2