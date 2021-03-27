
# スニーク中のみ引き寄せ
    execute at @a if score @s H.Hook_ID.Entity = @p H.Hook_ID.Player run function project-c:jobaction/050/skill/hook/entity/hook_point/pull

# 現在のブロックがなくなったら外れる
    execute at @s[tag=!H.Hook_HookHeavy] anchored eyes if block ^ ^ ^0.25 #hyper_hook:no_collision run function project-c:jobaction/050/skill/hook/entity/hook/break

# 持ち主が遠くに行ったら外れる
    execute at @a[distance=80..] if score @s H.Hook_ID.Entity = @p H.Hook_ID.Player run function project-c:jobaction/050/skill/hook/entity/hook/break

# パーティクル
    particle crit ~ ~0.5 ~ 0 0 0 0 1 force

# 重いエンティティに対してID一致でtick実行
    tag @s add this
    execute if entity @s[tag=H.Hook_HookHeavy] run tag @s add H.Hook_HookNoPoint
    execute if entity @s[tag=H.Hook_HookHeavy] as @e[tag=H.Hook_HeavyEntity] if score @e[tag=this,limit=1] H.Hook_ID.Entity = @s H.Hook_ID.Entity run function project-c:jobaction/050/skill/hook/entity/heavy_entity/tick
    execute if entity @s[tag=H.Hook_HookNoPoint] run function project-c:jobaction/050/skill/hook/entity/hook/break
    tag @s remove this
