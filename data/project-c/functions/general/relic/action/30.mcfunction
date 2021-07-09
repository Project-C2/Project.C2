execute if entity @s[scores={relicCount=0},tag=Battle] at @s run function project-c:general/jobrandom

execute if entity @s[scores={relicCount=0},tag=Battle] run effect give @s instant_health 1 0 true

execute if entity @a[tag=Battle] run scoreboard players add @s relicCount 1

execute if entity @s[scores={relicCount=20},tag=Battle] run item replace entity @s hotbar.8 with minecraft:magenta_glazed_terracotta{display:{Name:'{"text":"アブノーマルデッキ"}',Lore:['"発動:自動"','"効果:一定時間毎にランダムで職業が変わる！"']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 30
execute if entity @s[scores={relicCount=300},tag=Battle] run item replace entity @s hotbar.8 with minecraft:magenta_glazed_terracotta{display:{Name:'{"text":"アブノーマルデッキ"}',Lore:['"発動:自動"','"効果:一定時間毎にランダムで職業が変わる！"']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 15

execute if entity @s[scores={relicCount=400},tag=Battle] run item replace entity @s hotbar.8 with minecraft:magenta_glazed_terracotta{display:{Name:'{"text":"アブノーマルデッキ"}',Lore:['"発動:自動"','"効果:一定時間毎にランダムで職業が変わる！"']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 10
execute if entity @s[scores={relicCount=420},tag=Battle] run item replace entity @s hotbar.8 with minecraft:magenta_glazed_terracotta{display:{Name:'{"text":"アブノーマルデッキ"}',Lore:['"発動:自動"','"効果:一定時間毎にランダムで職業が変わる！"']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 9
execute if entity @s[scores={relicCount=440},tag=Battle] run item replace entity @s hotbar.8 with minecraft:magenta_glazed_terracotta{display:{Name:'{"text":"アブノーマルデッキ"}',Lore:['"発動:自動"','"効果:一定時間毎にランダムで職業が変わる！"']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 8
execute if entity @s[scores={relicCount=460},tag=Battle] run item replace entity @s hotbar.8 with minecraft:magenta_glazed_terracotta{display:{Name:'{"text":"アブノーマルデッキ"}',Lore:['"発動:自動"','"効果:一定時間毎にランダムで職業が変わる！"']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 7
execute if entity @s[scores={relicCount=480},tag=Battle] run item replace entity @s hotbar.8 with minecraft:magenta_glazed_terracotta{display:{Name:'{"text":"アブノーマルデッキ"}',Lore:['"発動:自動"','"効果:一定時間毎にランダムで職業が変わる！"']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 6
execute if entity @s[scores={relicCount=500},tag=Battle] run item replace entity @s hotbar.8 with minecraft:magenta_glazed_terracotta{display:{Name:'{"text":"アブノーマルデッキ"}',Lore:['"発動:自動"','"効果:一定時間毎にランダムで職業が変わる！"']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 5
execute if entity @s[scores={relicCount=520},tag=Battle] run item replace entity @s hotbar.8 with minecraft:magenta_glazed_terracotta{display:{Name:'{"text":"アブノーマルデッキ"}',Lore:['"発動:自動"','"効果:一定時間毎にランダムで職業が変わる！"']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 4
execute if entity @s[scores={relicCount=540},tag=Battle] run item replace entity @s hotbar.8 with minecraft:magenta_glazed_terracotta{display:{Name:'{"text":"アブノーマルデッキ"}',Lore:['"発動:自動"','"効果:一定時間毎にランダムで職業が変わる！"']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 3
execute if entity @s[scores={relicCount=560},tag=Battle] run item replace entity @s hotbar.8 with minecraft:magenta_glazed_terracotta{display:{Name:'{"text":"アブノーマルデッキ"}',Lore:['"発動:自動"','"効果:一定時間毎にランダムで職業が変わる！"']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 2
execute if entity @s[scores={relicCount=580},tag=Battle] run item replace entity @s hotbar.8 with minecraft:magenta_glazed_terracotta{display:{Name:'{"text":"アブノーマルデッキ"}',Lore:['"発動:自動"','"効果:一定時間毎にランダムで職業が変わる！"']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 1

execute if entity @s[scores={relicCount=600..},tag=Battle] run scoreboard players set @s relicCount 0

execute if entity @s[tag=Battle] run effect give @s haste 1 0 true
