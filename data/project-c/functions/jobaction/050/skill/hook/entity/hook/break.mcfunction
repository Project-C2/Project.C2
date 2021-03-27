# サウンド
    tag @s add this
    execute as @a if score @e[tag=this,limit=1] H.Hook_ID.Entity = @s H.Hook_ID.Player at @s run function project-c:jobaction/050/skill/hook/entity/hook/break_sound
    tag @s remove this

# パーティクル
    particle smoke ~ ~ ~ 0 0 0 0.05 25 force

# なにかにヒットさせてたらそいつのスコアを消す
    tag @s add this
    execute if entity @s[tag=H.Hook_HookPull] as @e[tag=H.Hook_PulledEntity] if score @e[tag=this,limit=1] H.Hook_ID.Entity = @s H.Hook_ID.Entity run function project-c:jobaction/050/skill/hook/entity/pulled_entity/break_pull
    execute if entity @s[tag=H.Hook_HookHeavy] as @e[tag=H.Hook_HeavyEntity] if score @e[tag=this,limit=1] H.Hook_ID.Entity = @s H.Hook_ID.Entity run function project-c:jobaction/050/skill/hook/entity/pulled_entity/break_pull
    tag @s remove this

# 戻ってくるモードになる
    scoreboard players reset @s H.Hook_Range
    tag @s remove H.Hook_Hook
    tag @s remove H.Hook_HookMove
    tag @s add H.Hook_HookReturn