scoreboard players add @s counter 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
teleport @a[scores={jobNumber=128,CT3=..1199},limit=1,sort=nearest] ^ ^ ^ ~ ~
effect give @a[scores={jobNumber=128,CT3=..1199},limit=1,sort=nearest,distance=0..3] resistance 1 5 true
effect give @a[scores={jobNumber=128,CT3=..1199},limit=1,sort=nearest,distance=0..3] levitation 1 0 true
effect give @a[scores={jobNumber=128,CT3=..1199},limit=1,sort=nearest,distance=0..3] minecraft:invisibility 1 0 true
particle minecraft:sweep_attack ~ ~1 ~ 3 3 3 0 5
execute if entity @s[tag=128-EviscerateSR,scores={counter=6..}] run effect give @e[tag=Battle,distance=..4.5,team=Blue] resistance 1 1 true
execute if entity @s[tag=128-EviscerateSB,scores={counter=6..}] run effect give @e[tag=Battle,distance=..4.5,team=Red] resistance 1 1 true
execute if entity @s[tag=128-EviscerateSR,scores={counter=6..}] run effect give @e[tag=Battle,distance=..4.5,team=Blue] instant_damage 1 0
execute if entity @s[tag=128-EviscerateSB,scores={counter=6..}] run effect give @e[tag=Battle,distance=..4.5,team=Red] instant_damage 1 0

execute if entity @s[scores={counter=31..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:8b,Duration:5,ShowParticles:0b}]}
execute if entity @s[scores={counter=31..}] run effect clear @a[scores={jobNumber=128,CT3=..1199},limit=1,sort=nearest,distance=0..3] resistance
execute if entity @s[scores={counter=31..}] run execute as @a[scores={jobNumber=128,CT3=..1199},limit=1,sort=nearest,distance=0..3] at @s run replaceitem entity @s armor.chest minecraft:elytra{display:{Name:'{"text":"Celestial Feather","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[Passive: Fall Resist,Jump Boost]","color":"white","italic":false}','{"text":"[Jump: Double Jump]","color":"white","italic":false}','{"text":" "}','{"text":"\\"大丈夫、きっとやりとげられる\\"","color":"white","italic":false}']},HideFlags:5,RepairCost:-1000,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.maxHealth",Amount:-0.3,Operation:1,UUIDLeast:605430,UUIDMost:320978,Slot:"chest"}],Unbreakable:1b,ItemName:Celestial_Feather,Enchantments:[{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:binding_curse",lvl:1}],CustomModelData:1} 1
kill @s[scores={counter=31..}]