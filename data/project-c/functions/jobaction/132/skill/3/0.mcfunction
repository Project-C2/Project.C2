playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 2 0
playsound minecraft:block.iron_trapdoor.close master @a ~ ~ ~ 2 2
playsound minecraft:block.iron_trapdoor.close master @a ~ ~ ~ 2 1
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 2 2
scoreboard players set @s counter_3 1
scoreboard players set @s counter_4 140
effect give @s minecraft:slowness 1 7 true
effect give @s minecraft:weakness 1 9 true
particle minecraft:crit ~ ~ ~ 0 0 0 1 100
replaceitem entity @s[scores={counter_4=1..}] hotbar.0 minecraft:lily_pad{display:{Name:'{"text":"守護者の岩拳","color":"dark_green","bold":false,"italic":false}',Lore:['{"text":"バーストナックル/発動:右クリック","color":"yellow","italic":false}','{"text":"前方に強力なダメージを与える。","color":"white","italic":false}','{"text":"CT:7","color":"yellow","italic":false}']},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"132",Amount:2d,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"132",Amount:2.0,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"}],HideFlags:1b} 1