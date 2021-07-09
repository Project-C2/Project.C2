item replace entity @s hotbar.3 with minecraft:creeper_head{display:{Name:'{"text":"スーパーボム"}',Lore:['{"text":"発動:スニーク"}','{"text":"起爆可能な強力な爆弾を設置する。"}']}}
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3