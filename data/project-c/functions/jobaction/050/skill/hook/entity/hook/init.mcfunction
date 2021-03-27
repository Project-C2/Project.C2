
# フックの設定
    data modify entity @s Rotation set from entity @p[tag=H.Hook_This] Rotation
    #tp @s ~ ~-0.15 ~
    tag @s add H.Hook_Hook
    tag @s add H.Hook_HookMove
    tag @s remove H.Hook_HookInit
    #scoreboard players set @s H.Hook.Speed 20
    scoreboard players set @s H.Hook_Range 200

# 紐つける
    data modify entity @s Leash.UUID set from entity @p[tag=H.Hook_This] UUID

# スコアコピー
    scoreboard players operation @s H.Hook_ID.Entity = @p H.Hook_ID.Player

# 最寄りのやつのタグ消す
    tag @p[tag=H.Hook_This] remove H.Hook_This