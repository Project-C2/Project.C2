execute if entity @e[type=item,tag=!isItem,nbt={Item:{tag:{Tier:1b}}},limit=1] run tag @e[type=item,tag=!isItem,nbt={Item:{tag:{Tier:1b}}}] add Item1
execute if entity @e[type=item,tag=!isItem,nbt={Item:{tag:{Tier:2b}}},limit=1] run tag @e[type=item,tag=!isItem,nbt={Item:{tag:{Tier:2b}}}] add Item2
execute if entity @e[type=item,tag=!isItem,nbt={Item:{tag:{Tier:3b}}},limit=1] run tag @e[type=item,tag=!isItem,nbt={Item:{tag:{Tier:3b}}}] add Item3
execute if entity @e[type=item,tag=!isItem,nbt={Item:{tag:{Tier:4b}}},limit=1] run tag @e[type=item,tag=!isItem,nbt={Item:{tag:{Tier:4b}}}] add Item4
execute if entity @e[type=item,tag=!isItem,nbt={Item:{tag:{Tier:5b}}},limit=1] run tag @e[type=item,tag=!isItem,nbt={Item:{tag:{Tier:5b}}}] add Item5

execute if entity @e[type=item,tag=!isItem,nbt={Item:{tag:{isItem:1b}}},limit=1] run tag @e[type=item,tag=!isItem,nbt={Item:{tag:{isItem:1b}}}] add isItem

execute as @p[scores={drop=1..}] at @s if entity @e[distance=..1.5,tag=isItem] run scoreboard players reset @p[scores={drop=1..}] drop
execute if entity @a[scores={drop=1..},limit=1] run data merge block -75 17 -122 {auto:1b}