teams = ["FCP", "SCP", "SLB"]

def allMatches(teams):
    assert len(teams) >= 2
    jogos = []
    
    for i in teams:
        for j in teams:
            if i != j:
                jogos.append((i, j))

    return jogos

print(allMatches(teams))