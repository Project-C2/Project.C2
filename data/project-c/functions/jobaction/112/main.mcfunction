#実行者     -> jobNumber = 112
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={counter_2=1..}] run function project-c:jobaction/112/skill/2/p

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/112/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/112/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/112/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"極龍ノ鉤爪","color":"gold","bold":false,"italic":false}'}}}},scores={useCarrotStick=1..},gamemode=!spectator] run function project-c:jobaction/112/skill/0/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"磁力操作","color":"gold","italic":false}'}}}},scores={useCarrotStick=1..,CT1=1200..},gamemode=!spectator,tag=SkillReady1] run function project-c:jobaction/112/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"岩石周回","color":"gold","italic":false}'}}}},scores={useCarrotStick=1..,CT2=1200..},gamemode=!spectator,tag=SkillReady2,tag=Battle] run function project-c:jobaction/112/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"砂鉄球","color":"gold","italic":false}'}}}},scores={useCarrotStick=1..,CT3=1200..},gamemode=!spectator,tag=SkillReady3] run function project-c:jobaction/112/skill/3/0

execute if entity @s[scores={counter_1=1..}] run scoreboard players remove @s counter_1 1
execute if entity @s[scores={counter_1=1..}] run particle minecraft:falling_dust blackstone ~ ~1 ~ 6 2 6 1 3 force @a

execute if entity @s[scores={counter_1=1..}] run summon minecraft:area_effect_cloud ^ ^ ^ {Radius:0.1f,Duration:1,Tags:["112glaveffect"]}

execute if entity @s[scores={counter_1=1..},team=Red] as @e[distance=..8,team=Blue,tag=Battle,type=!player] at @s run effect give @s slowness 1 7 true

execute if entity @s[scores={counter_1=1..},team=Blue] as @e[distance=..8,team=Red,tag=Battle,type=!player] at @s run effect give @s slowness 1 7 true


execute if entity @s[scores={counter_1=1..,subcounter=0},team=Red] as @e[distance=..8,team=Blue,tag=Battle] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=112glaveffect,sort=nearest,limit=1] feet run summon silverfish ^ ^ ^-0.1 {PersistenceRequired:1b,DeathTime:19s,Silent:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:6f,Attributes:[{Name:"generic.max_health",Base:6d},{Name:"generic.attack_damage",Base:0d}],ActiveEffects:[{Id:8b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:18b,Amplifier:127b,Duration:100,ShowParticles:0b}],Team:["Red"]}
execute if entity @s[scores={counter_1=1..,subcounter=0},team=Red] as @e[distance=..8,team=Blue,tag=Battle] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=112glaveffect,sort=nearest,limit=1] feet run summon silverfish ^ ^ ^-0.1 {PersistenceRequired:1b,DeathTime:19s,Silent:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:6f,Attributes:[{Name:"generic.max_health",Base:6d},{Name:"generic.attack_damage",Base:0d}],ActiveEffects:[{Id:8b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:18b,Amplifier:127b,Duration:100,ShowParticles:0b}],Team:["Red"]}

execute if entity @s[scores={counter_1=1..,subcounter=1},team=Red] as @e[distance=..8,team=Blue,tag=Battle] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=112glaveffect,sort=nearest,limit=1] feet run summon silverfish ^ ^ ^0.1 {PersistenceRequired:1b,DeathTime:19s,Silent:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:6f,Attributes:[{Name:"generic.max_health",Base:6d},{Name:"generic.attack_damage",Base:0d}],ActiveEffects:[{Id:8b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:18b,Amplifier:127b,Duration:100,ShowParticles:0b}],Team:["Red"]}

execute if entity @s[scores={counter_1=1..,subcounter=1},team=Red] as @e[distance=..8,team=Blue,tag=Battle] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=112glaveffect,sort=nearest,limit=1] feet run summon silverfish ^ ^ ^0.1 {PersistenceRequired:1b,DeathTime:19s,Silent:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:6f,Attributes:[{Name:"generic.max_health",Base:6d},{Name:"generic.attack_damage",Base:0d}],ActiveEffects:[{Id:8b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:18b,Amplifier:127b,Duration:100,ShowParticles:0b}],Team:["Red"]}


execute if entity @s[scores={counter_1=1..,subcounter=0},team=Blue] as @e[distance=..8,team=Red,tag=Battle] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=112glaveffect,sort=nearest,limit=1] feet run summon silverfish ^ ^ ^-0.1 {PersistenceRequired:1b,DeathTime:19s,Silent:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:6f,Attributes:[{Name:"generic.max_health",Base:6d},{Name:"generic.attack_damage",Base:0d}],ActiveEffects:[{Id:8b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:18b,Amplifier:127b,Duration:100,ShowParticles:0b}],Team:["Blue"]}
execute if entity @s[scores={counter_1=1..,subcounter=0},team=Blue] as @e[distance=..8,team=Red,tag=Battle] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=112glaveffect,sort=nearest,limit=1] feet run summon silverfish ^ ^ ^-0.1 {PersistenceRequired:1b,DeathTime:19s,Silent:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:6f,Attributes:[{Name:"generic.max_health",Base:6d},{Name:"generic.attack_damage",Base:0d}],ActiveEffects:[{Id:8b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:18b,Amplifier:127b,Duration:100,ShowParticles:0b}],Team:["Blue"]}


execute if entity @s[scores={counter_1=1..,subcounter=1},team=Blue] as @e[distance=..8,team=Red,tag=Battle] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=112glaveffect,sort=nearest,limit=1] feet run summon silverfish ^ ^ ^0.1 {PersistenceRequired:1b,DeathTime:19s,Silent:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:6f,Attributes:[{Name:"generic.max_health",Base:6d},{Name:"generic.attack_damage",Base:0d}],ActiveEffects:[{Id:8b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:18b,Amplifier:127b,Duration:100,ShowParticles:0b}],Team:["Blue"]}

execute if entity @s[scores={counter_1=1..,subcounter=1},team=Blue] as @e[distance=..8,team=Red,tag=Battle] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=112glaveffect,sort=nearest,limit=1] feet run summon silverfish ^ ^ ^0.1 {PersistenceRequired:1b,DeathTime:19s,Silent:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:6f,Attributes:[{Name:"generic.max_health",Base:6d},{Name:"generic.attack_damage",Base:0d}],ActiveEffects:[{Id:8b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:18b,Amplifier:127b,Duration:100,ShowParticles:0b}],Team:["Blue"]}


execute if entity @s[scores={subcounter=0}] run title @s actionbar [{"text":"<<磁力状態 : 引き寄せ>>","bold":true,"color":"red"}]
execute if entity @s[scores={subcounter=1}] run title @s actionbar [{"text":"<<磁力状態 : 押し出し>>","bold":true,"color":"blue"}]

kill @e[type=area_effect_cloud,tag=112glaveffect]

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={adDealt=1..}] adDealt