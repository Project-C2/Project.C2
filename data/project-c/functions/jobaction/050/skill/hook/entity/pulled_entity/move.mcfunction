
# 引き寄せ
    scoreboard players set @s Chuz_Speed 10
    function project-c:jobaction/050/skill/hook/move

# サウンド
    execute at @a if score @s H.Hook_ID.Entity = @p H.Hook_ID.Player run playsound minecraft:entity.fishing_bobber.retrieve player @a ~ ~ ~ 1 0.5

# フックで落下死しないように
    data modify entity @s FallDistance set value 0.0f