summon creeper ~ -20 ~ {Fuse:0,ExplosionRadius:1,PersistenceRequired:1b,Invulnerable:1b,Tags:["this"]}
scoreboard players remove @s counter_4 1
execute if entity @s[scores={counter_4=0..}] run function project-c:jobaction/116/skill/3/summon
