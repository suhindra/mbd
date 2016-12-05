select nonota, tgljual, sum(kodebrg), sum(jmljual) from jual group by nonota;
select nonota, sum(jmljual) from jual group by nonota;
select a.namabrg, sum(b.jmljual) from barang a join jual b on a.kodebrg = b.kodebrg group by b.nonota, YEAR(b.tgljual), MONTH(b.tgljual)  order by sum(b.jmljual) DESC;
select a.namabrg, sum(b.jmljual) from jual b join barang a on a.kodebrg = b.kodebrg group by a.kodebrg;
select DAY(tgljual), MONTH(tgljual), YEAR(tgljual), sum(jmljual) from jual group by YEAR(tgljual), MONTH(tgljual), DAY(tgljual);
select MONTH(tgljual), YEAR(tgljual), sum(jmljual) from jual group by YEAR(tgljual), MONTH(tgljual), DAY(tgljual);
