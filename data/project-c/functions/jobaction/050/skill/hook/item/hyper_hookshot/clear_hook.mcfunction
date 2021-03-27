
# 最寄のウキに さよならバイバイ
    kill @e[type=fishing_bobber,limit=1,sort=nearest]

# フックを消す
    execute if entity @e[type=bat,tag=H.Hook_Hook,limit=1] at @e[type=bat,tag=H.Hook_Hook] if score @s H.Hook_ID.Player = @e[type=bat,tag=H.Hook_Hook,sort=nearest,limit=1] H.Hook_ID.Entity as @e[type=bat,tag=H.Hook_Hook,sort=nearest,limit=1] run function project-c:jobaction/050/skill/hook/entity/hook/break

# スコアリセット
    scoreboard players reset @s[scores={H.Hook_Death=0..}] H.Hook_Death