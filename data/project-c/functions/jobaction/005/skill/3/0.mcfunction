scoreboard players set @s CT3 600


playsound minecraft:block.dispenser.fail master @a ~ ~ ~ 1 1.2
particle block minecraft:emerald_block ~ ~1 ~ 0 0 0 1 20 normal @a

execute if entity @s[team=Red] run summon creeper ~ ~ ~ {CustomName:'{"text":"スーパーボム"}',ignited:1b,ExplosionRadius:2b,Fuse:200s,Invulnerable:0b,NoAI:1b,Silent:1b,powered:1b,Team:"Red",Tags:["Bomb","BombSetB"]}
execute if entity @s[team=Blue] run summon creeper ~ ~ ~ {CustomName:'{"text":"スーパーボム"}',ignited:1b,ExplosionRadius:2b,Fuse:200s,Invulnerable:0b,NoAI:1b,Silent:1b,powered:1b,Team:"Blue",Tags:["Bomb","BombSetB"]}

scoreboard players operation @e[tag=BombSetB,sort=nearest,limit=1] playerNumber = @s playerNumber
tag @e[tag=BombSetB,sort=nearest,limit=1] remove BombSetB

scoreboard players set @s counter_1 8
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3