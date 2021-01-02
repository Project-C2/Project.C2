#職看板
give @p oak_sign{display:{Name:'"114-闇寿司"'},BlockEntityTag:{Text1:'{"text":"*********-114-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 114"}}',Text2:'{"text":"【闇寿司】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"闇寿司\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群
#スキル系処理用
setblock -18 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=114}] at @s run function project-c:jobaction/114/main",TrackOutput:0b,auto:1b} destroy
