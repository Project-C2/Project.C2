playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 2 0.75
particle minecraft:sweep_attack ~ ~1 ~ 1 1 1 0 20 force @a
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 5 5 force @a
#Red
execute if entity @s[team=Red] run effect give @e[distance=..4,team=Blue] minecraft:instant_damage 1 0
#Blue
execute if entity @s[team=Blue] run effect give @e[distance=..4,team=Red] minecraft:instant_damage 1 0
scoreboard players set @s[scores={Mana=40..}] counter 200
replaceitem entity @s[scores={Mana=40..}] weapon.offhand minecraft:golden_sword{display:{Name:"{\"text\":\"Katana\"}"},AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:8,Operation:0,UUIDLeast:609494,UUIDMost:53612,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.2,Operation:0,UUIDLeast:468796,UUIDMost:509833,Slot:"mainhand"}],Unbreakable:1b,HideFlags:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}
replaceitem entity @s[scores={Mana=40..}] hotbar.0 minecraft:iron_sword{display:{Name:"{\"text\":\"Katana\"}",Lore:["§7心空雲耀 Ⅴ§r","§f与えた/受けたダメージの2倍が§9奥義ゲージ§fとして加算される§r"]},AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:609494,UUIDMost:53612,Slot:"mainhand"}],Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:1} 1
scoreboard players remove @s[scores={Mana=40..}] Mana 40