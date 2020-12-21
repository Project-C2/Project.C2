scoreboard players operation #job99_hold counter = @s playerNumber
execute if entity @e[tag=099-S2-area-ed,limit=1] as @e[tag=099-S2-area-ed] if score @s 099-S2-APN = #job99_hold counter run tag @s add 099-S2-area-ed-end

execute if entity @e[tag=099-S2-area-ed-end,limit=1] as @e[tag=099-S2-area-ed-end] run scoreboard players reset @s 099-S2-APN
execute if entity @e[tag=099-S2-area-ed-end,limit=1] as @e[tag=099-S2-area-ed-end] run tag @s remove 099-S2-area-ed
execute if entity @e[tag=099-S2-area-ed-end,limit=1] as @e[tag=099-S2-area-ed-end] run tag @s remove 099-S2-area-ed-end

kill @s