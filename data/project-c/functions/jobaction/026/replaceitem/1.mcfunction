item replace entity @s hotbar.1 with minecraft:heart_of_the_sea{display:{Name:'{"text":"水神様の加護"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§7その場に水の結界を設置。"}','{"text":"§f周囲の味方へ体力再生とCT加速の加護を与える。"}','{"text":"§aCT:30"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1