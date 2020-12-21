scoreboard players add @s counter 1
execute if entity @s[scores={counter=..40}] run teleport @s ~ ~0.2 ~ ~18 ~
particle minecraft:dust 0 0 0 0.8 ^ ^ ^3 0.8 0.8 0.8 0 64 force

execute if entity @s[scores={counter=40}] run playsound minecraft:entity.fishing_bobber.splash master @a ~ ~ ~ 1 2
execute if entity @s[scores={counter=40}] run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1.5 0
execute if entity @s[scores={counter=40}] run summon minecraft:firework_rocket ~ ~ ~ {Silent:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[16711680,9830400],FadeColors:[11534336]}]}}}}
execute if entity @s[scores={counter=40}] run effect give @e[distance=..11] minecraft:wither 6 0
execute if entity @s[scores={counter=40}] run kill @s