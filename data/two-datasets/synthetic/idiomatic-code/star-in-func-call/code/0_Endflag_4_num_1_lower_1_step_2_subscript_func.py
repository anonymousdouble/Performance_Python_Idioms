def func_arg(*e):
    pass

def func_a():
    e_list = [i for i in range(4)]
    func_arg(
    *e_list[1:3])
if __name__ == '__main__':
    func_a()
    print('code is finished')