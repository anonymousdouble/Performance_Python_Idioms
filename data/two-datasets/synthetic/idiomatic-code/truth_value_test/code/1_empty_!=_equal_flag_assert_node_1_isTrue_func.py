def func_a():
    a = 1
    try:
        assert a
    except:
        pass
if __name__ == '__main__':
    func_a()
    print('code is finished')