particle minecraft:block purple_wool ~ ~1 ~ 0.5 0.5 0.5 0 4 force
effect give @s slowness 1 1
scoreboard players remove @s 094-void 1

execute if entity @s[nbt={HurtTime:9s}] run tag @s add 094-ignite

execute if entity @s[tag=094-ignite] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 0 force
execute if entity @s[tag=094-ignite] run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0
execute if entity @s[tag=094-ignite] run effect give @s instant_damage 1 1
execute if entity @s[tag=094-ignite] run tag @e[scores={094-void=1..},distance=1..8] add 094-ignite


execute if entity @s[tag=094-ignite] run scoreboard players reset @s 094-void
execute if entity @s[tag=094-ignite] run tag @s remove 094-ignite


effect clear @s[scores={094-void=0}] slowness