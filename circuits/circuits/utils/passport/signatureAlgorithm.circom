pragma circom 2.1.6;

function getHashLength(signatureAlgorithm) {
    if (signatureAlgorithm == 1 ) {
        return 256;
    }
    if (signatureAlgorithm == 3) {
        return 160;
    }
    if (signatureAlgorithm == 4) {
        return 256;
    }
    if (signatureAlgorithm == 7) {
        return 160;
    }
    if (signatureAlgorithm == 8) {
        return 256;
    }
    if (signatureAlgorithm == 9) {
        return 384;
    }
    return 0;
}

function getKeyLength(signatureAlgorithm) {
    if (signatureAlgorithm == 1 ) {
        return 2048;
    }
    if (signatureAlgorithm == 3) {
        return 2048;
    }
    if (signatureAlgorithm == 4) {
        return 2048;
    }
    if (signatureAlgorithm == 7) {
        return 256;
    }
    if (signatureAlgorithm == 8) {
        return 256;
    }
    if (signatureAlgorithm == 9) {
        return 384;
    }
    return 0;
}

//returns 1 for rsa, 2 for ecdsa
function getKLengthFactor(signatureAlgorithm) {
    if (signatureAlgorithm == 1) {
        return 1;
    }
    if (signatureAlgorithm == 3) {
        return 1;
    }
    if (signatureAlgorithm == 4) {
        return 1;
    }
    if (signatureAlgorithm == 7) {
        return 2;
    }
    if (signatureAlgorithm == 8) {
        return 2;
    }
    if (signatureAlgorithm == 9) {
        return 2;
    }
    return 0;

}

function getExponentBits(signatureAlgorithm) {
    if (signatureAlgorithm == 1 ) {
        return 16;
    }
    if (signatureAlgorithm == 3) {
        return 1;
    }

    return 0;
}