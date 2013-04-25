import os


test_cases = {
    'encrypt "hal" 1': 'ibm',
    'decrypt "ibm" 1':  'hal',
    'encrypt "HAL" 1': 'IBM',
    'encrypt "hal hal" 1': 'ibm ibm',
    'encrypt "007" 2': '007',
    'encrypt "hal" 26': 'hal',
    'encrypt "hal" 27': 'ibm',
    'decrypt abcdefghijklmnopqrstuvwxyz 3': 'xyzabcdefghijklmnopqrstuvw',
    'encrypt "h%al" 1': 'i%bm',
    'encrypt "h,al" 1': 'i,bm',
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
    os.chdir('../')
