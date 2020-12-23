execute if entity @s[nbt={HurtTime:9s}] run tag @s add relic12damaged
execute if entity @s[tag=relic12damaged] run effect give @s minecraft:instant_damage 1 0
execute if entity @s[tag=relic12damaged] run particle minecraft:dust 1 0 0 3 ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[distance=1..]
execute if entity @s[tag=relic12damaged] run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 2 0
execute if entity @s[tag=relic12damaged] run tag @s remove relic12damaged

execute if entity @s[scores={jobNumber=27,Mana=..160}] run scoreboard players add @s Mana 1
execute if entity @s[scores={jobNumber=28,counter_1=..1}] run scoreboard players add @s counter 1
execute if entity @s[scores={jobNumber=7,counter_1=..1}] run scoreboard players add @s counter 1

