import os


test_cases = {
    'encrypt "hal" 1': 'ibm',
    'encrypt "HAL" 1': 'IBM',
    'decrypt "ibm" 1':  'hal',
    'decrypt "IBM" 1':  'HAL',
    'encrypt "hal hal" 1': 'ibm ibm',
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
