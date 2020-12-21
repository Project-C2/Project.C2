replaceitem entity @s[team=Red] hotbar.1 minecraft:lingering_potion{display:{Name:"{\"text\":\"エリアエーテル\"}"},CustomPotionEffects:[{Id:26,Amplifier:100,Duration:2}],Potion:"minecraft:luck",HideFlags:32} 1
replaceitem entity @s[team=Blue] hotbar.1 minecraft:lingering_potion{display:{Name:"{\"text\":\"エリアエーテル\"}"},CustomPotionEffects:[{Id:26,Amplifier:101,Duration:2}],Potion:"minecraft:luck",HideFlags:32} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1