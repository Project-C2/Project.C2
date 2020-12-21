#職看板
give @p oak_sign{display:{Name:'"099-EVOLT"'},BlockEntityTag:{Text1:'{"text":"*********-99-*********","color":"#CB1111","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 99"}}',Text2:'{"text":"【EVOLT】","color":"#CB1111","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","color":"#CB1111","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"EVOLT\\",\\"color\\":\\"#CB1111\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","color":"#CB1111","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#phase進行用仮想スコア
scoreboard players set #job99_phase_shift counter 60000
scoreboard players set #20 counter 20

#skill2用
scoreboard objectives add 099-S2-APN dummy


#tellraw
tellraw @p ["",{"text":"===================================================="}]
tellraw @p ["",{"text":"ゲーム開始処理に\n"},{"text":"\"function project-c:jobaction/099/initialize\"","color":"green","clickEvent":{"action":"copy_to_clipboard","value":"function project-c:jobaction/099/initialize"},"hoverEvent":{"action":"show_text","value":"クリックでコピー！"}},{"text":"\nを入れてください。"},{"text":"\n緑の文字をクリックでコピーできます。","color":"#00ffff"}]
tellraw @p ["",{"text":"===================================================="}]

#動作必須コマブロ群
#drop処理用
setblock -57 31 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -57 31 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=99,drop=1..}] run function project-c:jobaction/099/replaceitem/0",TrackOutput:0b} destroy


setblock -70 17 -108 minecraft:chain_command_block[facing=north,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=99,drop=1..}] run data merge block -57 31 -122 {auto:1b}",TrackOutput:0b} destroy


#スキル系処理用
setblock 81 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{auto:1b,Command:"execute if entity @e[scores={jobNumber=99},limit=1] as @e[scores={jobNumber=99}] at @s run function project-c:jobaction/099/main",TrackOutput:0b} destroy




setblock 83 2 89 minecraft:repeating_command_block[conditional=false,facing=south]{Command:"execute if entity @e[tag=099-S1-P1-ARROW,limit=1] as @e[tag=099-S1-P1-ARROW] at @s run function project-c:jobaction/099/skill/1/phase1/1",TrackOutput:0b} destroy
setblock 83 2 90 minecraft:chain_command_block[conditional=false,facing=up]{auto:1b,Command:"execute unless entity @e[tag=099-S1-P1-ARROW,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 83 2 91 minecraft:repeating_command_block[conditional=false,facing=south]{Command:"execute if entity @e[tag=099-S1-P4-deploy,limit=1] as @e[tag=099-S1-P4-deploy] at @s run function project-c:jobaction/099/skill/1/phase4/2",TrackOutput:0b} destroy
setblock 83 2 92 minecraft:chain_command_block[conditional=false,facing=up]{auto:1b,Command:"execute unless entity @e[tag=099-S1-P4-deploy,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy






setblock 85 2 89 minecraft:repeating_command_block[conditional=false,facing=south]{Command:"execute if entity @e[tag=099-S2-AEC,limit=1] as @e[tag=099-S2-AEC] at @s run function project-c:jobaction/099/skill/2/1",TrackOutput:0b} destroy
setblock 85 2 90 minecraft:chain_command_block[conditional=false,facing=up]{auto:1b,Command:"execute unless entity @e[tag=099-S2-AEC,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b}


