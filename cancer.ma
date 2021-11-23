[top]
components : cancer

[cancer]
type : cell
width : 20
height : 20
delay : transport
defaultDelayTime : 100
border : wrapped 
neighbors : cancer(-1,-1) cancer(-1,0) cancer(-1,1) 
neighbors : cancer(0,-1)  cancer(0,0)  cancer(0,1)
neighbors : cancer(1,-1)  cancer(1,0)  cancer(1,1)
initialvalue : 0
initialrowvalue :  5     00000301110000003000
initialrowvalue :  7     00300100100100000000
initialrowvalue :  8     00200101120100010000
initialrowvalue :  9     00000100100100003000
initialrowvalue : 11     00030001110000200000
localtransition : cancer-rule


[cancer-rule]
rule : 3 100 { (0,0) = 0 and statecount(3) > 0 } 
rule : 2 100 { (0,0) = 0 and statecount(3) = 0 and statecount(2) > 0 } 
rule : 1 100 { (0,0) = 0 and statecount(3) = 0 and statecount(2) = 0 and statecount(1) > 0 } 
rule : 1 100 { (0,0) = 2 } 
rule : 0 100 { (0,0) = 1 } 
rule : 3 100 { (0,0) = 3 } 
rule : {(0,0)} 100 { t } 