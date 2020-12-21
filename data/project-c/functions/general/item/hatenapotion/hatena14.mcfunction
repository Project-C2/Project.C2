execute as @e[tag=HatenaPotion,team=Red] at @s run tag @e[distance=..3,gamemode=!spectator,team=Red] add GoumonSpecial
execute as @e[tag=HatenaPotion,team=Blue] at @s run tag @e[distance=..3,gamemode=!spectator,team=Blue] add GoumonSpecial
execute as @a[tag=HatenaPotion] at @s run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 1 0.7