scoreboard players set @s CT1 980
replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 11

scoreboard players set @s Mana 1

tp @s @s
#effect give @s minecraft:levitation 1 12 true
effect give @s minecraft:resistance 1 4 true
summon minecraft:creeper ~ -10 ~ {ExplosionRadius:1,Fuse:0,NoAI:1b,Invulnerable:1b,Tags:["this"]}
execute rotated ~ 0 anchored eyes positioned ^ ^ ^-0.02 run tp @e[tag=this,limit=1,type=creeper] ~ ~-1.15 ~ 
tag @e[tag=this] remove this
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.5 500 normal @a
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.5 100 force @a
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 2 0.8
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 2 0.8
playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 2 0.5


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
