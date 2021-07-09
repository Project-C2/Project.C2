tag @s add 096
execute as @e[tag=096chainjump,scores={subcounter=19..20}] if score @s playerNumber = @e[tag=096,limit=1] playerNumber run tag @s add 096facing
execute as @a[tag=096chainjump_p] if score @s playerNumber = @e[tag=096,limit=1] playerNumber run tag @s add user
tag @s remove 096

#execute if entity @e[tag=096facing,limit=1] if entity @s run 
execute if entity @e[tag=096facing,limit=1] run summon minecraft:creeper ~ -10 ~ {Fuse:0,ExplosionRadius:1,Tags:["this"],Team:"RedDummy"}
execute if entity @e[tag=096facing,limit=1] at @s facing entity @e[tag=096facing] feet as @e[tag=user,limit=1] positioned as @s anchored eyes run tp @e[type=creeper,tag=this] ^ ^ ^-0.17
execute if entity @e[tag=096facing,limit=1] run tag @e[tag=this] remove this

execute if entity @s[tag=096chainFirst] run effect clear @a[tag=user] levitation
execute if entity @s[tag=096chainFirst] run effect clear @a[tag=user] slow_falling
execute if entity @s[tag=096chainFirst] run item replace entity @a[tag=user] armor.feet with minecraft:air
execute if entity @s[tag=096chainFirst] run tag @a[tag=user] remove 096chainjump_p
tag @e[tag=user] remove user
tag @e[tag=096facing] remove 096facing
kill @s
