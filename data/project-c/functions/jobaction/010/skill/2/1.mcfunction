execute if entity @s[tag=Red] run scoreboard players set @e[team=Blue,tag=Battle,distance=..2] stanTime 100
execute if entity @s[tag=Blue] run scoreboard players set @e[team=Red,tag=Battle,distance=..2] stanTime 100

execute if entity @s[tag=Red] if entity @e[team=Blue,tag=Battle,distance=..2] run data merge entity @s {Warmup:0}
execute if entity @s[tag=Blue] if entity @e[team=Red,tag=Battle,distance=..2] run data merge entity @s {Warmup:0}

execute if entity @s[tag=Red] if entity @e[team=Blue,tag=Battle,distance=..2] run data merge block -113 2 -122 {auto:1b}
execute if entity @s[tag=Blue] if entity @e[team=Red,tag=Battle,distance=..2] run data merge block -113 2 -122 {auto:1b}

tag @e[nbt={Warmup:0}] remove BearTrap