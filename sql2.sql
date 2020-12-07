TD9

Q1
select count (distinct np) from produit

Q2
select count (distinct np) as nbProduits from achat where ncli=103

Q3
select ncli, count (distinct np) as nbProduits from achat 
group by ncli

Q4
select ncli from
(select ncli, count (distinct np) as nbProduits from achat 
group by ncli)
where nbProduits>2

Q5
select ncli from
(select ncli, count(distinct np) as achatp
from achat
group by ncli)
where achatp=(select count (distinct np)from achat )

Q6