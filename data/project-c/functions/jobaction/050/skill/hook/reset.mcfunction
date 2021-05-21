
# Chuz_Vector0をリセット
    kill @e[type=area_effect_cloud,tag=Chuz_Vector0]
    forceload add 0 0 0 0
    execute unless entity @e[type=area_effect_cloud,tag=Chuz_Vector0] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["Chuz_Vector0"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}