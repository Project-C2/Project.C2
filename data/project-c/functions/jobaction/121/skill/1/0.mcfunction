scoreboard players set @s CT1 600

summon area_effect_cloud ~ ~3.5 ~ {Tags:["121-S1-AEC","this"],Duration:700,Radius:0.0f,CustomName:'{"text":"ERIA"}'}

item replace entity @s armor.chest with minecraft:elytra{display:{Name:'{"text":"Celestial Feather","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[Passive: Fall Resist,Jump Boost]","color":"white","italic":false}','{"text":"[Jump: Double Jump]","color":"white","italic":false}','{"text":" "}','{"text":""大丈夫、きっとやりとげられる"","color":"white","italic":false}']},HideFlags:5,RepairCost:-1000,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-0.3,Operation:1,UUIDLeast:605430,UUIDMost:320978,Slot:"chest"}],Unbreakable:1b,ItemName:Celestial_Feather,Enchantments:[{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:binding_curse",lvl:1}],CustomModelData:1} 1

data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
execute at @e[tag=this] run particle explosion ~ ~ ~ 0.4 0.4 0.4 1 5 force @a
execute at @e[tag=this] run particle cloud ~ ~ ~ 0.4 0.4 0.4 1 500 normal @a
tag @e[tag=this] remove this
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1.24
playsound minecraft:entity.generic.explode master @a ^ ^ ^2.5 1.5 1.2
playsound minecraft:entity.generic.explode master @a ^ ^ ^2.5 1 1.2

tag @s add 121clean

data merge block 80 61 -62 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1