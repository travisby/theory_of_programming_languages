import os

bigstr1 = """How can you tell an extrovert from an introvert at NSA? Va gur ryringbef, gur rkgebireg ybbxf ng gur BGURE thlf fubrf."""
bigstr2 = """Ubj pna lbh gryy na rkgebireg sebz na vagebireg ng AFN? In the elevators, the extrovert looks at the OTHER guys shoes."""
test_cases = {
    'encrypt "hal" 1': 'ibm',
    'encrypt "hal" 0': 'hal',
    'decrypt "ibm" 1':  'hal',
    'encrypt "HAL" 1': 'IBM',
    'encrypt "hal hal" 1': 'ibm ibm',
    'encrypt "007" 2': '007',
    'encrypt "hal" 26': 'hal',
    'encrypt "hal" 27': 'ibm',
    'decrypt abcdefghijklmnopqrstuvwxyz 3': 'xyzabcdefghijklmnopqrstuvw',
    'encrypt "h%al" 1': 'i%bm',
    'encrypt "h,al" 1': 'i,bm',
    'encrypt "travis" 13': 'genivf',
    'decrypt "genivf" 13': 'travis',
    'decrypt "{" 13': '{',
    'decrypt "@" 13': '@',
    'encrypt "%s" 13' % bigstr1: bigstr2
}

solve_cases = {
    'solve "hal"': [
        'hal',
        'gzk',
        'fyj',
        'exi',
        'dwh',
        'cvg',
        'buf',
        'ate',
        'zsd',
        'yrc',
        'xqb',
        'wpa',
        'voz',
        'uny',
        'tmx',
        'slw',
        'rkv',
        'qju',
        'pit',
        'ohs',
        'ngr',
        'mfq',
        'lep',
        'kdo',
        'jcn',
        'ibm',
    ],
}

directories = [
    'cobol',
    'erlang',
    'fortran',
    'lisp',
    #'ml',
    'pascal',
    'scala',
]

for directory in directories:
    os.chdir(directory)
    for case in test_cases:
        pointer = os.popen('./run %s' % case)
        result = pointer.read()
        if test_cases[case] not in result:
            print '---------------------'
            print 'Fail!'
            print directory
            print case
            print 'expected: %s' % test_cases[case]
            print 'output: %s' % result
            print '---------------------'
        else:
            print '---------------------'
            print 'success!'
            print directory
            print case
            print 'output: %s' % result
            print '---------------------'

    for case in solve_cases:
        success = True
        pointer = os.popen('./run %s' % case)
        result = pointer.read()
        for item in solve_cases[case]:
            if item not in result:
                print '---------------------'
                print 'Fail!'
                print directory
                print case
                print 'expected: %s' % solve_cases[case]
                print 'output: %s' % result
                print '---------------------'
                success = False
                break
        if success:
            pass
            print '---------------------'
            print 'success!'
            print directory
            print case
            print 'output: %s' % result
            print '---------------------'
    os.chdir('../')
