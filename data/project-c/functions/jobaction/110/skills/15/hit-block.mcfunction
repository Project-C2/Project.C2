scoreboard players operation #110- playerNumber = @s playerNumber
execute if score @s counter matches 13.. if entity @s[tag=110missileR] if entity @e[tag=Battle,team=!Red,distance=..3] as @a if score @s playerNumber = #110- playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.5
execute if score @s counter matches 13.. if entity @s[tag=110missileB] if entity @e[tag=Battle,team=!Blue,distance=..3] as @a if score @s playerNumber = #110- playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.5
scoreboard players reset #110- playerNumber
execute if score @s counter matches ..12 run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:1,Fuse:0s,Invulnerable:1b,Tags:["this"]}
execute if score @s counter matches 13.. run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:2,Fuse:0s,Invulnerable:1b,Tags:["this"]}
tp @e[tag=this] ^ ^ ^-0.5
execute if score @s counter matches 13.. run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
scoreboard players set @s counter 81