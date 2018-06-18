--list all champions without id-- 
SELECT champion_name, roletype, tier, winrate FROM champion;
--end--

--list all support champions--
SELECT champion_name, roletype, tier, winrate  FROM champion
WHERE roletype = 'Support';
--end--

--list all attack damage champions--
SELECT champion_name, roletype, tier, winrate  FROM champion
WHERE roletype = 'AD Carry';
--end--

--list all mid lane champions--
SELECT champion_name, roletype, tier, winrate  FROM champion
WHERE roletype = 'Mid Lane';
--end--

--list all top lane champions--
SELECT champion_name, roletype, tier, winrate  FROM champion
WHERE roletype = 'Top Lane';
--end--

--list all jungle champions--
SELECT champion_name, roletype, tier, winrate  FROM champion
WHERE roletype = 'Jungle';
--end--

--list all S (godly) tier champions, order by roletype ascending--
SELECT champion_name, roletype, tier, winrate  FROM champion
WHERE tier = 'S'
ORDER BY roletype ASC;
--end--

--list all S (godly), A (great) and B (good) champions, order by tier descending--
SELECT champion_name, roletype, tier, winrate  FROM champion
WHERE tier IN('S','A','B')
ORDER BY tier DESC;
--end--

--list all champions with winrate 50% or more, order by winrate desc--
SELECT champion_name, roletype, tier, winrate  FROM champion
WHERE winrate >= 50
ORDER BY winrate DESC;
--end--

--list champions S tier, winrate above 50, order by roletype--
SELECT champion_name, roletype, tier, winrate  FROM champion
WHERE winrate > 50 && tier = 'S'
ORDER BY roletype;
--end--

--list bottom lane combo champions with S, A and B tier, order by champion name--
SELECT champion_name, roletype, tier, winrate  FROM champion
WHERE roletype IN('AD Carry','Support') && tier IN('S','A','B')
ORDER BY champion_name ASC;
--end--

--list mid lane champions with low tier, order by name--
SELECT champion_name, roletype, tier, winrate  FROM champion
WHERE roletype = 'Mid Lane' && tier IN('C','D','E')
ORDER BY champion_name ASC;
--end--

