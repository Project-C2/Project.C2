
# 当たったエンティティが重いかどうか
    execute if entity @e[tag=!H.Hook_NoHit,type=!bat,dx=0,type=!#project-c:heavy,sort=nearest,limit=1] at @s run function project-c:jobaction/050/skill/hook/entity/hook/hit_entity
    execute if entity @e[dx=0,type=#project-c:heavy,sort=nearest,limit=1] at @s run function project-c:jobaction/050/skill/hook/entity/hook/hit_entity_heavy