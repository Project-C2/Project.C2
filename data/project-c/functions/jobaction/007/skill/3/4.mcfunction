scoreboard players add @s counter 1


execute if entity @s[scores={counter=3}] run summon minecraft:lightning_bolt ~ ~ ~

execute if entity @s[scores={counter=8}] run summon minecraft:lightning_bolt ~3 ~ ~
execute if entity @s[scores={counter=8}] run summon minecraft:lightning_bolt ~-3 ~ ~
execute if entity @s[scores={counter=8}] run summon minecraft:lightning_bolt ~ ~ ~3
execute if entity @s[scores={counter=8}] run summon minecraft:lightning_bolt ~ ~ ~-3

execute if entity @s[tag=Charge2,scores={counter=9}] run summon minecraft:lightning_bolt ~4 ~ ~
execute if entity @s[tag=Charge2,scores={counter=9}] run summon minecraft:lightning_bolt ~-4 ~ ~
execute if entity @s[tag=Charge2,scores={counter=9}] run summon minecraft:lightning_bolt ~ ~ ~4
execute if entity @s[tag=Charge2,scores={counter=9}] run summon minecraft:lightning_bolt ~ ~ ~-4

execute if entity @s[tag=Charge2,scores={counter=10}] run summon minecraft:lightning_bolt ~5 ~ ~
execute if entity @s[tag=Charge2,scores={counter=10}] run summon minecraft:lightning_bolt ~-5 ~ ~
execute if entity @s[tag=Charge2,scores={counter=10}] run summon minecraft:lightning_bolt ~ ~ ~5
execute if entity @s[tag=Charge2,scores={counter=10}] run summon minecraft:lightning_bolt ~ ~ ~-5

execute if entity @s[tag=Charge2,scores={counter=11}] run summon minecraft:lightning_bolt ~6 ~ ~
execute if entity @s[tag=Charge2,scores={counter=11}] run summon minecraft:lightning_bolt ~-6 ~ ~
execute if entity @s[tag=Charge2,scores={counter=11}] run summon minecraft:lightning_bolt ~ ~ ~6
execute if entity @s[tag=Charge2,scores={counter=11}] run summon minecraft:lightning_bolt ~ ~ ~-6

execute if entity @s[tag=Charge2,scores={counter=12}] run summon minecraft:lightning_bolt ~7 ~ ~
execute if entity @s[tag=Charge2,scores={counter=12}] run summon minecraft:lightning_bolt ~-7 ~ ~
execute if entity @s[tag=Charge2,scores={counter=12}] run summon minecraft:lightning_bolt ~ ~ ~7
execute if entity @s[tag=Charge2,scores={counter=12}] run summon minecraft:lightning_bolt ~ ~ ~-7


execute if entity @s[tag=Charge1,scores={counter=8..}] run kill @s
execute if entity @s[tag=Charge2,scores={counter=12..}] run kill @s