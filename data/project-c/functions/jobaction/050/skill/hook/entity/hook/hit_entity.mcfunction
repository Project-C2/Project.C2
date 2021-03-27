# 壁に接触
    scoreboard players set @s H.Hook_Recursion 0
    tag @s add H.Hook_HookPull
    tag @s remove H.Hook_HookMove

# ヒットしたやつにタグ付与  
    execute as @e[tag=!H.Hook_Hook,sort=nearest,limit=1] at @s run function project-c:jobaction/050/skill/hook/entity/pulled_entity/hit

# サウンド
    tag @s add this
    execute as @a if score @e[tag=this,limit=1] H.Hook_ID.Entity = @s H.Hook_ID.Player at @s run function project-c:jobaction/050/skill/hook/entity/hook/hit_sound
    execute as @a if score @e[tag=this,limit=1] H.Hook_ID.Entity = @s H.Hook_ID.Player at @s run playsound entity.arrow.hit_player neutral @a ~ ~ ~ 2 1
    tag @s remove this