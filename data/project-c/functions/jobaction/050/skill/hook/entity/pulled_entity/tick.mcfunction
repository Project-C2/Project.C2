
# フックをひっつける
    tp @e[type=bat,tag=this,sort=nearest,limit=1] @s

# 同スコアのプレイヤーがスニークしてるとそっちに移動
    execute as @a[predicate=project-c:sneak] at @e[tag=H.Hook_PulledEntity] if score @s H.Hook_ID.Player = @e[tag=H.Hook_PulledEntity,limit=1,sort=nearest] H.Hook_ID.Entity facing entity @s feet unless entity @s[distance=..5] as @e[tag=H.Hook_PulledEntity,limit=1,sort=nearest] run function project-c:jobaction/050/skill/hook/entity/pulled_entity/move

# 死んだらフック外れる
    tag @e[type=bat,tag=this,sort=nearest,limit=1] remove H.Hook_HookNoPoint