
# 動作わけ
    execute if entity @s[tag=H.Hook_HookMove] run function project-c:jobaction/050/skill/hook/entity/hook/move
    execute if entity @s[tag=H.Hook_HookStop] run function project-c:jobaction/050/skill/hook/entity/hook/point
    execute if entity @s[tag=H.Hook_HookPull] run function project-c:jobaction/050/skill/hook/entity/hook/pull_entity

# 射出者にはフックを撃てなくなってもらう
    tag @s add this
    execute as @a if score @e[tag=this,limit=1] H.Hook_ID.Entity = @s H.Hook_ID.Player run tag @s add H.Hook_NoUse
    tag @s remove this

# ロープが外れたら消える
    execute unless data entity @s Leash.UUID run function project-c:jobaction/050/skill/hook/entity/hook/break_rope
