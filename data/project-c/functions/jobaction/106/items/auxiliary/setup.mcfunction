#補助アイテム(スキルやメインウェポンの使用に必要なアイテム(矢など))の呼び出し

item replace entity @s hotbar.4 with minecraft:gray_stained_glass_pane{display:{Name:'{"text":"特殊枠","italic":false}',Lore:['{"text":"ここに特殊枠を追加します","italic":false}']}} 1
execute if score @s counter_1 matches 4..5 run function project-c:jobaction/106/items/auxiliary/arrow/set
