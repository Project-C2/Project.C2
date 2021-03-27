# サウンド
    tag @s add this
    execute as @a if score @e[tag=this,limit=1] H.Hook_ID.Entity = @s H.Hook_ID.Player at @s run function project-c:jobaction/050/skill/hook/entity/hook/break_sound
    tag @s remove this

# パーティクル
    particle smoke ~ ~ ~ 0 0 0 0.05 25 force

# アイテムを削除
    kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:lead",Count:1b}}]

# 戻ってくるモードになる
    scoreboard players reset @s H.Hook_Range
    tag @s remove H.Hook_Hook
    tag @s remove H.Hook_HookMove
    tag @s add H.Hook_HookReturn