scoreboard players set @s CT2 900
replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 15
scoreboard players set @s counter_1 100

summon minecraft:creeper ~ -10 ~ {Tags:["this"],ExplosionRadius:1,Fuse:0,PersistenceRequired:1b,Invulnerable:1b}
summon minecraft:creeper ~ -10 ~ {Tags:["this"],ExplosionRadius:1,Fuse:0,PersistenceRequired:1b,Invulnerable:1b}
summon minecraft:creeper ~ -10 ~ {Tags:["this"],ExplosionRadius:1,Fuse:0,PersistenceRequired:1b,Invulnerable:1b}
execute anchored eyes positioned ^ ^-0.05 ^0.3 run tp @e[tag=this] ~ ~ ~
tag @e[tag=this] remove this
tp @s @s

#playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1
#playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.2
particle minecraft:cloud ^ ^1 ^-1 0.1 0.1 0.1 0.5 400 normal @a
particle minecraft:cloud ^ ^1 ^-1 0.1 0.1 0.1 0.5 100 force @a

playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.5 1.4
particle minecraft:witch ~ ~1 ~ 0.05 6 0.05 1 400 normal @a
particle minecraft:witch ~ ~1 ~ 0 3 0 1 100 force @a
particle minecraft:witch ~ ~0.1 ~ 4 0.05 4 1 400 normal @a
particle minecraft:witch ~ ~0.1 ~ 2 0 2 1 100 force @a

effect give @s minecraft:levitation 1 0
replaceitem entity @s armor.feet minecraft:chainmail_boots{Enchantments:[{id:"binding_curse",lvl:1s},{id:"blast_protection",lvl:10s}],AttributeModifiers:[{}]}
tag @s add 096backstep
schedule function project-c:jobaction/096/skill/2/0- 1t replace
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2