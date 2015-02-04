Group member: Anna Mengjie Yu (my3852),  Duy Vu (dhv242)
DV_RProject1
========================================================

This is an R Markdown document. Markdown is a simple formatting syntax for authoring web pages (click the **MD** toolbar button for help on Markdown).

When you click the **Knit HTML** button a web page will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


```r
source("../01 Data/create_data_frame.R", echo = TRUE)
```

```
## 
## > library("bitops", lib.loc = "/Library/Frameworks/R.framework/Versions/3.1/Resources/library")
## 
## > library("ggplot2", lib.loc = "/Library/Frameworks/R.framework/Versions/3.1/Resources/library")
## 
## > library("gplots", lib.loc = "/Library/Frameworks/R.framework/Versions/3.1/Resources/library")
```

```
## 
## Attaching package: 'gplots'
## 
## The following object is masked from 'package:stats':
## 
##     lowess
```

```
## 
## > library("grid", lib.loc = "/Library/Frameworks/R.framework/Versions/3.1/Resources/library")
## 
## > library("plyr", lib.loc = "/Library/Frameworks/R.framework/Versions/3.1/Resources/library")
## 
## > library("RCurl", lib.loc = "/Library/Frameworks/R.framework/Versions/3.1/Resources/library")
## 
## > library("reshape2", lib.loc = "/Library/Frameworks/R.framework/Versions/3.1/Resources/library")
## 
## > df_customers <- data.frame(eval(parse(text = substring(getURL(URLencode("http://129.152.144.84:5001/rest/native/?query=\" select * from customers\"" .... [TRUNCATED] 
## 
## > df_customers
##    CUSTOMER_ID CUSTOMER_FIRST_NAME CUSTOMER_LAST_NAME
## 1            1               Korah             Blanca
## 2            2                Yash            Randall
## 3            3           Johnathon          Millerton
## 4            4             Mikayla             Damion
## 5            5             Kendall              Mayte
## 6            6             Kaitlin           Hostlery
## 7            7               Derek           Chaddick
## 8            8             Deborah             Damien
## 9            9              Karina               Lacy
## 10          10                Kurt           Nickalus
## 11          11              Kelsey            Eulalia
## 12          12              Anders           Rohansen
## 13          13              Thalia            Neftaly
## 14          14             Gonzalo             Keeton
## 15          15                Ania              Irvin
## 16          16              Dakota             Baylee
## 17          17              Samuel           Jacobsen
## 18          18              Justin              Javen
## 19          19                Kyle            Marissa
## 20          20               Erick            Kaleigh
## 21          21              Marvin            Quintin
## 22          22              Rashad          Holbrooke
## 23          23              Trisha               Anum
## 24          24              Julian             Carson
## 25          25             Kirsten              Story
##                  CUSTOMER_ADDRESS    CUSTOMER_CITY CUSTOMER_STATE
## 1                 1555 W Lane Ave         Columbus             OH
## 2           11 E Rancho Madera Rd          Madison             WI
## 3                  60 Madison Ave         New York             NY
## 4                2021 K Street Nw       Washington             DC
## 5           4775 E Miami River Rd           Cleves             OH
## 6           3250 Spring Grove Ave       Cincinnati             OH
## 7              9022 E Merchant Wy        Fairfield             IA
## 8                 415 E Olive Ave           Fresno             CA
## 9                 882 W Easton Wy      Los Angeles             CA
## 10        28210 N Avenue Stanford         Valencia             CA
## 11                7833 N Ridge Rd       Sacramento             CA
## 12            12345 E 67th Ave NW      Takoma Park             MD
## 13                2508 W Shaw Ave           Fresno             CA
## 14                 12 Daniel Road        Fairfield             NJ
## 15             1099 N Farcourt St           Orange             CA
## 16           1033 N Sycamore Ave.      Los Angeles             CA
## 17              3433 E Widget Ave        Palo Alto             CA
## 18                 828 S Broadway        Tarrytown             NY
## 19                789 E Mercy Ave          Phoenix             AZ
## 20 Five Lakepointe Plaza, Ste 500        Charlotte             NC
## 21      2677 Industrial Circle Dr         Columbus             OH
## 22           3467 W Shaw Ave #103           Fresno             CA
## 23               627 Aviation Way Manhatttan Beach             CA
## 24                372 San Quentin    San Francisco             CA
## 25          2401 Wisconsin Ave NW       Washington             DC
##    CUSTOMER_ZIP CUSTOMER_PHONE CUSTOMER_FAX
## 1         43221     6145554432   6145553920
## 2         53707     2095551205   2095552262
## 3         10010     2125554800         NULL
## 4         20006     2025555561         NULL
## 5         45002     5135553024         NULL
## 6         45225     8005552128   8005552640
## 7         52556     5155556352         NULL
## 8         93728     5595557888         NULL
## 9         90084     8005557248         NULL
## 10        91355     8055550464   8055556608
## 11        95887     2095557500   2095551302
## 12        24512     3385556736         NULL
## 13        93711     5595556352         NULL
## 14         7004     2015559742         NULL
## 15        92807     7145559040         NULL
## 16        90038     2135554322         NULL
## 17        92711     4155553536         NULL
## 18        10591     8005550080         NULL
## 19        85038     9475554304         NULL
## 20        28217     7045553664         NULL
## 21        43260     6145558528   6145557504
## 22        93711     5595558400   5595558400
## 23        90266     3105552640         NULL
## 24        94161     6175550464         NULL
## 25        20559     2065559115         NULL
## 
## > df_items <- data.frame(eval(parse(text = substring(getURL(URLencode("http://129.152.144.84:5001/rest/native/?query=\" select * from items\""), 
## +    .... [TRUNCATED] 
## 
## > df_items
##    ITEM_ID                                       TITLE
## 1        1                            Umami In Concert
## 2        2                             Race Car Sounds
## 3        3                       No Rest For The Weary
## 4        4 More Songs About Structures and Comestibles
## 5        5               On The Road With Burt Ruggles
## 6        6                            No Fixed Address
## 7        7                                 Rude Noises
## 8        8          Burt Ruggles: An Intimate Portrait
## 9        9                         Zone Out With Umami
## 10      10                                    Etcetera
##                   ARTIST UNIT_PRICE
## 1                  Umami         17
## 2          The Ubernerds         13
## 3  No Rest For The Weary         16
## 4  No Rest For The Weary         17
## 5           Burt Ruggles         17
## 6  Sewed the Vest Pocket         16
## 7              Jess Idie         13
## 8           Burt Ruggles         17
## 9                  Umami         16
## 10               Onn Onn         17
## 
## > df_order_details <- data.frame(eval(parse(text = substring(getURL(URLencode("http://129.152.144.84:5001/rest/native/?query=\" select * from order_de .... [TRUNCATED] 
## 
## > df_order_details
##    ORDER_ID ITEM_ID ORDER_QTY
## 1       381       1         1
## 2       601       9         1
## 3       442       1         1
## 4       523       9         1
## 5       630       5         1
## 6       778       1         1
## 7       693      10         1
## 8       118       1         1
## 9       264       7         1
## 10      607      10         1
## 11      624       7         1
## 12      658       1         1
## 13      800       5         1
## 14      158       3         1
## 15      321      10         1
## 16      687       6         1
## 17      827       6         1
## 18      144       3         1
## 19      264       8         1
## 20      479       1         2
## 21      630       6         2
## 22      796       5         1
## 23       97       4         1
## 24      601       5         1
## 25      773      10         1
## 26      800       1         1
## 27       29      10         1
## 28       70       1         1
## 29       97       8         1
## 30      165       4         1
## 31      180       4         1
## 32      231      10         1
## 33      392       8         1
## 34      413      10         1
## 35      491       6         1
## 36      494       2         1
## 37      606       8         1
## 38      607       3         1
## 39      651       3         1
## 40      703       4         1
## 41      796       2         1
## 42      802       2         1
## 43      802       3         1
## 44      824       7         2
## 45      829       1         1
## 46      550       4         1
## 47      796       7         1
## 48      829       2         1
## 49      693       6         1
## 50       29       3         1
## 51       32       7         1
## 52      242       1         1
## 53      298       1         1
## 54      479       4         1
## 55      548       9         1
## 56      627       9         1
## 57      778       3         1
## 58      687       8         1
## 59       19       5         1
## 60       89       4         1
## 61      242       6         1
## 62      264       4         1
## 63      550       1         1
## 64      631      10         1
## 65      693       7         3
## 66      824       3         1
## 67      829       5         1
## 68      829       9         1
## 
## > df_orders <- data.frame(eval(parse(text = substring(getURL(URLencode("http://129.152.144.84:5001/rest/native/?query=\" select * from orders\""), 
## +  .... [TRUNCATED] 
## 
## > df_orders
##    ORDER_ID CUSTOMER_ID          ORDER_DATE        SHIPPED_DATE
## 1        19           1 2012-10-23 00:00:00 2012-10-28 00:00:00
## 2        29           8 2012-11-05 00:00:00 2012-11-11 00:00:00
## 3        32          11 2012-11-10 00:00:00 2012-11-13 00:00:00
## 4        45           2 2012-11-25 00:00:00 2012-11-30 00:00:00
## 5        70          10 2012-12-28 00:00:00 2013-01-07 00:00:00
## 6        89          22 2013-01-20 00:00:00 2013-01-22 00:00:00
## 7        97          20 2013-01-29 00:00:00 2013-02-02 00:00:00
## 8       118           3 2013-02-24 00:00:00 2013-02-28 00:00:00
## 9       144          17 2013-03-21 00:00:00 2013-03-29 00:00:00
## 10      158           9 2013-04-04 00:00:00 2013-04-20 00:00:00
## 11      165          14 2013-04-11 00:00:00 2013-04-13 00:00:00
## 12      180          24 2013-04-25 00:00:00 2013-05-30 00:00:00
## 13      231          15 2013-06-14 00:00:00 2013-06-22 00:00:00
## 14      242          23 2013-06-24 00:00:00 2013-07-06 00:00:00
## 15      264           9 2013-07-15 00:00:00 2013-07-18 00:00:00
## 16      298          18 2013-08-18 00:00:00 2013-09-22 00:00:00
## 17      321           2 2013-09-09 00:00:00 2013-10-05 00:00:00
## 18      381           7 2013-11-08 00:00:00 2013-11-16 00:00:00
## 19      392          19 2013-11-16 00:00:00 2013-11-23 00:00:00
## 20      413          17 2013-12-05 00:00:00 2014-01-11 00:00:00
## 21      442           5 2013-12-28 00:00:00 2014-01-03 00:00:00
## 22      479           1 2014-01-30 00:00:00 2014-03-03 00:00:00
## 23      491          16 2014-02-08 00:00:00 2014-02-14 00:00:00
## 24      494           4 2014-02-10 00:00:00 2014-02-14 00:00:00
## 25      523           3 2014-03-07 00:00:00 2014-03-15 00:00:00
## 26      548           2 2014-03-22 00:00:00 2014-04-18 00:00:00
## 27      550          17 2014-03-23 00:00:00 2014-04-03 00:00:00
## 28      601          16 2014-04-21 00:00:00 2014-04-27 00:00:00
## 29      606           6 2014-04-25 00:00:00 2014-05-02 00:00:00
## 30      607          20 2014-04-25 00:00:00 2014-05-04 00:00:00
## 31      624           2 2014-05-04 00:00:00 2014-05-09 00:00:00
## 32      627          17 2014-05-05 00:00:00 2014-05-10 00:00:00
## 33      630          20 2014-05-08 00:00:00 2014-05-18 00:00:00
## 34      631          21 2014-05-09 00:00:00 2014-05-11 00:00:00
## 35      651          12 2014-05-19 00:00:00 2014-06-02 00:00:00
## 36      658          12 2014-05-23 00:00:00 2014-06-02 00:00:00
## 37      687          17 2014-06-05 00:00:00 2014-06-08 00:00:00
## 38      693           9 2014-06-07 00:00:00 2014-06-19 00:00:00
## 39      703          19 2014-06-12 00:00:00 2014-06-19 00:00:00
## 40      773          25 2014-07-11 00:00:00 2014-07-13 00:00:00
## 41      778          13 2014-07-12 00:00:00 2014-07-21 00:00:00
## 42      796          17 2014-07-19 00:00:00 2014-07-26 00:00:00
## 43      800          19 2014-07-21 00:00:00 2014-07-28 00:00:00
## 44      802           2 2014-07-21 00:00:00 2014-07-31 00:00:00
## 45      824           1 2014-08-01 00:00:00                null
## 46      827          18 2014-08-02 00:00:00                null
## 47      829           9 2014-08-02 00:00:00                null
```

You can also embed plots, for example:


```r
plot(cars)
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2-1.png) 

