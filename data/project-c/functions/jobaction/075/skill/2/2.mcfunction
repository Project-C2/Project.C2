execute if entity @a[tag=075crash_CT1regen,limit=1] run tag @s add is_075crash
execute if entity @s[tag=is_075crash] as @a[tag=075crash_CT1regen] if score @s playerNumber = @e[tag=is_075crash,limit=1] playerNumber run tag @s remove 075crash_CT1regen
tag @s remove is_075crash
kill @s