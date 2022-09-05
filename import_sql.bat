del archiwum_hop_bec.sqlite3
sqlite3.exe archiwum_hop_bec.sqlite3 ".read archiwum_hop_bec.sql"

@sqlite3.exe archiwum_hop_bec.sqlite3 -cmd ".mode column" -cmd ".headers on" "select count(distinct nr_notowania) as RAZEM_NOTOWAN from notowania"
@echo.
@sqlite3.exe archiwum_hop_bec.sqlite3 -cmd ".mode column" -cmd ".headers on" "SELECT DISTINCT artysta,count(*) from notowania where pozycja=1 GROUP by artysta order by 2 desc limit 10"


