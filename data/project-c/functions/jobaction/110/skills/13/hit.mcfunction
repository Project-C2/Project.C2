tag @s add it
execute as @a[tag=mana_gun_user] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.6 0.5
tag @s remove it
summon area_effect_cloud ~ ~0.3 ~ {CustomName:'{"text":"魔弾銃","color":"dark_purple"}',Particle:"enchanted_hit",Radius:0.67f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
tag @e[tag=hit] remove hit
function project-c:jobaction/110/skills/13/end