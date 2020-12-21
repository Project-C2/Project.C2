tag @e[type=item,nbt={Item:{tag:{isItem:1b}}}] add isItem

tag @e[type=item,nbt={Item:{tag:{Tier:1b}}}] add Item1
tag @e[type=item,nbt={Item:{tag:{Tier:2b}}}] add Item2
tag @e[type=item,nbt={Item:{tag:{Tier:3b}}}] add Item3
tag @e[type=item,nbt={Item:{tag:{Tier:4b}}}] add Item4
tag @e[type=item,nbt={Item:{tag:{Tier:5b}}}] add Item5

execute as @p[scores={drop=1..}] at @s if entity @e[distance=..1.5,tag=isItem] run scoreboard players reset @p[scores={drop=1..}] drop
execute as @p[scores={drop=1..}] at @s run data merge block -75 17 -122 {auto:1b}