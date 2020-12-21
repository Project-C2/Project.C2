#=========================================================================================================================================================
#職を112に変更した人のバグ防止のための初期化処理

function project-c:jobaction/073/general/neutral/neutral0
function project-c:jobaction/073/general/light/light0
function project-c:jobaction/073/general/dark/dark0
function project-c:jobaction/073/general/darknessoverload/darknessoverload0
function project-c:jobaction/073/general/removetagforinitialize

tag @s remove useBinding
tag @s add chatArsMagicaInitialized

#=========================================================================================================================================================