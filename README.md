### Goal

This repo is intended to be the place of benchmarked ruby codes.

### Benchmark

Benchmark is a Ruby module to measure the performance of a code or a sample. 

### Results


---

#### Object nil check :: nil vs == vs .nil?
```
                           user     system      total        real
if nil else            0.289582   0.000000   0.289582 (  0.289590)
unless nil             0.275434   0.000000   0.275434 (  0.275441)
==                     0.312567   0.000000   0.312567 (  0.312579)
.nil?                  0.328295   0.000000   0.328295 (  0.328302)
```
---

#### Integer Increase check :: next vs += vs = +
```
                           user     system      total        real
.next                  0.210265   0.000000   0.210265 (  0.210268)
+=                     0.184797   0.000000   0.184797 (  0.184799)
= +                    0.184880   0.000000   0.184880 (  0.184889)
```
---

#### Loops :: break if vs while vs until vs do-while vs for vs times
```
                           user     system      total        real
break if               0.302556   0.000000   0.302556 (  0.302563)
while                  0.168064   0.000000   0.168064 (  0.168069)
until                  0.169907   0.000000   0.169907 (  0.169913)
do-while               0.168702   0.000000   0.168702 (  0.168704)
for                    0.289003   0.000000   0.289003 (  0.289014)
times                  0.275123   0.000000   0.275123 (  0.275130)
each                   0.274304   0.000000   0.274304 (  0.274309)
```
---

#### Statement Modifier check :: if ... vs ... if
```
                           user     system      total        real
if ...                 0.185612   0.000018   0.185630 (  0.185635)
... if                 0.186994   0.000000   0.186994 (  0.186997)
unless ...             0.187155   0.000000   0.187155 (  0.187156)
... unless             0.187467   0.000000   0.187467 (  0.187474)
```
---

#### Array Create check :: new vs []
```
                           user     system      total        real
[]                     0.253091   0.000000   0.253091 (  0.253096)
new                    0.475221   0.000000   0.475221 (  0.475234)
```
---

#### Array Create with values
```
                           user     system      total        real
[*..]                  0.147684   0.039978   0.187662 (  0.187667)
(..).to_a              0.132214   0.020005   0.152219 (  0.152441)
Array(..)              0.130559   0.023973   0.154532 (  0.176229)
Array.new(n, &:next)   0.296055   0.036006   0.332061 (  0.332069)
```
---

#### Array Empty check :: == vs .empty?
```
                           user     system      total        real
==                     1.338078   0.003954   1.342032 (  1.342054)
.empty?                0.638026   0.000042   0.638068 (  0.638080)
```
---

#### Array Push check :: push vs append vs <<
```
                           user     system      total        real
push                   0.356958   0.000018   0.356976 (  0.356980)
append                 0.359221   0.000000   0.359221 (  0.359229)
<<                     0.294529   0.000000   0.294529 (  0.294535)
```
---

#### Array Concat check :: + vs concat
```
                           user     system      total        real
+                      0.755675   0.000000   0.755675 (  0.755684)
concat                 0.915615   0.000000   0.915615 (  0.915625)
```
---

#### Array First check :: first vs take vs slice
```
                           user     system      total        real
[]                     0.341705   0.000000   0.341705 (  0.341713)
first                  0.328169   0.000000   0.328169 (  0.328181)
take                   0.340458   0.000000   0.340458 (  0.340469)
slice                  0.385364   0.000000   0.385364 (  0.385370)
```
---

#### Array Find check :: find_index vs index
```
                           user     system      total        real
find_index             1.220163   0.000000   1.220163 (  1.220182)
index                  1.220173   0.000000   1.220173 (  1.220186)
```
---

#### Array Size check :: length vs size
```
                           user     system      total        real
size                   0.157433   0.000000   0.157433 (  0.157439)
length                 0.157095   0.000000   0.157095 (  0.157099)
```
---

#### Array Multiplication check :: * vs concat vs push
```
                           user     system      total        real
*                      0.012906   0.003951   0.016857 (  0.016861)
concat                 0.302681   0.011983   0.314664 (  0.316553)
push                   0.297709   0.016024   0.313733 (  0.315537)
flattern               0.782686   0.022113   0.804799 (  0.804812)
```
---

#### Array Branch Prediction check :: sorted vs unsorted
```
                           user     system      total        real
sorted                 0.185563   0.000000   0.185563 (  0.185568)
unsorted               0.218325   0.000000   0.218325 (  0.218334)
```
---

#### Hash Create
```
                           user     system      total        real
{}                     0.233059   0.000000   0.233059 (  0.233065)
new                    1.129124   0.000000   1.129124 (  1.129141)
```
---

#### Hash Empty
```
                           user     system      total        real
==                     0.336066   0.000000   0.336066 (  0.336072)
keys == []             5.942487   0.019960   5.962447 (  5.962518)
length                 0.199724   0.000000   0.199724 (  0.199727)
empty?                 0.178754   0.000029   0.178783 (  0.178790)
any?                   1.144839   0.003965   1.148804 (  1.148823)
<=                     0.323839   0.000042   0.323881 (  0.323887)
eql?{}                 0.301621   0.000000   0.301621 (  0.301629)
{}.eql?                0.323053   0.000000   0.323053 (  0.323174)
```
---

#### Hash Add
```
                           user     system      total        real
[]                     0.360746   0.003974   0.364720 (  0.364737)
store                  0.319447   0.031994   0.351441 (  0.351458)
merge                  0.580521   0.044007   0.624528 (  0.624537)
```
---

#### Hash Delete
```
                           user     system      total        real
delete                 1.570620   0.003982   1.574602 (  1.574626)
delete_if              1.966314   0.012028   1.978342 (  1.978379)
```
---

#### Hash Delete All
```
                           user     system      total        real
{}                     1.463944   0.000000   1.463944 (  1.463962)
clear                  1.464477   0.000003   1.464480 (  1.464496)
delete_if              2.158135   0.003980   2.162115 (  2.162149)
reject                 2.154079   0.000000   2.154079 (  2.154103)
```
---

#### Hash Each
```
                           user     system      total        real
each                   4.349678   0.000000   4.349678 (  4.349785)
each_pair              4.319896   0.000000   4.319896 (  4.319945)
each_key               4.129673   0.000000   4.129673 (  4.129721)
keys                   3.869131   0.000000   3.869131 (  3.869167)
```
---

#### Hash Get
```
                           user     system      total        real
[]                     0.230801   0.000000   0.230801 (  0.230807)
fetch                  0.287374   0.000000   0.287374 (  0.287381)
dig                    0.276998   0.000000   0.276998 (  0.277001)
```
---

#### Hash Has Key
```
                           user     system      total        real
[]                     0.324787   0.000002   0.324789 (  0.324794)
.key?                  0.358027   0.000000   0.358027 (  0.358035)
.include?              0.358791   0.000000   0.358791 (  0.358798)
.member?               0.358695   0.000000   0.358695 (  0.358701)
```
---

#### Hash Select Specific
```
                           user     system      total        real
keep_if                0.273546   0.000000   0.273546 (  0.273551)
select                 0.498367   0.000000   0.498367 (  0.498375)
delete_if              0.275080   0.000000   0.275080 (  0.275091)
slice                  1.097864   0.000000   1.097864 (  1.097876)
```
---

#### Hash Size
```
                           user     system      total        real
size                   0.161369   0.000000   0.161369 (  0.161371)
length                 0.162510   0.000000   0.162510 (  0.162510)
```
---

#### String Create :: string lit vs new vs new + string lit
```
                           user     system      total        real
string literal         0.241100   0.000000   0.241100 (  0.241108)
new                    0.437164   0.000000   0.437164 (  0.437176)
new + string lit       0.851930   0.000000   0.851930 (  0.851944)
```
---

#### String Concat :: + vs += vs << vs concat vs prepend vs interpolation
```
                           user     system      total        real
= +                    0.014043   0.000000   0.014043 (  0.014049)
+=                     0.009198   0.000000   0.009198 (  0.009203)
<<                     0.000733   0.000000   0.000733 (  0.000733)
concat                 0.000848   0.000000   0.000848 (  0.000847)
prepend                0.006849   0.000000   0.006849 (  0.006850)
interpolation          0.055978   0.000000   0.055978 (  0.055986)
```
---

#### String Concat Capacity :: with vs without cap
```
                           user     system      total        real
with capacity          0.091048   0.000000   0.091048 (  0.091051)
without capacity       0.091491   0.000000   0.091491 (  0.091496)
```
---

#### String End With :: regex vs end_with
```
                           user     system      total        real
regex =~               1.112777   0.000000   1.112777 (  1.112793)
regex match            0.802999   0.000000   0.802999 (  0.803009)
end_with               0.454650   0.000000   0.454650 (  0.454658)
```
---

#### String Include :: regex vs index vs include
```
                           user     system      total        real
regex =~ with ends     1.137875   0.000000   1.137875 (  1.137889)
regex =~               0.939656   0.000000   0.939656 (  0.939667)
regex match            0.613510   0.000000   0.613510 (  0.613523)
include                0.581661   0.000000   0.581661 (  0.581669)
