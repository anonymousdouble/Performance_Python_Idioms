def func_a():
    from fractions import Fraction
    a = Fraction(0, 1)
    while a == Fraction(0, 1):
        break

if __name__ == '__main__':
    func_a()
    print('code is finished')