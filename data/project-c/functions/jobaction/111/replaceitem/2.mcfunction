item replace entity @s hotbar.2 with minecraft:dead_brain_coral{display:{Name:'{"text":"Smokebomb","color":"dark_purple","italic":false}',Lore:['{"text":"発動: スニーク(手に持たなくても使用可能)","color":"yellow","italic":false}','{"text":"即座に透明になり、移動速度を上昇させる。","color":"white","italic":false}','{"text":"発動中にスキルを使用するか、3秒立つと解除される。","color":"white","italic":false}','{"text":"解除時に、至近距離の敵に盲目を付与。","color":"white","italic":false}','{"text":"CT:15","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
