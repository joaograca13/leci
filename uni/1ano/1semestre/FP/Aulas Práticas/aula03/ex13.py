
def intersection(a, b, c, d):
    """Return the intersection of intervals [a, b[ and [c, d[."""
    assert a <= b
    assert c <= d
    

    e = max(a, c)  
    f = min(b, d)  
    
    
    if e < f:
        return (e, f)
    else:
        return (e, e)  



def testIntersection(a, b, c, d, x, y):
    """Call intersection, print result and check against expected result."""
    print(f"intersection({a}, {b}, {c}, {d})", end=" ")
    (e, f) = intersection(a, b, c, d)
    check = "OK" if (e, f) == (x, y) else "FAIL"
    print(f"--> ({e}, {f}) {check}")


def main():
    testIntersection(1, 6, 4, 8,  4, 6)
    testIntersection(1, 6, 3, 5,  3, 5)
    # Acrescente mais casos de teste...
    testIntersection(1, 3, 2, 4, 2, 3)


main()

