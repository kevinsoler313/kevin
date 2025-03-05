# +
/^(+)$/ {
    print "TOKEN_+: " $0
    next
}

# ++
/^(++)$/ {
    print "TOKEN_++: " $0
    next
}

# detectar numeros
/^[0-9]+$/ {
    print "TOKEN_NUMBER: " $0
    next
}

# detectar reales
/^[0-9]+(.)[0-9]+$/ {
    print "TOKEN_REAL: " $0
    next
}

# desconocido
{
    print "TOKEN_UNKNOWN: " $0
}

