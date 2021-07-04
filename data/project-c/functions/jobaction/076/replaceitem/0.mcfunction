item replace entity @s[scores={counter_2=0}] hotbar.0 with minecraft:iron_sword{display:{Name:'{"text":"ブレイブソード","color":"white","underlined":false,"italic":"false"}'},Enchantments:[{id:"quick_reload",lvl:1s}],Unbreakable:1b,HideFlags:1} 1

item replace entity @s[scores={counter_2=1}] hotbar.0 with minecraft:golden_sword{display:{Name:'{"text":"ジャッジメントソード","color":"white","underlined":false,"italic":"false"}'},Enchantments:[{id:"quick_charge",lvl:3s}],Unbreakable:1b,HideFlags:1} 1

item replace entity @s[scores={counter_2=1}] weapon.offhand with minecraft:shield{Unbreakable:1,BlockEntityTag:{Base:0,Patterns:[{Pattern:gru,Color:4},{Pattern:sc,Color:14}]}} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0