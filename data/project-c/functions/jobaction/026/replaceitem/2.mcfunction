item replace entity @s hotbar.2 with minecraft:gold_nugget{display:{Name:'{"text":"正直者の死","color":"red","bold":true}',Lore:['{"text":"§e発動:§6§n金の斧§eor§8§n銀の斧§eを捨てる"}','{"text":"§7斧を投擲する。"}','{"text":"§f着地時に壊れそうだ。"}','{"text":"§aCT:0.5"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2