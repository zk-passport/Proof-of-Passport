pragma circom 2.1.9;
include "../../../utils/circomlib/signature/rsapss/rsapss65537.circom";

template VerifyRsaPss65537Sig_tester() {
    signal input modulus[35];
    signal input signature[35];
    signal input message[384];

    VerifyRsaPss65537Sig(120, 35, 48, 384, 4096)(modulus,signature,message);
}

component main = VerifyRsaPss65537Sig_tester();