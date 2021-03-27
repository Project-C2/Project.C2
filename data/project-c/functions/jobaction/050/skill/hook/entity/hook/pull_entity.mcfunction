 
# ID一致でtick実行
    tag @s add this
    tag @s add H.Hook_HookNoPoint
    execute as @e[tag=H.Hook_PulledEntity] if score @e[tag=this,limit=1] H.Hook_ID.Entity = @s H.Hook_ID.Entity run function project-c:jobaction/050/skill/hook/entity/pulled_entity/tick
    execute if entity @s[tag=H.Hook_HookNoPoint] run function project-c:jobaction/050/skill/hook/entity/hook/break
    tag @s remove this

# 持ち主が遠くに行ったら外れる
    execute at @a[distance=80..] if score @s H.Hook_ID.Entity = @p H.Hook_ID.Player run function project-c:jobaction/050/skill/hook/entity/hook/break