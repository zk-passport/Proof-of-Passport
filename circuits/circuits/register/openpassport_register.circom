pragma circom 2.1.9;

include "../utils/passport/customHashers.circom";
include "../utils/passport/computeCommitment.circom";
include "../utils/passport/signatureAlgorithm.circom";
include "../utils/passport/date/isValid.circom";
include "../utils/circomlib/hasher/poseidon/poseidon.circom";
include "../utils/passport/passportVerifier.circom";
include "../utils/passport/disclose/disclose.circom";
include "../utils/passport/disclose/proveCountryIsNotInList.circom";
include "../utils/passport/ofac/ofac_name.circom";

template OPENPASSPORT_REGISTER(DG_HASH_ALGO, ECONTENT_HASH_ALGO, signatureAlgorithm, n, k, MAX_ECONTENT_PADDED_LEN, MAX_SIGNED_ATTR_PADDED_LEN) {
    var kLengthFactor = getKLengthFactor(signatureAlgorithm);
    var kScaled = k * kLengthFactor;
    var HASH_LEN_BITS = getHashLength(signatureAlgorithm);
    var HASH_LEN_BYTES = HASH_LEN_BITS / 8;

    signal input dg1[93];
    signal input dg1_hash_offset;
    signal input dg2_hash[64];
    signal input eContent[MAX_ECONTENT_PADDED_LEN];
    signal input eContent_padded_length;
    signal input signed_attr[MAX_SIGNED_ATTR_PADDED_LEN];
    signal input signed_attr_padded_length;
    signal input signed_attr_econtent_hash_offset;
    signal input pubKey[kScaled];
    signal input signature[kScaled];
    
    signal input secret;
    signal input dsc_secret;

    signal attestation_id <== 1;

    // verify passport signature
    signal signedAttrShaBytes[HASH_LEN_BYTES] <== PassportVerifier(DG_HASH_ALGO, ECONTENT_HASH_ALGO, signatureAlgorithm, n, k, MAX_ECONTENT_PADDED_LEN, MAX_SIGNED_ATTR_PADDED_LEN)(dg1,dg1_hash_offset, dg2_hash, eContent,eContent_padded_length, signed_attr, signed_attr_padded_length, signed_attr_econtent_hash_offset, pubKey, signature);

    // nulifier
    component passportDataHashed = CustomHasher(HASH_LEN_BYTES);
    passportDataHashed.in <== signedAttrShaBytes;
    signal output nullifier <== passportDataHashed.out;

    // // REGISTRATION (optional)
    // // generate the commitment
    signal leaf <== LeafHasher(kScaled)(pubKey, signatureAlgorithm);
    signal output commitment <== ComputeCommitment()(secret, attestation_id, leaf, dg1, dg2_hash);

    // blinded dsc commitment
    signal pubkeyHash <== CustomHasher(kScaled)(pubKey);
    signal output blinded_dsc_commitment <== PoseidonHash(2)([dsc_secret, pubkeyHash]);
}