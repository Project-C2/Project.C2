#ステージナンバー
#0  ランダム
#1  遺跡
#2  4ブロックス
#3  大聖堂
#4  中華街
#5  図書館
#6  神聖円卓領域
#7  枯山水
#8  ウェスタン
#9  渓流
#10 橋
#11 海賊船
#12 秩序の門
#13 ショッピングモール

#14 市街地E区1丁目
#15 市街地E区2丁目
#16 市街地E区3丁目
#17 市街地E区4丁目(欠)
#18 市街地W区1丁目(欠)
#19 市街地W区2丁目(欠)
#20 市街地W区3丁目(欠)

#21 大樹
#22 スカイルーイン
#23 奏者の丘
#24 幻想戦艦大和
#25 アステロイドベルト
#26 洋館
#27 廃病院島
#28 ネザー
#29 旧渓流
#30 旧枯山水
#31 旧屋敷
#32 支配領域
#33 地下世界
#34 要塞-ExC2
#35 神社
#36 エルドラド
#37 サンゴ礁
#38 空中庭園
#39 (欠)
#40 (欠)

#41  裏遺跡
#42  裏4ブロックス
#43  裏大聖堂
#44  裏中華街
#45  裏図書館
#46  妖精円卓領域
#47  裏枯山水
#48  裏ウェスタン
#49  裏渓流
#50  裏橋

#オーバーフローを止めたり欠番を埋めたりする
execute if score #MenuStageselect counter matches ..-1 run scoreboard players set #MenuStageselect counter 50
execute if score #MenuStageselect counter matches 51.. run scoreboard players set #MenuStageselect counter 0
execute if score #MenuStageselect counter matches 15..19 run scoreboard players set #MenuStageselect counter 21
execute if score #MenuStageselect counter matches 20 run scoreboard players set #MenuStageselect counter 14
execute if score #MenuStageselect counter matches 39 run scoreboard players set #MenuStageselect counter 41
execute if score #MenuStageselect counter matches 40 run scoreboard players set #MenuStageselect counter 38

#ステージ看板を置く
##原作ステージ
execute if score #MenuStageselect counter matches 0 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"ランダム"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 1 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"遺跡"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 2 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"4ブロックス"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 3 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"大聖堂"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 4 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"中華街"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 5 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"図書館"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 6 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"神聖円卓領域"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 7 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"枯山水"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 8 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"ウェスタン"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 9 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"渓流"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 10 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"橋"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 11 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"海賊船"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 12 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"秩序の門"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 13 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"ショッピングモール"}',Text4:'{"text":"********************"}'} destroy

##市街地
execute if score #MenuStageselect counter matches 14 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"市街地Ｅ区"}',Text4:'{"text":"********************"}'} destroy

##追加ステージ第一弾
execute if score #MenuStageselect counter matches 21 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"大樹"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 22 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"スカイルーイン"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 23 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"奏者の丘"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 24 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"幻想戦艦大和"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 25 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"アステロイドベルト"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 26 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"洋館"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 27 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"廃病院島"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 28 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"ネザー"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 29 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"旧渓流"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 30 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"旧枯山水"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 31 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"旧屋敷"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 32 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"支配領域"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 33 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"地下世界"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 34 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"要塞-ExC2"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 35 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"神社"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 36 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"エルドラド"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 37 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"サンゴ礁"}',Text4:'{"text":"********************"}'} destroy
execute if score #MenuStageselect counter matches 38 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"空中庭園"}',Text4:'{"text":"********************"}'} destroy

##裏ステージ
execute if score #MenuStageselect counter matches 41 run setblock 1005 64 58 dark_oak_wall_sign[facing=north]{Text1:'{"text":"********************","color":"#F7FF00"}',Text2:'{"text":"選択中のステージ","color":"#F7FF00"}',Text3:'{"text":"裏遺跡","color":"#F7FF00"}',Text4:'{"text":"********************","color":"#F7FF00"}'} destroy
execute if score #MenuStageselect counter matches 42 run setblock 1005 64 58 dark_oak_wall_sign[facing=north]{Text1:'{"text":"********************","color":"#F7FF00"}',Text2:'{"text":"選択中のステージ","color":"#F7FF00"}',Text3:'{"text":"裏4ブロックス","color":"#F7FF00"}',Text4:'{"text":"********************","color":"#F7FF00"}'} destroy
execute if score #MenuStageselect counter matches 43 run setblock 1005 64 58 dark_oak_wall_sign[facing=north]{Text1:'{"text":"********************","color":"#F7FF00"}',Text2:'{"text":"選択中のステージ","color":"#F7FF00"}',Text3:'{"text":"裏大聖堂","color":"#F7FF00"}',Text4:'{"text":"********************","color":"#F7FF00"}'} destroy
execute if score #MenuStageselect counter matches 44 run setblock 1005 64 58 dark_oak_wall_sign[facing=north]{Text1:'{"text":"********************","color":"#F7FF00"}',Text2:'{"text":"選択中のステージ","color":"#F7FF00"}',Text3:'{"text":"裏中華街","color":"#F7FF00"}',Text4:'{"text":"********************","color":"#F7FF00"}'} destroy
execute if score #MenuStageselect counter matches 45 run setblock 1005 64 58 dark_oak_wall_sign[facing=north]{Text1:'{"text":"********************","color":"#F7FF00"}',Text2:'{"text":"選択中のステージ","color":"#F7FF00"}',Text3:'{"text":"裏図書館","color":"#F7FF00"}',Text4:'{"text":"********************","color":"#F7FF00"}'} destroy
execute if score #MenuStageselect counter matches 46 run setblock 1005 64 58 dark_oak_wall_sign[facing=north]{Text1:'{"text":"********************","color":"#F7FF00"}',Text2:'{"text":"選択中のステージ","color":"#F7FF00"}',Text3:'{"text":"妖精円卓領域","color":"#F7FF00"}',Text4:'{"text":"********************","color":"#F7FF00"}'} destroy
execute if score #MenuStageselect counter matches 47 run setblock 1005 64 58 dark_oak_wall_sign[facing=north]{Text1:'{"text":"********************","color":"#F7FF00"}',Text2:'{"text":"選択中のステージ","color":"#F7FF00"}',Text3:'{"text":"裏枯山水","color":"#F7FF00"}',Text4:'{"text":"********************","color":"#F7FF00"}'} destroy
execute if score #MenuStageselect counter matches 48 run setblock 1005 64 58 dark_oak_wall_sign[facing=north]{Text1:'{"text":"********************","color":"#F7FF00"}',Text2:'{"text":"選択中のステージ","color":"#F7FF00"}',Text3:'{"text":"裏ウェスタン","color":"#F7FF00"}',Text4:'{"text":"********************","color":"#F7FF00"}'} destroy
execute if score #MenuStageselect counter matches 49 run setblock 1005 64 58 dark_oak_wall_sign[facing=north]{Text1:'{"text":"********************","color":"#F7FF00"}',Text2:'{"text":"選択中のステージ","color":"#F7FF00"}',Text3:'{"text":"裏渓流","color":"#F7FF00"}',Text4:'{"text":"********************","color":"#F7FF00"}'} destroy
execute if score #MenuStageselect counter matches 50 run setblock 1005 64 58 dark_oak_wall_sign[facing=north]{Text1:'{"text":"********************","color":"#F7FF00"}',Text2:'{"text":"選択中のステージ","color":"#F7FF00"}',Text3:'{"text":"裏橋","color":"#F7FF00"}',Text4:'{"text":"********************","color":"#F7FF00"}'} destroy

#テンプレ
#execute if score #MenuStageselect counter matches 「番号」 run setblock 1005 64 58 oak_wall_sign[facing=north]{Text1:'{"text":"********************"}',Text2:'{"text":"選択中のステージ"}',Text3:'{"text":"「ステージ名」"}',Text4:'{"text":"********************"}'} destroy