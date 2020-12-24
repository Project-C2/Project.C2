scoreboard players operation #110- playerNumber = @s playerNumber
execute if score @s counter matches 19..38 if entity @s[tag=110missileR] if entity @e[tag=Battle,team=!Red,distance=..3] as @a if score @s playerNumber = #110- playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.3
execute if score @s counter matches 19..38 if entity @s[tag=110missileB] if entity @e[tag=Battle,team=!Blue,distance=..3] as @a if score @s playerNumber = #110- playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.3
execute if score @s counter matches 39..58 if entity @s[tag=110missileR] if entity @e[tag=Battle,team=!Red,distance=..3] as @a if score @s playerNumber = #110- playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.6
execute if score @s counter matches 39..58 if entity @s[tag=110missileB] if entity @e[tag=Battle,team=!Blue,distance=..3] as @a if score @s playerNumber = #110- playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.6
execute if score @s counter matches 59.. if entity @s[tag=110missileR] if entity @e[tag=Battle,team=!Red,distance=..3] as @a if score @s playerNumber = #110- playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.9
execute if score @s counter matches 59.. if entity @s[tag=110missileB] if entity @e[tag=Battle,team=!Blue,distance=..3] as @a if score @s playerNumber = #110- playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.9
scoreboard players reset #110- playerNumber
execute if score @s counter matches ..18 run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:1,Fuse:0s,Invulnerable:1b,Tags:["this"]}
execute if score @s counter matches 19.. run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:2,Fuse:0s,Invulnerable:1b,Tags:["this"]}
execute if score @s counter matches 39.. run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:3,Fuse:0s,Invulnerable:1b,Tags:["this"]}
execute if score @s counter matches 59.. run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:4,Fuse:0s,Invulnerable:1b,Tags:["this"]}
tp @e[tag=this] ^ ^ ^-0.5
execute if score @s counter matches 39.. run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
scoreboard players set @s counter 81