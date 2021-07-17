playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 2 1
effect give @s minecraft:resistance 1 4
summon creeper ~ ~ ~ {CustomName:'{"text":"ストライク・エア","color":"white","bold":true}',ignited:1b,ExplosionRadius:3b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}
execute as @e[distance=..6,tag=Battle] run tag @s add hit
scoreboard players operation @e[tag=hit] hurtByNumber = @s playerNumber
scoreboard players set @e[tag=hit] hurtSkillNumber 2
scoreboard players reset @s counter_1
