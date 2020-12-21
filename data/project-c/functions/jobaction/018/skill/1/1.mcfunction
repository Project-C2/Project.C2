execute if entity @s[tag=!018OnGround] if data entity @s {OnGround:1b} run tag @s add 018OnGround
scoreboard players add @s[tag=018OnGround] counter 1
execute if entity @s[tag=018OnGround,scores={counter=1}] run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 2 0.5
execute if entity @s[tag=018OnGround,scores={counter=1}] run particle minecraft:cloud ~ ~ ~ 1.3 0 1.3 0 100 normal @a
execute if entity @s[tag=018OnGround,scores={counter=1}] run particle minecraft:cloud ~ ~ ~ 1.3 0 1.3 0 30 force @a
execute if entity @s[tag=018OnGround,scores={counter=13..}] run summon creeper ~ ~ ~ {CustomName:'{"text":"???「ｺｹｺｯｺｰ！」"}',ExplosionRadius:2b,Fuse:0s}
execute if entity @s[tag=018OnGround,scores={counter=13..}] run kill @s