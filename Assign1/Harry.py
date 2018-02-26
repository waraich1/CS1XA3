haj(s):
    v = 'aeiouAEIOU'

    i = 0
    for char in s:
        for x in v:
            if char == x:
                i = i + 1

    return i

