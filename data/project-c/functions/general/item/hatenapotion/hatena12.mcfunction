execute as @e[tag=HatenaPotion,team=Red] at @s run effect give @e[distance=..3,gamemode=!spectator,team=Red] minecraft:unluck 15 0
execute as @e[tag=HatenaPotion,team=Blue] at @s run effect give @e[distance=..3,gamemode=!spectator,team=Blue] minecraft:unluck 15 0
execute as @e[tag=HatenaPotion] at @s run playsound entity.villager.no master @a ~ ~ ~ 2