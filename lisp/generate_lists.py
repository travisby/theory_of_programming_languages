def wraparound_str(string, startPoint):
    new_str = []
    length = len(string)
    for i in range(length):
        new_str.append(string[(startPoint + i) % length])
    return ''.join(new_str)

def make_str(var, inp, outp):
    return (
        outp
    )

def main():
    ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    alphabet = 'abcdefghijklmnopqrstuvwxyz'

    print "(setf alphabets"
    print "( list"
    for i in range(len(alphabet)):
        print '\t(string "%s%s")' % (wraparound_str(alphabet, i), wraparound_str(ALPHABET, i))
    print ")"

    print ")"


main()
