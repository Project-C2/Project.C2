scoreboard players set @s CT1 1300
scoreboard players set @s counter_1 1
replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Drill Charge-release\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"チャージ:右クリック/発動:もう一度右クリック\",\"color\":\"yellow\",\"italic\":false}","{\"text\":\"ドリルをチャージし、前方へ突撃する。\",\"color\":\"white\",\"italic\":false}","{\"text\":\"チャージ秒数で攻撃持続時間が延びる。\",\"color\":\"white\",\"italic\":false}","{\"text\":\"発動時1秒間無敵時間が発生。\",\"color\":\"white\",\"italic\":false}","{\"text\":\"CT:12\",\"color\":\"green\",\"italic\":false}"]}} 1
effect give @s slowness 2 3
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
particle minecraft:portal ~ ~1 ~ 0 0 0 5 400
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 2