
# 引き寄せ
    playsound minecraft:entity.fishing_bobber.retrieve player @a ~ ~ ~ 1 0.5
    execute positioned ~3 ~ ~3 unless entity @s[dx=-6,dy=200,dz=-6] unless entity @s[dx=-6,dy=-200,dz=-6] positioned ~-3 ~0 ~-3 facing entity @s eyes run summon area_effect_cloud ^ ^ ^-0.35 {Tags:["H.Hook_Slime","H.Hook_SlimeInit"],Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["H.Hook_Slime","H.Hook_SlimeInit"]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["H.Hook_Slime","H.Hook_SlimeInit"]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["H.Hook_Slime","H.Hook_SlimeInit"]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["H.Hook_Slime","H.Hook_SlimeInit"]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["H.Hook_Slime","H.Hook_SlimeInit"]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["H.Hook_Slime","H.Hook_SlimeInit"]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["H.Hook_Slime","H.Hook_SlimeInit"]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["H.Hook_Slime","H.Hook_SlimeInit"]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["H.Hook_Slime","H.Hook_SlimeInit"]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["H.Hook_Slime","H.Hook_SlimeInit"]}]}
    execute as @e[type=#hyper_hook:hookmover,tag=H.Hook_Slime] at @s run function project-c:jobaction/050/skill/hook/entity/mover/init
    #kill @e[type=#hyper_hook:hookmover,tag=H.Hook_Slime]

# パーティクル
    particle minecraft:crit ~ ~ ~ 0.15 0.15 0.15 0 1
    particle dust 0.75 0.75 0.75 1 ~ ~ ~ 0.25 0 0.25 1 5

# フック着弾ポイントとのY軸の差で上がったり下がったり
    execute at @a if score @s H.Hook_ID.Entity = @p H.Hook_ID.Player run execute store result score @p H.Hook_Y.Check run data get entity @p Pos[1] 1
    execute store result score @s H.Hook_Y.Check run data get entity @s Pos[1] 1

# 高さチェック
    execute at @a if score @s H.Hook_ID.Entity = @p H.Hook_ID.Player run scoreboard players operation @p H.Hook_Y.Check -= @s H.Hook_Y.Check

# どっちも同じ高さ
    execute unless entity @s[distance=..5] at @a[scores={H.Hook_Y.Check=-1..1}] run summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:255b,Duration:2,ShowParticles:0b}]}

# 自分のほうが低いところにいる
# 距離によって浮遊の強弱が変わる
    execute if score @s H.Hook_ID.Entity = @p H.Hook_ID.Player at @p[scores={H.Hook_Y.Check=..-2}] if block ~ ~2 ~ #hyper_hook:no_collision run function project-c:jobaction/050/skill/hook/entity/hook_point/float

# Yスコアリセット
    scoreboard players reset @a H.Hook_Y.Check
