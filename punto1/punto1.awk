#!/usr/bin/awk -f

{
    while ($0) {
        if (match($0, /^\+\+/, token)) {
            print "INCR: " token[0]
            $0 = substr($0, RLENGTH + 1)
        } else if (match($0, /^\+/, token)) {
            print "SUMA: " token[0]
            $0 = substr($0, RLENGTH + 1)
        } else if (match($0, /^[0-9]+\.[0-9]+/, token)) {
            print "REAL: " token[0]
            $0 = substr($0, RLENGTH + 1)
        } else if (match($0, /^[0-9]+/, token)) {
            print "ENTERO: " token[0]
            $0 = substr($0, RLENGTH + 1)
        } else {
            print "ERROR: Token no reconocido en: " $0
            exit 1
        }
    }
}
