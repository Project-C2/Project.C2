execute unless score @s stockcounter matches 1.. run replaceitem entity @s hotbar.4 minecraft:black_stained_glass_pane
execute unless score @s stockcounter matches 1.. run clear @s minecraft:blaze_powder{display:{Name:'{"text":"踏氷渡海トークン","color":"yellow","underlined":true,"italic":false}'}}
execute if score @s stockcounter matches 1 run replaceitem entity @s hotbar.4 minecraft:blaze_powder{display:{Name:'{"text":"踏氷渡海トークン","color":"yellow","underlined":true,"italic":false}',Lore:['{"text":"近接攻撃する事で取得できるトークン。","color":"white","italic":false}','{"text":"1個につき攻撃力が15%上昇。","color":"white","italic":false}','{"text":"最大ストック:3","color":"green","italic":false}']},Enchantments:[{}]} 1
execute if score @s stockcounter matches 2 run replaceitem entity @s hotbar.4 minecraft:blaze_powder{display:{Name:'{"text":"踏氷渡海トークン","color":"yellow","underlined":true,"italic":false}',Lore:['{"text":"近接攻撃する事で取得できるトークン。","color":"white","italic":false}','{"text":"1個につき攻撃力が15%上昇。","color":"white","italic":false}','{"text":"最大ストック:3","color":"green","italic":false}']},Enchantments:[{}]} 2
execute if score @s stockcounter matches 3.. run replaceitem entity @s hotbar.4 minecraft:blaze_powder{display:{Name:'{"text":"踏氷渡海トークン","color":"yellow","underlined":true,"italic":false}',Lore:['{"text":"近接攻撃する事で取得できるトークン。","color":"white","italic":false}','{"text":"1個につき攻撃力が15%上昇。","color":"white","italic":false}','{"text":"最大ストック:3","color":"green","italic":false}']},Enchantments:[{}]} 3
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-51-51
execute if score @s stockcounter matches 1 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-51-51 "gitenken_boost" 0.8 add
execute if score @s stockcounter matches 2 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-51-51 "gitenken_boost" 1.6 add
execute if score @s stockcounter matches 3.. run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-51-51 "gitenken_boost" 2.4 add
tag @s add 051p
data merge block -15 2 -18 {auto:1b}
