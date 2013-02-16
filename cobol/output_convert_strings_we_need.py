def wraparound_str(string, startPoint):
    new_str = []
    length = len(string)
    for i in range(length):
        new_str.append(string[(startPoint + i) % length])
    return ''.join(new_str)



def make_str(var, inp, outp):
    return (
        "INSPECT %(var)s CONVERTING %(input)s TO %(output)s" %
        {'var': var, 'input': inp, 'output': outp}
    )

def main():
    ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    alphabet = 'abcdefghijklmnopqrstuvwxyz'

    str_name = raw_input("Please enter the name you called the input string: ")
    print make_str(str_name, ALPHABET, alphabet)
    for i in range(len(alphabet)):
        print make_str(str_name, alphabet, wraparound_str(alphabet, i))

    for i in range(len(alphabet)):
        print '10 FILLER PIC A(26) VALUE "%(alph)s".' % {'alph': wraparound_str(alphabet, i), 'num': i}


main()
