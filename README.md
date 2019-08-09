### Goal

This repo is intended to be the place of benchmarked ruby codes.

### Benchmark

Benchmark is a Ruby module to measure the performance of a code or a sample. 

### Results

```
---

#### Object nil check :: nil vs == vs .nil?
```
                           user     system      total        real
if nil else            0.289502   0.000000   0.289502 (  0.289506)
unless nil             0.275551   0.000000   0.275551 (  0.275564)
==                     0.312092   0.000000   0.312092 (  0.312099)
.nil?                  0.324460   0.000000   0.324460 (  0.324477)
```
---

#### Integer Increase check :: next vs += vs = +
```
                           user     system      total        real
.next                  0.219744   0.000000   0.219744 (  0.219761)
+=                     0.187112   0.000000   0.187112 (  0.187121)
= +                    0.187025   0.000000   0.187025 (  0.187027)
```
---

#### Loops :: break if vs while vs until vs do-while vs for vs times
```
                           user     system      total        real
break if               0.306329   0.000000   0.306329 (  0.306335)
while                  0.168044   0.000000   0.168044 (  0.168048)
until                  0.169994   0.000000   0.169994 (  0.170006)
do-while               0.169255   0.000000   0.169255 (  0.169261)
for                    0.288848   0.000000   0.288848 (  0.288853)
times                  0.275872   0.000000   0.275872 (  0.275879)
each                   0.274095   0.000000   0.274095 (  0.274111)
```
---

#### Statement Modifier check :: if ... vs ... if
```
                           user     system      total        real
if ...                 0.188801   0.000004   0.188805 (  0.188809)
... if                 0.187123   0.000000   0.187123 (  0.187137)
unless ...             0.188741   0.000000   0.188741 (  0.188747)
... unless             0.188479   0.000000   0.188479 (  0.188486)
```
---

#### Array Create check :: new vs []
```
                           user     system      total        real
[]                     0.252657   0.000002   0.252659 (  0.252665)
new                    0.478850   0.000000   0.478850 (  0.478873)
```
---

#### Array Create with values
```
                           user     system      total        real
[*..]                  0.163118   0.024005   0.187123 (  0.187128)
(..).to_a              0.143467   0.008000   0.151467 (  0.151703)
Array(..)              0.139040   0.011997   0.151037 (  0.172571)
Array.new(n, &:next)   0.307292   0.024007   0.331299 (  0.331313)
```
---

#### Array Empty check :: == vs .empty?
```
                           user     system      total        real
==                     1.325114   0.008007   1.333121 (  1.333149)
.empty?                0.625908   0.000000   0.625908 (  0.625924)
```
---

#### Array Push check :: push vs append vs <<
```
                           user     system      total        real
push                   0.351208   0.000000   0.351208 (  0.351228)
append                 0.350589   0.000000   0.350589 (  0.350596)
<<                     0.293441   0.000000   0.293441 (  0.293460)
```
---

#### Array Concat check :: + vs concat
```
                           user     system      total        real
+                      0.740091   0.000000   0.740091 (  0.740103)
concat                 0.929381   0.000000   0.929381 (  0.929406)
```
---

#### Array First check :: first vs take vs slice
```
                           user     system      total        real
[]                     0.342826   0.000000   0.342826 (  0.342845)
first                  0.330439   0.000000   0.330439 (  0.330446)
take                   0.340328   0.000000   0.340328 (  0.340334)
slice                  0.402027   0.000000   0.402027 (  0.402043)
```
---

#### Array Find check :: find_index vs index
```
                           user     system      total        real
find_index             1.221893   0.000000   1.221893 (  1.221919)
index                  1.217917   0.000000   1.217917 (  1.217936)
```
---

#### Array Size check :: length vs size
```
                           user     system      total        real
size                   0.157133   0.000000   0.157133 (  0.157134)
length                 0.157277   0.000000   0.157277 (  0.157278)
```
---

#### Array Multiplication check :: * vs concat vs push
```
                           user     system      total        real
*                      0.008941   0.007950   0.016891 (  0.016894)
concat                 0.303760   0.012001   0.315761 (  0.317433)
push                   0.287262   0.020000   0.307262 (  0.309063)
flattern               0.774576   0.018119   0.792695 (  0.792725)
```
---

#### Array Branch Prediction check :: sorted vs unsorted
```
                           user     system      total        real
sorted                 0.186857   0.000000   0.186857 (  0.186865)
unsorted               0.216913   0.000000   0.216913 (  0.216918)
```
---

#### Hash Create
```
                           user     system      total        real
{}                     0.224506   0.004004   0.228510 (  0.228516)
new                    1.113711   0.000015   1.113726 (  1.113749)
```
---

#### Hash Empty
```
                           user     system      total        real
==                     0.334641   0.000000   0.334641 (  0.334657)
keys == []             5.971414   0.003965   5.975379 (  5.975500)
length                 0.201415   0.000012   0.201427 (  0.201437)
empty?                 0.182170   0.000000   0.182170 (  0.182177)
any?                   1.134470   0.000000   1.134470 (  1.134489)
<=                     0.317952   0.000000   0.317952 (  0.317957)
eql?{}                 0.305314   0.000000   0.305314 (  0.305336)
{}.eql?                0.306556   0.000000   0.306556 (  0.306562)
```
---

#### Hash Add
```
                           user     system      total        real
[]                     0.354768   0.007978   0.362746 (  0.362755)
store                  0.322238   0.032025   0.354263 (  0.354280)
merge                  0.563588   0.060009   0.623597 (  0.623606)
```
---

#### Hash Delete
```
                           user     system      total        real
delete                 1.559551   0.011994   1.571545 (  1.571605)
delete_if              2.018980   0.000000   2.018980 (  2.019016)
```
---

#### Hash Delete All
```
                           user     system      total        real
{}                     1.458260   0.000000   1.458260 (  1.458295)
clear                  1.465988   0.000000   1.465988 (  1.466023)
delete_if              2.173372   0.000000   2.173372 (  2.173425)
reject                 2.125805   0.000000   2.125805 (  2.125845)
```
---

#### Hash Each
```
                           user     system      total        real
each                   4.555271   0.000000   4.555271 (  4.555364)
each_pair              4.558596   0.000000   4.558596 (  4.558685)
each_key               4.107851   0.000000   4.107851 (  4.107933)
keys                   3.857264   0.000000   3.857264 (  3.857332)
```
---

#### Hash Get
```
                           user     system      total        real
[]                     0.237202   0.000000   0.237202 (  0.237218)
fetch                  0.288332   0.000000   0.288332 (  0.288344)
dig                    0.277529   0.000000   0.277529 (  0.277534)
```
---

#### Hash Has Key
```
                           user     system      total        real
[]                     0.230509   0.000000   0.230509 (  0.230522)
fetch                  0.287072   0.000000   0.287072 (  0.287080)
dig                    0.277911   0.000000   0.277911 (  0.277918)
```
---

#### Hash Select Specific
```
                           user     system      total        real
keep_if                0.238552   0.000000   0.238552 (  0.238555)
select                 0.421921   0.000000   0.421921 (  0.421941)
delete_if              0.238971   0.000000   0.238971 (  0.238979)
slice                  0.857174   0.000000   0.857174 (  0.857193)
```
---

#### Hash Size
```
                           user     system      total        real
size                   0.163245   0.000000   0.163245 (  0.163246)
length                 0.162239   0.000000   0.162239 (  0.162241)
```
---

#### String Create :: string lit vs new vs new + string lit
```
                           user     system      total        real
string literal         0.240147   0.000000   0.240147 (  0.240153)
new                    0.429959   0.000000   0.429959 (  0.429975)
new + string lit       0.847422   0.000000   0.847422 (  0.847445)
```
---

#### String Concat :: + vs += vs << vs concat vs prepend vs interpolation
```
                           user     system      total        real
= +                    0.013972   0.000000   0.013972 (  0.013977)
+=                     0.009234   0.000000   0.009234 (  0.009238)
<<                     0.000725   0.000000   0.000725 (  0.000726)
concat                 0.000837   0.000000   0.000837 (  0.000837)
prepend                0.006924   0.000000   0.006924 (  0.006924)
interpolation          0.056157   0.000000   0.056157 (  0.056163)
```
---

#### String Concat Capacity :: with vs without cap
```
                           user     system      total        real
with capacity          0.090721   0.000000   0.090721 (  0.090726)
without capacity       0.090126   0.000000   0.090126 (  0.090129)
```
---

#### String End With :: regex vs end_with
```
                           user     system      total        real
regex =~               1.113891   0.000000   1.113891 (  1.113914)
regex match            0.804212   0.000000   0.804212 (  0.804234)
end_with               0.442773   0.000000   0.442773 (  0.442781)
```
---

#### String Include :: regex vs index vs include
```
                           user     system      total        real
regex =~ with ends     1.132089   0.000000   1.132089 (  1.132129)
regex =~               0.938878   0.000000   0.938878 (  0.938898)
regex match            0.617729   0.000000   0.617729 (  0.617747)
include                0.576627   0.000000   0.576627 (  0.576636)
