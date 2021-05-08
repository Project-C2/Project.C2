scoreboard players set @s CT1 1000
replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 13

tp @s @s
summon minecraft:creeper ~ -10 ~ {Tags:["this"],ExplosionRadius:2,Fuse:0,PersistenceRequired:1b,Invulnerable:1b}
summon minecraft:creeper ~ -10 ~ {Tags:["this"],ExplosionRadius:2,Fuse:0,PersistenceRequired:1b,Invulnerable:1b}
summon minecraft:creeper ~ -10 ~ {Tags:["this"],ExplosionRadius:2,Fuse:0,PersistenceRequired:1b,Invulnerable:1b}
summon minecraft:creeper ~ -10 ~ {Tags:["this"],ExplosionRadius:2,Fuse:0,PersistenceRequired:1b,Invulnerable:1b}
execute anchored eyes positioned ^ ^ ^-0.3 run tp @e[tag=this] ~ ~ ~
tag @e[tag=this] remove this
tp @s @s
execute unless data entity @s {ActiveEffects:[{Id:25b}]} run tag @s add 132-1-flag
execute if entity @s[tag=132-1-flag] run effect give @s minecraft:levitation 1 0 true
effect give @s minecraft:resistance 1 4 true

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.2
particle minecraft:cloud ^ ^1 ^1 0.1 0.1 0.1 0.5 100 force @a

scoreboard players set @s counter_1 16
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1