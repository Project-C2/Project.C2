playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1
playsound minecraft:block.iron_trapdoor.close master @a ~ ~ ~ 2 2
playsound minecraft:block.iron_trapdoor.close master @a ~ ~ ~ 2 1
scoreboard players set @s counter_3 0
scoreboard players set @s counter_4 200
particle minecraft:crit ~ ~ ~ 0 0 0 1 100
replaceitem entity @s[scores={counter_4=1..}] hotbar.0 minecraft:blaze_rod{display:{Name:'{"text":"守護者の輝杖","color":"yellow","bold":false,"italic":false}',Lore:['{"text":"ビットレーザー/発動:右クリック","color":"yellow","italic":false}','{"text":"後方から時間差でレーザーを放つ。","color":"white","italic":false}','{"text":"CT:7/追加入力CT:14","color":"yellow","italic":false}']},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"131",Amount:2d,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"131",Amount:2.0,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"}],HideFlags:1b} 1
execute if entity @s[scores={sneak=0}] run function project-c:jobaction/131/skill/3/2
execute if entity @s[scores={sneak=1..}] run function project-c:jobaction/131/skill/3/3