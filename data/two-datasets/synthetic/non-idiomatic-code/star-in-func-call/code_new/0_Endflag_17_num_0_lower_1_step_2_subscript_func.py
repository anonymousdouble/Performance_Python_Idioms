def func_arg(*e):
    pass
def func_a():
    e_list=[i for i in range(17)]
    func_arg(e_list[0],e_list[1])
if __name__ == '__main__':
    func_a()
    print('code is finished')