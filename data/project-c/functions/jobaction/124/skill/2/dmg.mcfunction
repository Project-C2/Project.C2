attribute @s minecraft:generic.knockback_resistance modifier add 0-0-124-0-124 "job124_kb_resist" 1 add
tag @s add 124_kb_sc
schedule function project-c:jobaction/124/skill/2/schedule 2t replace

execute if entity @s[type=!#project-c:neac/undead] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {CustomName:'{"text":"風神の詩","color":"#47bb6e"}',Tags:["124dmgAEC"],Particle:"dust 0 0 0 0",Duration:5,Age:4,WaitTime:1,Radius:0.5f,Effects:[{Id:11b,Amplifier:1b,Duration:1},{Id:7b,Amplifier:0b,Duration:1,ShowIcon:0b,ShowParticles:0b},{Id:25b,Amplifier:0b,Duration:11,ShowIcon:0b,ShowParticles:0b}]}
execute unless entity @s[type=!#project-c:neac/undead] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {CustomName:'{"text":"風神の詩","color":"#47bb6e"}',Tags:["124dmgAEC"],Particle:"dust 0 0 0 0",Duration:5,Age:4,WaitTime:1,Radius:0.5f,Effects:[{Id:11b,Amplifier:1b,Duration:1},{Id:6b,Amplifier:0b,Duration:1,ShowIcon:0b,ShowParticles:0b},{Id:25b,Amplifier:0b,Duration:11,ShowIcon:0b,ShowParticles:0b}]}
data modify entity @e[tag=124dmgAEC,limit=1,sort=nearest] Owner set from entity @e[tag=it,limit=1] Owner
tag @e[tag=124dmgAEC] remove 124dmgAEC
