#ステップ
execute if entity @s[scores={counter_4=32..,sneak=1..,subcounter=..0}] run function project-c:jobaction/109/skill/3/2
execute if entity @s[scores={subcounter=1..}] run scoreboard players remove @s subcounter 1
execute if data entity @s {Health:0f} run scoreboard players set @s counter_4 300
execute if data entity @s {Health:0f} run attribute @s minecraft:generic.knockback_resistance base set 0

scoreboard players add @s counter_4 1
execute if entity @s[scores={counter_4=2},tag=!109mamoru] run tellraw @a [{"text":"["},{"selector":"@s"},{"text":"] スターバースト……"}]
execute if entity @s[scores={counter_4=32},tag=!109mamoru] run tellraw @a [{"text":"["},{"selector":"@s"},{"text":"] ストリームッッ！！！！"}]
execute if entity @s[scores={counter_4=2},tag=109mamoru,team=Red] run tellraw @a [{"text":"["},{"selector":"@s"},{"text":"] "},{"selector":"@a[limit=1,sort=nearest,tag=!109mamoru,team=Red]"},{"text":"は！！ 俺が！！！"}]
execute if entity @s[scores={counter_4=2},tag=109mamoru,team=Blue] run tellraw @a [{"text":"["},{"selector":"@s"},{"text":"] "},{"selector":"@a[limit=1,sort=nearest,tag=!109mamoru,team=Blue]"},{"text":"は！！ 俺が！！！"}]
execute if entity @s[scores={counter_4=2},tag=109mamoru,team=!Red,team=!Blue] run tellraw @a [{"text":"["},{"selector":"@s"},{"text":"] "},{"selector":"@a[limit=1,sort=nearest,tag=!109mamoru]"},{"text":"は！！ 俺が！！！"}]
execute if entity @s[scores={counter_4=32},tag=109mamoru] run tellraw @a [{"text":"["},{"selector":"@s"},{"text":"] 守るッッ！！！！"}]
execute if entity @s[scores={counter_4=32},tag=109mamoru] run tag @s remove 109mamoru
execute if entity @s[scores={counter_4=2}] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 4 1.8
execute if entity @s[scores={counter_4=2..31}] run particle minecraft:firework ~ ~ ~ 1 1 1 0.1 20 normal @a
execute if entity @s[scores={counter_4=2..31}] run particle minecraft:firework ~ ~ ~ 1 1 1 0.1 5 force @a
execute if entity @s[scores={counter_4=32}] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 4 1.2
execute if entity @s[scores={counter_4=32}] run particle minecraft:firework ~ ~1 ~ 0 0 0 1 1000 normal @a
execute if entity @s[scores={counter_4=32}] run particle minecraft:firework ~ ~1 ~ 0 0 0 1 250 force @a
execute if entity @s[scores={counter_4=..12}] run effect give @s slowness 1 7 true
execute if entity @s[scores={counter_4=32..187}] run effect give @s glowing 1 0 true
execute if entity @s[scores={counter_4=32..187}] run effect give @s weakness 1 2 true
execute if entity @s[scores={counter_4=52}] anchored eyes run summon minecraft:area_effect_cloud ^1 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=51}] anchored eyes run summon minecraft:area_effect_cloud ^3 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=58}] anchored eyes run summon minecraft:area_effect_cloud ^-1 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=57}] anchored eyes run summon minecraft:area_effect_cloud ^-3 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=64}] anchored eyes run summon minecraft:area_effect_cloud ^1 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=63}] anchored eyes run summon minecraft:area_effect_cloud ^3 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=70}] anchored eyes run summon minecraft:area_effect_cloud ^-1 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=69}] anchored eyes run summon minecraft:area_effect_cloud ^-3 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=80}] anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.4 ^2 {Tags:["109stream","109stream2"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:1b,Duration:1}]}
execute if entity @s[scores={counter_4=80}] anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.4 ^4 {Tags:["109stream","109stream2"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:1b,Duration:1}]}
execute if entity @s[scores={counter_4=95}] anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.4 ^2 {Tags:["109stream","109stream2"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:1b,Duration:1}]}
execute if entity @s[scores={counter_4=95}] anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.4 ^4 {Tags:["109stream","109stream2"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:1b,Duration:1}]}
#ここまで6
execute if entity @s[scores={counter_4=108}] anchored eyes run summon minecraft:area_effect_cloud ^-1.00 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=107}] anchored eyes run summon minecraft:area_effect_cloud ^0.75 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=106}] anchored eyes run summon minecraft:area_effect_cloud ^2.50 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=105}] anchored eyes run summon minecraft:area_effect_cloud ^4.25 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=114}] anchored eyes run summon minecraft:area_effect_cloud ^-4.25 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=115}] anchored eyes run summon minecraft:area_effect_cloud ^-2.50 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=116}] anchored eyes run summon minecraft:area_effect_cloud ^-0.75 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=117}] anchored eyes run summon minecraft:area_effect_cloud ^1.00 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=122}] anchored eyes rotated ~-45 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.5 {Tags:["109stream","109stream4"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1},{Id:25b,Amplifier:19b,Duration:4}]}
execute if entity @s[scores={counter_4=123}] anchored eyes rotated ~-26 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.5 {Tags:["109stream","109stream4"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1},{Id:25b,Amplifier:19b,Duration:4}]}
execute if entity @s[scores={counter_4=124}] anchored eyes rotated ~-7 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.5 {Tags:["109stream","109stream4"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1},{Id:25b,Amplifier:19b,Duration:4}]}
execute if entity @s[scores={counter_4=125}] anchored eyes rotated ~12 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.5 {Tags:["109stream","109stream4"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1},{Id:25b,Amplifier:19b,Duration:4}]}
execute if entity @s[scores={counter_4=133..134}] run tp @s @s
execute if entity @s[scores={counter_4=128}] run effect give @s levitation 1 25 true
execute if entity @s[scores={counter_4=138}] run effect clear @s levitation
execute if entity @s[scores={counter_4=139}] run effect give @s levitation 1 128 true
execute if entity @s[scores={counter_4=141}] run effect clear @s levitation
execute if entity @s[scores={counter_4=140..144}] anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.0 {Tags:["109stream","109stream3"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2.5f,Effects:[{Id:11b,Amplifier:0b,Duration:1},{Id:7b,Amplifier:2b,Duration:1}]}
execute if entity @s[scores={counter_4=138}] run attribute @s minecraft:generic.knockback_resistance base set 1
execute if entity @s[scores={counter_4=150}] run attribute @s minecraft:generic.knockback_resistance base set 0
#ここまで10
execute if entity @s[scores={counter_4=153}] anchored eyes rotated ~45 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=154}] anchored eyes rotated ~26 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=155}] anchored eyes rotated ~7 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=156}] anchored eyes rotated ~-12 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=165}] anchored eyes rotated ~-45 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=166}] anchored eyes rotated ~-26 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=167}] anchored eyes rotated ~-7 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=168}] anchored eyes rotated ~12 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=175}] anchored eyes rotated ~45 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=175}] anchored eyes rotated ~26 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=176}] anchored eyes rotated ~7 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=176}] anchored eyes rotated ~-12 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=180}] anchored eyes rotated ~-45 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=180}] anchored eyes rotated ~-26 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=181}] anchored eyes rotated ~-7 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=181}] anchored eyes rotated ~12 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[scores={counter_4=186}] anchored eyes rotated ~-19 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.2 {Tags:["109stream","109stream6"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2.5f,Effects:[{Id:11b,Amplifier:0b,Duration:1},{Id:7b,Amplifier:1b,Duration:1}]}
execute if entity @s[scores={counter_4=186}] anchored eyes rotated ~ ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.0 {Tags:["109stream","109stream6"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2.5f,Effects:[{Id:11b,Amplifier:0b,Duration:1},{Id:7b,Amplifier:1b,Duration:1}]}
execute if entity @s[scores={counter_4=186}] anchored eyes rotated ~19 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.2 {Tags:["109stream","109stream6"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2.5f,Effects:[{Id:11b,Amplifier:0b,Duration:1},{Id:7b,Amplifier:1b,Duration:1}]}
#ここまで15
execute if entity @s[scores={counter_4=186..206}] run tp @s @s
execute if entity @s[scores={counter_4=194..205}] run tp @s ~ ~ ~ ~-30 ~
execute if entity @s[scores={counter_4=207}] at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.0 {Tags:["109stream","109stream7"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:4.5f,Effects:[{Id:7b,Amplifier:2b,Duration:1}]}

execute if entity @e[tag=109stream1,limit=1] at @e[tag=109stream1] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.2 0.7
execute if entity @e[tag=109stream2,limit=1] at @e[tag=109stream2] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.2 0.5
execute if entity @e[tag=109stream2,limit=1] at @e[tag=109stream2] run particle minecraft:crit ~ ~ ~ 1 1 1 1 10 force @a
execute if entity @e[tag=109stream2,limit=1] at @e[tag=109stream2] run particle minecraft:crit ~ ~ ~ 1 1 1 1 40 normal @a
execute if entity @e[tag=109stream3,limit=1] at @e[tag=109stream3] run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1.2 0.9
execute if entity @e[tag=109stream3,limit=1] at @e[tag=109stream3] run particle minecraft:explosion ~ ~ ~ 0.4 0.4 0.4 1 2 force @a
execute if entity @e[tag=109stream3,limit=1] at @e[tag=109stream3] run particle minecraft:explosion ~ ~ ~ 0.4 0.4 0.4 1 8 normal @a
execute if entity @e[tag=109stream4,limit=1] at @e[tag=109stream4] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1.2 1.5
execute if entity @e[tag=109stream4,limit=1] at @e[tag=109stream4] run particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 1 20 force @a
execute if entity @e[tag=109stream4,limit=1] at @e[tag=109stream4] run particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 1 80 normal @a
execute if entity @e[tag=109stream5,limit=1] at @e[tag=109stream5] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.2 0.6
execute if entity @e[tag=109stream5,limit=1] at @e[tag=109stream5] run playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 1.2 0.5
execute if entity @e[tag=109stream5,limit=1] at @e[tag=109stream5] run particle minecraft:sweep_attack ~ ~ ~ 0.4 0.4 0.4 1 8 force @a
execute if entity @e[tag=109stream5,limit=1] at @e[tag=109stream5] run particle minecraft:sweep_attack ~ ~ ~ 0.4 0.4 0.4 1 32 normal @a
execute if entity @e[tag=109stream6,limit=1] at @e[tag=109stream6] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 2
execute if entity @e[tag=109stream6,limit=1] at @e[tag=109stream6,limit=3,sort=nearest] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1.2 2
execute if entity @e[tag=109stream6,limit=1] at @e[tag=109stream6] run particle minecraft:enchanted_hit ~ ~ ~ 0.5 0.5 0.5 1 100 normal @a
execute if entity @e[tag=109stream6,limit=1] at @e[tag=109stream6] run particle minecraft:enchanted_hit ~ ~ ~ 0.5 0.5 0.5 1 25 force @a
execute if entity @e[tag=109stream6,limit=1] if entity @s[team=Red] at @e[tag=109stream6] run scoreboard players set @e[team=!Red,tag=Battle,distance=..3.0] stanTime 26
execute if entity @e[tag=109stream6,limit=1] if entity @s[team=Blue] at @e[tag=109stream6] run scoreboard players set @e[team=!Blue,tag=Battle,distance=..3.0] stanTime 26
execute if entity @e[tag=109stream6,limit=1] run data merge block -113 2 -122 {auto:1b}
execute if entity @e[tag=109stream7,limit=1] at @e[tag=109stream7] run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 1 12 force @a
execute if entity @e[tag=109stream7,limit=1] at @e[tag=109stream7] run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 1 48 normal @a
execute if entity @e[tag=109stream7,limit=1] at @e[tag=109stream7] run particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 1 40 force @a
execute if entity @e[tag=109stream7,limit=1] at @e[tag=109stream7] run particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 1 160 normal @a
execute if entity @e[tag=109stream7,limit=1] at @e[tag=109stream7] run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1.2 2
execute if entity @e[tag=109stream7,limit=1] at @e[tag=109stream7] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 1
execute if entity @e[tag=109stream7,limit=1] at @e[tag=109stream7] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 1
execute if entity @e[tag=109stream7,limit=1] at @e[tag=109stream7] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.2 0.5
execute if entity @e[tag=109stream7,limit=1] at @e[tag=109stream7] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.2 0.5
execute if entity @e[tag=109stream,limit=1] run tag @s add 109p
execute if entity @e[tag=109stream,limit=1] as @e[tag=109stream] run data modify entity @s Owner set from entity @a[tag=109p,limit=1,sort=nearest] UUID
execute if entity @e[tag=109stream,limit=1] run tag @s remove 109p
execute if entity @e[tag=109stream,limit=1] run tag @e[tag=109stream] remove 109stream
execute if entity @e[tag=109stream1,limit=1] run tag @e[tag=109stream1] remove 109stream1
execute if entity @e[tag=109stream2,limit=1] run tag @e[tag=109stream2] remove 109stream2
execute if entity @e[tag=109stream3,limit=1] run tag @e[tag=109stream3] remove 109stream3
execute if entity @e[tag=109stream4,limit=1] run tag @e[tag=109stream4] remove 109stream4
execute if entity @e[tag=109stream5,limit=1] run tag @e[tag=109stream5] remove 109stream5
execute if entity @e[tag=109stream6,limit=1] run tag @e[tag=109stream6] remove 109stream6
execute if entity @e[tag=109stream7,limit=1] run tag @e[tag=109stream7] remove 109stream7
execute if entity @s[scores={counter_4=207..}] run scoreboard players reset @s counter_4
