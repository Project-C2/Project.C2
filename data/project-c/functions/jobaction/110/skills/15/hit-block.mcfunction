scoreboard players operation #110- playerNumber = @s playerNumber
execute if score @s counter matches ..19 if entity @s[tag=110missileR] if entity @e[tag=Battle,team=!Red,distance=..1.2] as @a if score @s playerNumber = #110- playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.3
execute if score @s counter matches ..19 if entity @s[tag=110missileB] if entity @e[tag=Battle,team=!Blue,distance=..1.2] as @a if score @s playerNumber = #110- playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.3
execute if score @s counter matches 20..39 if entity @s[tag=110missileR] if entity @e[tag=Battle,team=!Red,distance=..3] as @a if score @s playerNumber = #110- playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.3
execute if score @s counter matches 20..39 if entity @s[tag=110missileB] if entity @e[tag=Battle,team=!Blue,distance=..3] as @a if score @s playerNumber = #110- playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.3
execute if score @s counter matches 40.. if entity @s[tag=110missileR] if entity @e[tag=Battle,team=!Red,distance=..4.5] as @a if score @s playerNumber = #110- playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.6
execute if score @s counter matches 40.. if entity @s[tag=110missileB] if entity @e[tag=Battle,team=!Blue,distance=..4.5] as @a if score @s playerNumber = #110- playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.6
scoreboard players reset #110- playerNumber
execute if score @s counter matches ..19 run summon minecraft:creeper ~ ~ ~ {CustomName:'{"text":"誘導ミサイル","color":"dark_purple"}',ExplosionRadius:1,Fuse:0s,Invulnerable:1b,Tags:["this"]}
execute if score @s counter matches 20..39 run summon minecraft:creeper ~ ~ ~ {CustomName:'{"text":"誘導ミサイル","color":"dark_purple"}',ExplosionRadius:2,Fuse:0s,Invulnerable:1b,Tags:["this"]}
execute if score @s counter matches 40.. run summon minecraft:creeper ~ ~ ~ {CustomName:'{"text":"誘導ミサイル","color":"dark_purple"}',ExplosionRadius:3,Fuse:0s,Invulnerable:1b,Tags:["this"]}
tp @e[tag=this] ^ ^ ^-0.66
execute if score @s counter matches 40.. run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
execute if score @s counter matches 40.. run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.8
scoreboard players set @s counter 81