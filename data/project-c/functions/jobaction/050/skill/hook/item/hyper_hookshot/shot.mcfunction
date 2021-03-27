
# 最寄のウキに さよならバイバイ
    kill @e[type=fishing_bobber,limit=1,sort=nearest]

# 音
    tag @s add H.Hook_This

# フックを召喚
    execute anchored eyes positioned ^ ^ ^-0.4 run summon bat ~ ~-0.4 ~ {Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Tags:["H.Hook_HookInit"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
    execute as @e[type=bat,tag=H.Hook_HookInit] at @s run function project-c:jobaction/050/skill/hook/entity/hook/init
