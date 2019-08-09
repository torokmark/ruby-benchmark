### Goal

This repo is intended to be the place of benchmarked ruby codes.

### Benchmark

Benchmark is a Ruby module to measure the performance of a code or a sample. 

### Results

---

#### Object nil check :: nil vs == vs .nil?
```
                           user     system      total        real
if nil else            0.289422   0.000045   0.289467 (  0.289472)
unless nil             0.274994   0.000000   0.274994 (  0.275007)
==                     0.314677   0.000000   0.314677 (  0.314693)
.nil?                  0.323593   0.000000   0.323593 (  0.323600)
```
---

#### Integer Increase check :: next vs += vs = +
```
                           user     system      total        real
.next                  0.215632   0.000000   0.215632 (  0.215641)
+=                     0.184815   0.000000   0.184815 (  0.184821)
= +                    0.186315   0.000000   0.186315 (  0.186323)
```
---

#### Loops :: break if vs while vs until vs do-while vs for vs times
```
                           user     system      total        real
break if               0.298159   0.000000   0.298159 (  0.298164)
while                  0.168136   0.000000   0.168136 (  0.168140)
until                  0.170434   0.000000   0.170434 (  0.170440)
do-while               0.169096   0.000000   0.169096 (  0.169099)
for                    0.293484   0.000000   0.293484 (  0.293492)
times                  0.275150   0.000000   0.275150 (  0.275156)
each                   0.274378   0.000000   0.274378 (  0.274384)
```
---

#### Statement Modifier check :: if ... vs ... if
```
                           user     system      total        real
if ...                 0.185258   0.000019   0.185277 (  0.185281)
... if                 0.187638   0.000000   0.187638 (  0.187642)
unless ...             0.187996   0.000000   0.187996 (  0.188010)
... unless             0.187703   0.000000   0.187703 (  0.187711)
```
---

#### Array Create check :: new vs []
```
                           user     system      total        real
[]                     0.249551   0.000013   0.249564 (  0.249571)
new                    0.492069   0.000000   0.492069 (  0.492206)
```
---

#### Array Create with values
```
                           user     system      total        real
[*..]                  0.158053   0.035978   0.194031 (  0.194037)
(..).to_a              0.135544   0.015992   0.151536 (  0.151801)
Array(..)              0.127350   0.023987   0.151337 (  0.173017)
Array.new(n, &:next)   0.316512   0.016014   0.332526 (  0.332534)
```
---

#### Array Empty check :: == vs .empty?
```
                           user     system      total        real
==                     1.327196   0.007977   1.335173 (  1.335311)
.empty?                0.621629   0.000000   0.621629 (  0.621641)
```
---

#### Array Push check :: push vs append vs <<
```
                           user     system      total        real
push                   0.349599   0.000000   0.349599 (  0.349610)
append                 0.348777   0.000000   0.348777 (  0.348786)
<<                     0.293359   0.000000   0.293359 (  0.293364)
```
---

#### Array Concat check :: + vs concat
```
                           user     system      total        real
+                      0.737956   0.000000   0.737956 (  0.738084)
concat                 0.934131   0.000000   0.934131 (  0.934153)
```
---

#### Array First check :: first vs take vs slice
```
                           user     system      total        real
[]                     0.341547   0.000000   0.341547 (  0.341553)
first                  0.327909   0.000000   0.327909 (  0.328044)
take                   0.340037   0.000000   0.340037 (  0.340047)
slice                  0.384472   0.000000   0.384472 (  0.384478)
```
---

#### Array Find check :: find_index vs index
```
                           user     system      total        real
find_index             1.223887   0.000000   1.223887 (  1.224024)
index                  1.278570   0.000000   1.278570 (  1.278638)
```
---

#### Array Size check :: length vs size
```
                           user     system      total        real
size                   0.158739   0.000000   0.158739 (  0.158745)
length                 0.160795   0.000000   0.160795 (  0.160801)
```
---

#### Array Multiplication check :: * vs concat vs push
```
                           user     system      total        real
*                      0.009856   0.007945   0.017801 (  0.017807)
concat                 0.317438   0.008017   0.325455 (  0.327402)
push                   0.327907   0.016000   0.343907 (  0.345622)
flattern               0.833131   0.026177   0.859308 (  0.859338)
```
---

#### Array Branch Prediction check :: sorted vs unsorted
```
                           user     system      total        real
sorted                 0.198496   0.000000   0.198496 (  0.198497)
unsorted               0.220462   0.000000   0.220462 (  0.220470)
```
---

#### Hash Create
```
                           user     system      total        real
{}                     0.226806   0.003969   0.230775 (  0.230780)
new                    1.387572   0.000054   1.387626 (  1.387674)
```
---

#### Hash Empty
```
                           user     system      total        real
==                     0.348411   0.000000   0.348411 (  0.348482)
keys == []             6.861634   0.024025   6.885659 (  6.899134)
length                 0.202894   0.000000   0.202894 (  0.202896)
empty?                 0.175827   0.000000   0.175827 (  0.175834)
any?                   1.147780   0.000000   1.147780 (  1.147804)
<=                     0.318174   0.000000   0.318174 (  0.318186)
eql?{}                 0.300092   0.000000   0.300092 (  0.300097)
{}.eql?                0.304485   0.000000   0.304485 (  0.304497)
```
---

#### Hash Add
```
                           user     system      total        real
[]                     0.368517   0.000000   0.368517 (  0.368526)
store                  0.375573   0.031975   0.407548 (  0.407558)
merge                  0.773256   0.016015   0.789271 (  0.789291)
```
---

#### Hash Delete
```
                           user     system      total        real
delete                 1.779143   0.000000   1.779143 (  1.779179)
delete_if              1.953289   0.016003   1.969292 (  1.969318)
```
---

#### Hash Delete All
```
                           user     system      total        real
{}                     1.503435   0.000000   1.503435 (  1.503467)
clear                  1.463241   0.000000   1.463241 (  1.463255)
delete_if              2.162543   0.000000   2.162543 (  2.162563)
reject                 2.166870   0.000000   2.166870 (  2.166903)
```
---

#### Hash Each
```
                           user     system      total        real
each                   4.525632   0.000000   4.525632 (  4.525676)
each_pair              4.319747   0.000000   4.319747 (  4.319790)
each_key               4.255643   0.000000   4.255643 (  4.255699)
keys                   4.040172   0.000000   4.040172 (  4.040214)
```
---

#### Hash Get
```
                           user     system      total        real
[]                     0.240220   0.000000   0.240220 (  0.240223)
fetch                  0.303289   0.000000   0.303289 (  0.303298)
dig                    0.291008   0.000000   0.291008 (  0.291020)
```
---

#### Hash Has Key
```
                           user     system      total        real
[]                     0.349962   0.000000   0.349962 (  0.349969)
.has_key?              0.447044   0.000000   0.447044 (  0.447055)
.key?                  0.412049   0.000000   0.412049 (  0.412056)
.include?              0.373655   0.000000   0.373655 (  0.373662)
.member?               0.370867   0.000000   0.370867 (  0.370875)
```
---

#### Hash Select Specific
```
                           user     system      total        real
keep_if                0.247874   0.000000   0.247874 (  0.247880)
select                 0.517125   0.000000   0.517125 (  0.517137)
delete_if              0.282292   0.000000   0.282292 (  0.282299)
slice                  0.932576   0.000000   0.932576 (  0.932589)
```
---

#### Hash Size
```
                           user     system      total        real
size                   0.164398   0.000000   0.164398 (  0.164403)
length                 0.162099   0.000000   0.162099 (  0.162101)
```
---

#### String Create :: string lit vs new vs new + string lit
```
                           user     system      total        real
string literal         0.236834   0.000000   0.236834 (  0.236839)
new                    0.428730   0.000000   0.428730 (  0.428736)
new + string lit       0.967768   0.000000   0.967768 (  0.967788)
```
---

#### String Concat :: + vs += vs << vs concat vs prepend vs interpolation
```
                           user     system      total        real
= +                    0.014046   0.000000   0.014046 (  0.014050)
+=                     0.009382   0.000000   0.009382 (  0.009387)
<<                     0.000779   0.000000   0.000779 (  0.000779)
concat                 0.000896   0.000000   0.000896 (  0.000896)
prepend                0.007321   0.000000   0.007321 (  0.007321)
interpolation          0.056461   0.000000   0.056461 (  0.056467)
```
---

#### String Concat Capacity :: with vs without cap
```
                           user     system      total        real
with capacity          0.090962   0.000000   0.090962 (  0.090967)
without capacity       0.090428   0.000000   0.090428 (  0.090433)
```
---

#### String End With :: regex vs end_with
```
                           user     system      total        real
regex =~               1.111580   0.000000   1.111580 (  1.111597)
regex match            0.801556   0.000000   0.801556 (  0.801572)
end_with               0.446056   0.000000   0.446056 (  0.446064)
```
---

#### String Include :: regex vs index vs include
```
                           user     system      total        real
regex =~ with ends     1.136864   0.000000   1.136864 (  1.136877)
regex =~               0.943140   0.000000   0.943140 (  0.943151)
regex match            0.619866   0.000000   0.619866 (  0.619875)
include                0.578103   0.000000   0.578103 (  0.578112)
