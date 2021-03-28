
# パーティクル
    execute at @s run particle crit ~ ~ ~ 0 0 0 0 1 force

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={H.Hook_Recursion=1..,H.Hook_Range=1..}] run scoreboard players set @s H.Hook_Recursion 30

# 前進
    execute if entity @s[scores={H.Hook_Recursion=1..,H.Hook_Range=1..}] run tp @s ^ ^ ^0.25 ~ ~

# スコア減算
    scoreboard players remove @s H.Hook_Recursion 1
    scoreboard players remove @s H.Hook_Range 1

# プレイヤーの衝突判定
    tag @s add this
    execute as @a if score @e[tag=this,limit=1] H.Hook_ID.Entity = @s H.Hook_ID.Player run tag @s add H.Hook_NoHit
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.4 ~0.0 ~0.4 if entity @e[tag=!H.Hook_NoHit,type=!bat,dx=0,sort=nearest,limit=1] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.4 ~-0.4 ~-0.4 if entity @e[tag=!H.Hook_NoHit,type=!bat,dx=0,sort=nearest,limit=1] run function project-c:jobaction/050/skill/hook/entity/hook/entity_check
    tag @s remove this
    tag @a[tag=H.Hook_NoHit] remove H.Hook_NoHit

# 壁の衝突判定
    execute at @s anchored eyes unless block ^ ^ ^0.25 #project-c:no_collision run function project-c:jobaction/050/skill/hook/entity/hook/hit
    
# 再帰
    execute at @s if entity @s[scores={H.Hook_Recursion=1..,H.Hook_Range=1..}] run function project-c:jobaction/050/skill/hook/entity/hook/move

# キル
    execute if entity @s[scores={H.Hook_Range=0}] run function project-c:jobaction/050/skill/hook/entity/hook/break