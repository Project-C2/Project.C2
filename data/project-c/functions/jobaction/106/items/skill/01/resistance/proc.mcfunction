#スキル6


scoreboard players operation #106- playerNumber = @s playerNumber
execute as @a[tag=Battle] if score @s playerNumber = #106- playerNumber run tag @s add 106-skill01-owner

execute if entity @a[tag=106-skill01-owner,gamemode=!spectator,limit=1] at @a[tag=106-skill01-owner,gamemode=!spectator] run particle block prismarine ~ ~1 ~ 0.2 0.3 0.2 0 1 force @a

execute if entity @a[tag=106-skill01-owner,nbt={HurtTime:10s},limit=1] as @a[tag=106-skill01-owner,nbt={HurtTime:10s}] run effect clear @s resistance
execute if entity @a[tag=106-skill01-owner,nbt={HurtTime:10s},limit=1] run kill @s


execute if entity @a[tag=106-skill01-owner,nbt={HurtTime:9s},limit=1] as @a[tag=106-skill01-owner,nbt={HurtTime:9s}] run effect clear @s resistance
execute if entity @a[tag=106-skill01-owner,nbt={HurtTime:9s},limit=1] run kill @s


execute if entity @a[tag=106-skill01-owner,limit=1] as @a[tag=106-skill01-owner] run tag @s remove 106-skill01-owner

scoreboard players add @s counter 1
execute if score @s counter matches 241 run kill @s


scoreboard players reset #106-