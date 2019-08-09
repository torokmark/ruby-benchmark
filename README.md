### Goal

This repo is intended to be the place of benchmarked ruby codes.

### Benchmark

Benchmark is a Ruby module to measure the performance of a code or a sample. 

### Results

#### Object nil check :: nil vs == vs .nil?
```
                           user     system      total        real
if nil else            0.290422   0.000000   0.290422 (  0.290481)
unless nil             0.276650   0.000000   0.276650 (  0.276662)
==                     0.313712   0.000000   0.313712 (  0.313770)
.nil?                  0.323489   0.000000   0.323489 (  0.323496)
```
---

#### Integer Increase check :: next vs += vs = +
```
                           user     system      total        real
.next                  0.220969   0.000000   0.220969 (  0.220976)
+=                     0.194613   0.000000   0.194613 (  0.194635)
= +                    0.194427   0.000000   0.194427 (  0.194436)
```
---

#### Loops :: break if vs while vs until vs do-while vs for vs times
```
                           user     system      total        real
break if               0.298613   0.000000   0.298613 (  0.298619)
while                  0.167709   0.000000   0.167709 (  0.167712)
until                  0.169775   0.000000   0.169775 (  0.169780)
do-while               0.171489   0.000000   0.171489 (  0.171495)
for                    0.299963   0.000000   0.299963 (  0.299969)
times                  0.284365   0.000000   0.284365 (  0.284371)
each                   0.285509   0.000000   0.285509 (  0.285514)
```
---

#### Statement Modifier check :: if ... vs ... if
```
                           user     system      total        real
if ...                 0.199110   0.000000   0.199110 (  0.199115)
... if                 0.188755   0.000000   0.188755 (  0.188812)
unless ...             0.188824   0.000000   0.188824 (  0.188830)
... unless             0.187335   0.000000   0.187335 (  0.187340)
```
---

#### Array Create check :: new vs []
```
                           user     system      total        real
[]                     0.250152   0.003987   0.254139 (  0.254143)
new                    0.485265   0.000009   0.485274 (  0.485279)
```
---

#### Array Create with values
```
                           user     system      total        real
[*..]                  0.162543   0.027994   0.190537 (  0.190547)
(..).to_a              0.144029   0.008001   0.152030 (  0.152259)
Array(..)              0.166892   0.011987   0.178879 (  0.209790)
Array.new(n, &:next)   0.315126   0.024052   0.339178 (  0.339190)
```
---

#### Array Empty check :: == vs .empty?
```
                           user     system      total        real
==                     1.362669   0.007974   1.370643 (  1.371385)
.empty?                0.709619   0.000000   0.709619 (  0.710086)
```
---

#### Array Push check :: push vs append vs <<
```
                           user     system      total        real
push                   0.357625   0.000000   0.357625 (  0.357661)
append                 0.383860   0.000000   0.383860 (  0.384026)
<<                     0.351985   0.000000   0.351985 (  0.352290)
```
---

#### Array Concat check :: + vs concat
```
                           user     system      total        real
+                      0.978843   0.007975   0.986818 (  0.987668)
concat                 1.225952   0.000000   1.225952 (  1.227166)
```
---

#### Array First check :: first vs take vs slice
```
                           user     system      total        real
[]                     0.385154   0.000000   0.385154 (  0.385365)
first                  0.337695   0.000000   0.337695 (  0.337730)
take                   0.349184   0.000000   0.349184 (  0.349191)
slice                  0.398612   0.000000   0.398612 (  0.398658)
```
---

#### Array Find check :: find_index vs index
```
                           user     system      total        real
find_index             1.230141   0.000000   1.230141 (  1.230200)
index                  1.254516   0.000000   1.254516 (  1.254753)
```
---

#### Array Size check :: length vs size
```
                           user     system      total        real
size                   0.166923   0.000000   0.166923 (  0.166926)
length                 0.165816   0.000000   0.165816 (  0.165855)
```
---

#### Array Multiplication check :: * vs concat vs push
```
                           user     system      total        real
*                      0.004973   0.011962   0.016935 (  0.016939)
concat                 0.324901   0.004009   0.328910 (  0.330831)
push                   0.308204   0.010036   0.318240 (  0.320060)
flattern               0.793236   0.014160   0.807396 (  0.807442)
```
---

#### Array Branch Prediction check :: sorted vs unsorted
```
                           user     system      total        real
sorted                 0.189569   0.000000   0.189569 (  0.189627)
unsorted               0.220362   0.000000   0.220362 (  0.220408)
```
---

#### Hash Create
```
                           user     system      total        real
{}                     0.275384   0.007972   0.283356 (  0.283795)
new                    1.288041   0.008003   1.296044 (  1.296831)
```
---

#### Hash Empty
```
                           user     system      total        real
==                     0.350430   0.000000   0.350430 (  0.350472)
keys == []             6.965498   0.035970   7.001468 (  7.005811)
length                 0.249346   0.000000   0.249346 (  0.249588)
empty?                 0.213057   0.000000   0.213057 (  0.213228)
any?                   1.399739   0.004061   1.403800 (  1.405035)
<=                     0.378254   0.000000   0.378254 (  0.378483)
eql?{}                 0.342737   0.000000   0.342737 (  0.342894)
{}.eql?                0.349742   0.000000   0.349742 (  0.349969)
```
---

#### Hash Add
```
                           user     system      total        real
[]                     0.451868   0.011990   0.463858 (  0.464155)
store                  0.487819   0.035994   0.523813 (  0.524459)
merge                  0.819910   0.079991   0.899901 (  0.900978)
```
---

#### Hash Delete
```
                           user     system      total        real
delete                 1.927137   0.007994   1.935131 (  1.935363)
delete_if              2.248943   0.007968   2.256911 (  2.256941)
```
---

#### Hash Delete All
```
                           user     system      total        real
{}                     1.546355   0.000029   1.546384 (  1.546407)
clear                  1.642932   0.000000   1.642932 (  1.642948)
delete_if              2.574544   0.003981   2.578525 (  2.578568)
reject                 2.522632   0.000028   2.522660 (  2.522695)
```
---

#### Hash Each
```
                           user     system      total        real
each                   5.245060   0.000000   5.245060 (  5.245111)
each_pair              4.632878   0.000000   4.632878 (  4.632954)
each_key               4.235510   0.000000   4.235510 (  4.235549)
keys                   4.151123   0.000000   4.151123 (  4.151158)
```
---

#### Hash Get
```
                           user     system      total        real
[]                     0.254392   0.000000   0.254392 (  0.254403)
fetch                  0.316008   0.000000   0.316008 (  0.316018)
dig                    0.301514   0.000002   0.301516 (  0.301522)
```
---

#### Hash Has Key
```
                           user     system      total        real
size                   0.191403   0.000007   0.191410 (  0.191416)
length                 0.179511   0.000000   0.179511 (  0.179518)
```
---

#### Hash Select Specific
```
                           user     system      total        real
keep_if                0.235689   0.000000   0.235689 (  0.235696)
select                 0.451456   0.000000   0.451456 (  0.451464)
delete_if              0.242552   0.000000   0.242552 (  0.242559)
slice                  0.891096   0.000000   0.891096 (  0.891110)
```
---

#### Hash Size
```
                           user     system      total        real
[]                     0.252137   0.000000   0.252137 (  0.252143)
fetch                  0.315552   0.000000   0.315552 (  0.315560)
dig                    0.300773   0.000000   0.300773 (  0.300786)
```
---

#### String Create :: string lit vs new vs new + string lit
```
                           user     system      total        real
string literal         0.264636   0.000002   0.264638 (  0.264649)
new                    0.464109   0.000000   0.464109 (  0.464121)
new + string lit       0.889114   0.000000   0.889114 (  0.889127)
```
---

#### String Concat :: + vs += vs << vs concat vs prepend vs interpolation
```
                           user     system      total        real
= +                    0.014198   0.000000   0.014198 (  0.014205)
+=                     0.010170   0.000000   0.010170 (  0.010175)
<<                     0.000799   0.000000   0.000799 (  0.000799)
concat                 0.000932   0.000000   0.000932 (  0.000932)
prepend                0.008206   0.000000   0.008206 (  0.008212)
interpolation          0.066009   0.000000   0.066009 (  0.066018)
```
---

#### String Concat Capacity :: with vs without cap
```
                           user     system      total        real
with capacity          0.097570   0.000000   0.097570 (  0.097574)
without capacity       0.095776   0.000000   0.095776 (  0.095783)
```
---

#### String End With :: regex vs end_with
```
                           user     system      total        real
regex =~               1.168801   0.000000   1.168801 (  1.168821)
regex match            0.838661   0.000000   0.838661 (  0.838672)
end_with               0.470921   0.000000   0.470921 (  0.470938)
```
---

#### String Include :: regex vs index vs include
```
                           user     system      total        real
regex =~ with ends     1.186346   0.000000   1.186346 (  1.186380)
regex =~               0.999080   0.000001   0.999081 (  0.999111)
regex match            0.652558   0.000000   0.652558 (  0.652581)
include                0.606256   0.000000   0.606256 (  0.606264)
