# final_project-st000an
final_project-st000an created by GitHub Classroom

選PROJECT17
主題
製造一個nxn矩陣
其數字由1從最中間順時鐘往外依序寫下1 2 3 ....到n平方

EXAMPLE:

n=1

1

n=2

1 2　

4 3

n=3

7 8 9

6 1 2

5 4 3

n=4

07  08  09  10 

06  01  02  11

05  04  03  12

16  15  14  13

並計算

1:試寫一 matlab 程式產生nXn的此種矩陣.

2:給定nXn 的此種矩陣, 求其對角線及反對角線之總和. 例如以上 5×5矩陣其值為 101

2-finerversion:同2 但讓程式沒有「製造出矩陣」此一步驟

3:給定 200×200的此矩陣, 將所有質數點位置設為黑色, 非質數點位置設為白色, 以 image 顯示出此矩陣樣子.

對應程式

1:nxnMetrix1.m

2:nxnMetrix2.m

2-finerversion:nxnMetrix2_finerversion.m

3:nxnMetrix3.m

講解

1:nxnMetrix1.m

想法:
先不管填了什麼數字，想像一隻老鼠之類的東西從起點開始順時針慢慢往外繞圈走
當他從起點開始往東走一步，再往南走一步，再往西走一步，那他的腳印即是一個製造方法與我們想要的矩陣相似的2x2的矩陣
當他從起點開始往東走一步，再往南走一步，再往西走兩步，再往北走兩步、再往東走兩步，那他的腳印即是一個製造方法與我們想要的矩陣相似的3x3的矩陣
也就是說，我們從a=1到n-2 進行「往某方向走a步」兩次，其中的「某方向」是有規律的順時針變換，即每次走完都右轉，最後再做三次的「往某方向走n-1步」，就能造出一nxn的所求矩陣
最後我們只需要讓這隻老鼠的腳印上面包含一個會輸出計步器結果的印章就好了

special case:
如果n是偶數 我們讓中心點從中間的2*2矩陣的左上角開始

程式:

input:n

output1: nxn 的矩陣  這個矩陣有下列性質:他從他的中間開始是1 接下來順時針依序填入2、3、4...到n平方

所以程式就讓他(老鼠)的座標從中心開始往外跑，N=1~n-2 進行兩次「走N步後轉彎」，然後再走三次「走n-1步後轉彎」，其中用direction代表他朝向哪邊，每次走完direction+1並mod4 這樣就能讓1代表向東 2代表向南 3代表向西 0代表向北，而向南就是每次移動座標時縱軸+1 向北就是-1 向東就是橫軸+1 向西就是-1，這樣就能造出這個矩陣了


2:nxnMetrix2.m

input:n

output: 上述矩陣之對角線以及反對角線之和

做法:

直接把1:nxnMetrix1.m產生的矩陣丟進迴圈一格一格考慮他的座標有沒有落在對角線或反對角線上，如果符合就加起來。


2-finerversion:nxnMetrix2_finerversion.m

想法：因為偶數跟奇數時中心的情況不一樣，所以直接分開討論
觀察一下不同ｎ對應的對角線跟反對角線和的級數

先看奇數

ｎ＝１：

Ｓ１＝１

ｎ＝３：

Ｓ３＝１＋（３＋５＋７＋９）＝Ｓ１＋（（１＋２＊１）＋（１＋２＊２）＋（１＋２＊３）＋（１＋２＊４））＝Ｓ１＋（ＳＩＧＮＡ　ｉｉ＝１到４　Ｓ１的最後一項＋（ｎ－１）＊ｉｉ））

ｎ＝５：

Ｓ５＝１＋（３＋５＋７＋９）＋（１３＋１７＋２１＋２５﹚＝Ｓ３＋（ＳＩＧＮＡ　ｉｉ＝１到４　Ｓ３的最後一項＋（ｎ－１）＊ｉｉ））

ｎ＝任意奇數：

Ｓｎ＝（Ｓｎ－２）＋（ＳＩＧＮＡ　ｉｉ＝１到４　Ｓｎ－２的最後一項＋（ｎ－１）＊ｉｉ））


再看偶數

ｎ＝２：

Ｓ２＝１＋２＋３＋４

ｎ＝４：

Ｓ４＝１＋２＋３＋４＋７＋１０＋１３＋１６＝Ｓ２＋（（４＋３＊１）＋（４＋３＊２）＋（４＋３＊３）＋（４＋３＊４））

ｎ＝任意偶數：

Ｓｎ＝（Ｓｎ－２）＋（ＳＩＧＮＡ　ｉｉ＝１到４　Ｓｎ－２的最後一項＋（ｎ－１）＊ｉｉ））

所以可以看出它的規律非常簡單，只差在偶數跟奇數的中心點不一樣
就可以直接打程式了
程式：
先判斷ｎ是偶數還是奇數
然後各自進不同的起始點（奇數的話中心是１　偶數的話中心是　１　２）

　　　　  　　　　　　　　　　　　　　　　　　　　　　　　４　３
跟一個紀錄目前級數最後一項的變數，若奇數則起始值是１，偶數的話是４
然後讓這個變數不斷紀錄每次做的最後一項的大小，並照著上述的規則一路往上加到ｎ就可以了


3:nxnMetrix3.m

output: 20*20的此種矩陣中，質數點設為黑色，其餘設為白色的圖

暴力解：先導入ｃｏｌｏｒｍａｐ用1:nxnMetrix1.m的程式造出２０＊２０的此矩陣
叫出兩個ｆｏｒ迴圈，判斷每個值是質數還是不是質數，並開一個２０＊２０的新的矩陣Ｙ，如果是質數填入１（黑色），不是的話填入８１（白色）
然後ｉｍａｇｅ這個Ｙ，結束
