select reason, count(reason) as amount from ASASON.BLACKLIST group by reason order by count(reason) DESC
