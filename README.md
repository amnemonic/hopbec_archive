# hopbec_archive
Archive of HOP-BĘC music charts from Polish radio station RMF-FM aired in years from 1997 to 2002.

Data comes from text files shared by Marcin Jędrych on his [homepage](http://www.jedrych.pl/HB/). I fixed alot of typos and syntactic errors.

### Sample queries

to show top artist in 2000 run query:
```sql
SELECT DISTINCT artysta || ' - ' || tytul as Tytul ,count(*) as TOP_Cnt from notowania 
join daty on notowania.nr_notowania=daty.nr_notowania
where pozycja=1 and daty.rok=2000
GROUP by 1
order by 2 desc
limit 10
```


|Tytul                                                |TOP_Cnt|
|-----------------------------------------------------|--|
|Enrique Iglesias - Be With You                       |30|
|Bomfunk MC's - Freestyler                            |23|
|Bon Jovi - It's My Life                              |21|
|Britney Spears - Born To Make You Happy              |19|
|Eminem - Stan                                        |17|
|Britney Spears - Lucky                               |14|
|Backstreet Boys - Show Me The Meaning Of Being Lonely|14|
|ATC - Around The World                               |14|
|Britney Spears - Oops!...I Did It Again              |11|
|Music Instructor feat. Dean - Super Fly (Upper MC)   |9 |


