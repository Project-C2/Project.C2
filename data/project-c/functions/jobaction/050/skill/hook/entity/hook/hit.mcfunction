
# 壁に接触
    scoreboard players set @s H.Hook_Recursion 0
    tag @s add H.Hook_HookStop
    tag @s remove H.Hook_HookMove

# パーティクル
    particle crit ~ ~ ~ 0 0 0 0.5 10 force

# サウンド
    tag @s add this
    execute as @a if score @e[tag=this,limit=1] H.Hook_ID.Entity = @s H.Hook_ID.Player at @s run function project-c:jobaction/050/skill/hook/entity/hook/hit_sound
    tag @s remove this