execute store result score #039-dummy counter run data get entity @s Health 10
execute store result score #039-dummy counter_1 run data get entity @s AbsorptionAmount 10
execute if score #039-dummy counter_1 matches 1.. run scoreboard players operation #039-dummy counter += #039-dummy counter_1
tp @s ~ ~ ~
tp @s @s
execute if score #039-dummy counter matches ..59 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["039trast_AEC"],CustomName:'{"text":"トランス"}',Radius:1.1f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 60..95 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["039trast_AEC"],CustomName:'{"text":"トランス"}',Radius:1.1f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 96..119 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["039trast_AEC"],CustomName:'{"text":"トランス"}',Radius:1.1f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 120..143 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["039trast_AEC"],CustomName:'{"text":"トランス"}',Radius:1.1f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:2b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 144..191 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["039trast_AEC"],CustomName:'{"text":"トランス"}',Radius:1.1f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:2b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 192..239 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["039trast_AEC"],CustomName:'{"text":"トランス"}',Radius:1.1f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:2b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 240..317 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["039trast_AEC"],CustomName:'{"text":"トランス"}',Radius:1.1f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:3b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 318..383 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["039trast_AEC"],CustomName:'{"text":"トランス"}',Radius:1.1f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:3b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 384.. run summon area_effect_cloud ~ ~0.5 ~ {Tags:["039trast_AEC"],CustomName:'{"text":"トランス"}',Radius:1.1f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:3b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 60..191 run tag @s add 039trans_haste_0
execute if score #039-dummy counter matches 96..317 run tag @s add 039trans_speed_0
execute if score #039-dummy counter matches 144.. run tag @s add 039trans_resistance_0
execute if score #039-dummy counter matches 192.. run tag @s add 039trans_haste_1
execute if score #039-dummy counter matches 240.. run tag @s add 039trans_strength_0
execute if score #039-dummy counter matches 318.. run tag @s add 039trans_speed_1
schedule function project-c:jobaction/039/skill/3/schedule 1t replace