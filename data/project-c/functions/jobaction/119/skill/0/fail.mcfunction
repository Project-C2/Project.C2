scoreboard players operation #119- playerNumber = @s playerNumber
execute if entity @e[tag=119flower,limit=1] as @e[tag=119flower] if score @s playerNumber = #119- playerNumber run tag @s add 119glowing
execute if entity @e[tag=119glowing,limit=1] as @e[tag=119glowing] run data merge entity @s {Glowing:1b}
execute if entity @e[tag=119glowing,limit=1] run scoreboard players set @e[tag=119glowing] subcounter 11
tag @e[tag=119glowing] remove 119glowing

title @s actionbar {"text":"≪前方に花びらがありません≫","color":"#ff0000","bold":true,"underlined":true}
playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2
