SELECT uniqExact(x), length(groupUniqArray(x)), arrayUniq(groupArray(x)), uniqExact(y), arrayUniq(groupArray(y)), uniqExact(concat(toString(x), '_', y)), arrayUniq(groupArray(x), groupArray(y)) FROM (SELECT round(log(intHash32(number))) AS x, toString(round(cbrt(intHash32(number)))) AS y FROM system.numbers LIMIT 10000);
