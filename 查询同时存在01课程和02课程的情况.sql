select sc1.SId, sc1.Score as Score1, sc2.Score as Score2
from sc sc1 join sc sc2 on sc1.SId = sc2.SId
where sc1.CId = "01" and sc2.CId = "02";