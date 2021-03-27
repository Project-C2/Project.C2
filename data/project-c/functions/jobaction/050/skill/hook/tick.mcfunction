
# スコアID
    execute unless entity @a[scores={H.Hook_ID.Player=0..},limit=1] as @a unless score @s H.Hook_ID.Player matches 0.. run function project-c:jobaction/050/skill/hook/score_id/player_score_id

# フック使えないタグ
    tag @a[tag=H.Hook_NoUse] remove H.Hook_NoUse
    tag @a[tag=H.Hook_NoMove] remove H.Hook_NoMove

# フック
    execute as @e[type=bat,tag=H.Hook_Hook] at @s run function project-c:jobaction/050/skill/hook/entity/hook/tick

# 戻ってくるフック
    execute as @e[type=bat,tag=H.Hook_HookReturn] at @s run function project-c:jobaction/050/skill/hook/entity/return_hook/tick

# ストレージ
    execute as @a at @s run function project-c:jobaction/050/skill/hook/storage

# スコアボードリセット、タグ消去(最後の行)
    scoreboard players reset @a[scores={FloatUse=1..}] FloatUse
    scoreboard players reset @a[scores={H.Hook_Use=1..}] H.Hook_Use
    scoreboard players set @a[nbt={OnGround:1b}] FloatFuel 0
    tag @e[tag=NeoHookFacing] remove NeoHookFacing
    tag @a[tag=Hold_NeoHook] remove Hold_NeoHook