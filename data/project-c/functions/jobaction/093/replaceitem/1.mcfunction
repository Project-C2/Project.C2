execute unless score @s counter_6 matches 1 run replaceitem entity @s hotbar.1 minecraft:water_bucket{display:{Name:'{"text":"トライデントスプリンクラー","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"ダメージ判定のないトライデントを投擲し、","color":"white","italic":false}','{"text":"着弾点から周囲にトライデントを拡散する。","color":"white","italic":false}','{"text":"CT:15","color":"green","italic":false}']},Enchantments:[{}]} 1
execute if score @s counter_6 matches 1 run replaceitem entity @s hotbar.1 minecraft:heart_of_the_sea{display:{Name:'{"text":"トロピカルウェーブ","color":"#33aaff","bold":true,"underlined":true,"italic":false}',Lore:['{"text":"発動:地面に立ち右クリック","color":"yellow","italic":false}','{"text":"前方に熱帯魚の波を発生させ、","color":"white","italic":false}','{"text":"全てを飲み込んで消し飛ばす。","color":"white","italic":false}','{"text":"CT:40","color":"green","italic":false}']},Enchantments:[{}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1