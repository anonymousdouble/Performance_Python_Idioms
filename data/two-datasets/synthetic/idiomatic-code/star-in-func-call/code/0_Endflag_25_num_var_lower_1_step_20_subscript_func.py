def func_arg(*e):
    pass

def func_a():
    i_s = 0
    e_list = [i for i in range(25)]
    func_arg(
    *e_list[i_s:i_s + 20])
if __name__ == '__main__':
    func_a()
    print('code is finished')