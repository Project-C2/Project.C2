
# パーティクル
    particle minecraft:dust 0.9 0.7 0.5 0.5 ~ ~ ~ 0 0 0 0 1

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={H.Hook_Recursion=1..}] run scoreboard players set @s H.Hook_Recursion 15

# 前進
    execute if entity @s[scores={H.Hook_Recursion=1..}] as @a at @e[type=bat,tag=H.Hook_HookReturn] if score @s H.Hook_ID.Player = @e[type=bat,tag=H.Hook_HookReturn,sort=nearest,limit=1] H.Hook_ID.Entity facing entity @s eyes run tp @e[type=bat,tag=H.Hook_HookReturn,sort=nearest,limit=1] ^ ^ ^0.25

# プレイヤーから出るまでヒット判定ナシ
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if score @s H.Hook_ID.Entity = @p[dx=0] H.Hook_ID.Player run function project-c:jobaction/050/skill/hook/entity/return_hook/break

# スコア減算
    scoreboard players remove @s H.Hook_Recursion 1

# 再帰
    execute if entity @s[scores={H.Hook_Recursion=1..}] at @s run function project-c:jobaction/050/skill/hook/entity/return_hook/tick
