
# 使用
    execute if entity @s[tag=!H.Hook_NoUse,scores={H.Hook_Use=0..,usedSkill=1}] run function project-c:jobaction/050/skill/hook/item/hyper_hookshot/shot
    
# 解除
    execute if entity @s[tag=H.Hook_NoUse,scores={H.Hook_Use=0..}] run function project-c:jobaction/050/skill/hook/item/hyper_hookshot/clear_hook
