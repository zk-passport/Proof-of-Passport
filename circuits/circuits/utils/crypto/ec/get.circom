
pragma circom  2.1.6;

// Get generator by curve params
// Now there is only secp256k1 \ brainpoolP256r1 generator (64 4 chunking) and brainpoolP384r1
// Other curves / chunking will be added later
template EllipticCurveGetGenerator(CHUNK_SIZE, CHUNK_NUMBER, A, B, P){
    
    signal output gen[2][CHUNK_NUMBER];
    if (CHUNK_NUMBER == 4){
        if (P[0] == 18446744069414583343 && P[1] == 18446744073709551615 && P[2] == 18446744073709551615 && P[3] == 18446744073709551615){
            gen[0] <== [6481385041966929816, 188021827762530521, 6170039885052185351, 8772561819708210092];
            gen[1] <== [11261198710074299576, 18237243440184513561, 6747795201694173352, 5204712524664259685];
        }
        if (P[0] == 2311270323689771895 && P[1] == 7943213001558335528 && P[2] == 4496292894210231666 && P[3] == 12248480212390422972){
            gen[0] <== [4198572826427273826, 13393186192988382146, 3191724131859150767, 10075307429387458507];
            gen[1] <== [6637554640278022551, 14012744714263826004, 10950579571776363977, 6088576656054338813];
        }
        if (P[0] == 18446744073709551615 && P[1] == 4294967295 && P[2] == 0 && P[3] == 18446744069414584321) {
            gen[0] <== [17627433388654248598, 8575836109218198432, 17923454489921339634, 7716867327612699207];
            gen[1] <== [14678990851816772085, 3156516839386865358, 10297457778147434006, 5756518291402817435];
        }
    }
    if (CHUNK_NUMBER == 6){
        if (P[0] == 4294967295 && P[1] == 18446744069414584320 && P[2] == 18446744073709551614 && P[3] == 18446744073709551615 && P[4] == 18446744073709551615 && P[5] == 18446744073709551615){
            gen[0] <== [4203087948775033527, 6125724927633205612, 6482722621138151992, 7934563412932533144, 10282218360005504372, 12288012358878168375];
            gen[1] <== [8809917716911230559, 747793036959711645, 16850834916486723776, 17938995913990739068, 6745997240412855337, 3897828414440483951];
        }
        if (P[0] == 9747760000893709395 && P[1] == 12453481191562877553 && P[2] == 1347097566612230435 && P[3] == 1526563086152259252 && P[4] == 1107163671716839903 && P[5] == 10140169582434348328){
            gen[0] <== [17259960781858189086, 16728304380777219754, 15816583608832692456, 9819997727167172579, 11720119409086381931, 2097662510161151487];
            gen[1] <== [4792396531824874261, 1028586674454626577, 16256874595948243240, 7113166411453454436, 6679378719998465362, 9997460611710698148];
        }
        
    }
    if (CHUNK_NUMBER == 8 && CHUNK_SIZE == 64){
        if (P[0] == 2930260431521597683 && P[1] == 2918894611604883077 && P[2] == 12595900938455318758 && P[3] == 9029043254863489090 && P[4] == 15448363540090652785 && P[5] == 14641358191536493070 && P[6] == 4599554755319692295 && P[7] == 12312170373589877899){
            gen[0] <== [10030961170254002210, 8965910700118138472, 5823550673135435103, 18391328107359425677, 12987082728901970318, 9650544882960897729, 6494527313417104019, 9344657780867258724];
            gen[1] <== [8704646705537616018, 15116942582920270854, 6614182396149851054, 12888420639989254238, 11529432042984931601, 17440742611955841818, 13901133935883592445, 9069748673103213292];
        }
    }
    
    if (CHUNK_NUMBER == 8 && CHUNK_SIZE == 66){
        if (P[0] == 73786976294838206463 && P[1] == 73786976294838206463 && P[2] == 73786976294838206463 && P[3] == 73786976294838206463 && P[4] == 73786976294838206463 && P[5] == 73786976294838206463 && P[6] == 73786976294838206463 && P[7] == 576460752303423487){
            gen[0] <== [73318177735826586982, 65487454542484902054, 47261297936520182413, 53792451325664927076, 20894495204887448893, 19646699525969629165, 48195803493093751131, 223515561732870163];
            gen[1] <== [9853476271941576272, 5570702194968932496, 888629214913941622, 12853196140475830425, 7500656931080978022, 54648434146783127249, 19642388603652049, 315503374086858991];
        }
    }
    if (CHUNK_NUMBER == 7 && CHUNK_SIZE == 32){
        if (P[0] == 2127085823 && P[1] == 2547681781 && P[2] == 2963212119 && P[3] == 1976686471 && P[4] == 706228261 && P[5] == 641951366 && P[6] == 3619763370){
            gen[0] <== [3994206333, 1277062909, 2655838999, 2826815116, 872948658, 746478836, 227551661];
            gen[1] <== [1981022925, 3399743187, 894148249, 1322101796, 617003166, 1925214831, 1487558391];
        }
        if (P[0] == 1 && P[1] == 0 && P[2] == 0 && P[3] == 4294967295 && P[4] == 4294967295 && P[5] == 4294967295 && P[6] == 4294967295){
            gen[0] <== [291249441, 875725014, 1455558946, 1241760211, 840143033, 1807007615, 3071151293];
            gen[1] <== [2231402036, 1154843033, 1510426468, 3443750304, 1277353958, 3052872699, 3174523784];
        }
    }
    if (CHUNK_NUMBER == 5 && CHUNK_SIZE == 64){
        if (P[0] == 18218206948094062119 && P[1] == 5733849700882443304 && P[2] == 17982820153128390127 && P[3] == 16229979505782022245 && P[4] == 15230689193496432567){
            gen[0] <== [1202334713476417041, 16683336510634039751, 17438280603111292598, 5947492335316484070, 4881196775246125240];
            gen[1] <== [15227310055808208609, 12233879368135109319, 523543375370093290, 12340024763961780062, 1512594114530254024];
        }
    }
    if (CHUNK_NUMBER == 3 && CHUNK_SIZE == 64){
        if (P[0] == 18446744073709551615 && P[1] == 18446744073709551614 && P[2] == 18446744073709551615){
            gen[0] <== [17653841148256391186, 8988939576078862336, 1769255009665454326];
            gen[1] <== [8356842117447370769, 7138225120784731605, 511487955924736632];
        }
    }
    
}

// Get "dummy" point
// We can`t "if" signal in circom, so we always need to do all opertions, even we won`t use results of them
// For example, in scalar mult we can have case where we shouln`t add anything (bits = [0,0, .. ,0])
// We will ignore result, but we still should get it, so we need to pout something anyway
// We use this dummy point for such purposes
// Dummy point = G * 2**256
template EllipticCurveGetDummy(CHUNK_SIZE, CHUNK_NUMBER, A, B, P){
    
    signal output dummyPoint[2][CHUNK_NUMBER];
    if (CHUNK_NUMBER == 4){
        if (P[0] == 18446744069414583343 && P[1] == 18446744073709551615 && P[2] == 18446744073709551615 && P[3] == 18446744073709551615){
            dummyPoint[0] <== [10590052641807177607, 9925333800925632128, 8387557479920400525, 15939969690812260448];
            dummyPoint[1] <== [4032565550822761843, 10670260723290159449, 7050988852899951050, 8797939803687366868];
        }
        if (P[0] == 2311270323689771895 && P[1] == 7943213001558335528 && P[2] == 4496292894210231666 && P[3] == 12248480212390422972){
            dummyPoint[0] <== [5870538370169240658, 13064052279558318326, 1032222391323187885, 10478252910764369874];
            dummyPoint[1] <== [9125809427693782222, 4479624720887462683, 4313457861005768495, 11848267593595748038];
        }
        if (P[0] == 18446744073709551615 && P[1] == 4294967295 && P[2] == 0 && P[3] == 18446744069414584321) {
            dummyPoint[0] <== [4148137498610012746, 51237685452122967, 6555942389409504868, 799804747332166731];
            dummyPoint[1] <== [13395177781894339167, 1107697421929919296, 6228258783500845564, 11862546499924939746];
        }
    }
    if (CHUNK_NUMBER == 6){
        if (P[0] == 4294967295 && P[1] == 18446744069414584320 && P[2] == 18446744073709551614 && P[3] == 18446744073709551615 && P[4] == 18446744073709551615 && P[5] == 18446744073709551615){
            dummyPoint[0] <== [3598307048231252138, 15741415447784811687, 1941052507991901335, 4155899906393519185, 2588150101175929229, 16695956721106145545];
            dummyPoint[1] <== [11009719670661534612, 8023462911667119667, 9271010332898980309, 13524974403491980216, 12794233661752207269, 6511462203569285408];
        }
        if (P[0] == 9747760000893709395 && P[1] == 12453481191562877553 && P[2] == 1347097566612230435 && P[3] == 1526563086152259252 && P[4] == 1107163671716839903 && P[5] == 10140169582434348328){
            dummyPoint[0] <== [522720248942821492, 13227018843434759032, 17067096815187998133, 8957183796380674257, 7544165743263758981, 6159107397665645433];
            dummyPoint[1] <== [9174881270872499347, 7148726877058227897, 1584493337432922624, 1438582915076653591, 16161625210166602047, 946254366129831718];
        }
    }
    if (CHUNK_NUMBER == 8 && CHUNK_SIZE == 64){
        if (P[0] == 2930260431521597683 && P[1] == 2918894611604883077 && P[2] == 12595900938455318758 && P[3] == 9029043254863489090 && P[4] == 15448363540090652785 && P[5] == 14641358191536493070 && P[6] == 4599554755319692295 && P[7] == 12312170373589877899){
            dummyPoint[0] <== [14574916302597975989, 11319969548132449701, 10903266595883857697, 1994548485485214030, 8766324413095117920, 13859543515914586224, 15359012927175766703, 8888157292894416277];
            dummyPoint[1] <== [15424904851015096434, 4509353341016380105, 2660624093915944643, 18108652003744254071, 16457937165138284712, 13988121693385681648, 3974402614675683080, 4273228049790294330];
        }
    }
    if (CHUNK_NUMBER == 8 && CHUNK_SIZE == 66){
        if (P[0] == 73786976294838206463 && P[1] == 73786976294838206463 && P[2] == 73786976294838206463 && P[3] == 73786976294838206463 && P[4] == 73786976294838206463 && P[5] == 73786976294838206463 && P[6] == 73786976294838206463 && P[7] == 576460752303423487){
            dummyPoint[0] <== [12138978708144772883, 36541652285950126929, 10514017048786094785, 67773003819907965043, 70380199917759567412, 20757850709128557588, 47661855049770193391, 343494457953311645];
            dummyPoint[1] <== [45881705853103212608, 13367920178103938701, 44820643497720048937, 71727745760642082833, 25145243235538176792, 49858639387589813870, 70756540811674506198, 355082349835963842];
        }
    }
    if (CHUNK_NUMBER == 7 && CHUNK_SIZE == 32){
        if (P[0] == 2127085823 && P[1] == 2547681781 && P[2] == 2963212119 && P[3] == 1976686471 && P[4] == 706228261 && P[5] == 641951366 && P[6] == 3619763370){
            dummyPoint[0] <== [1011829107, 766339764, 2646701381, 2557417204, 2772323181, 3776113163, 1766619938];
            dummyPoint[1] <== [3055119978, 1933167529, 3830194223, 368418451, 674341366, 2229791193, 2172448247];
        }
        if (P[0] == 1 && P[1] == 0 && P[2] == 0 && P[3] == 4294967295 && P[4] == 4294967295 && P[5] == 4294967295 && P[6] == 4294967295){
            dummyPoint[0] <== [2477436510, 406882550, 2884834286, 2269163287, 3636783260, 3699382582, 912817446];
            dummyPoint[1] <== [582933619, 1778719645, 3780674687, 3008581200, 3586474874, 866709652, 3566930607];
        }
    }
    if (CHUNK_NUMBER == 5 && CHUNK_SIZE == 64){
        if (P[0] == 18218206948094062119 && P[1] == 5733849700882443304 && P[2] == 17982820153128390127 && P[3] == 16229979505782022245 && P[4] == 15230689193496432567){
            dummyPoint[0] <== [14496564528011597731, 14757024811360122181, 550034075580004871, 8288117932871629272, 10338207961843326970];
            dummyPoint[1] <== [5662432183071400735, 9628381411969320472, 13223900765799467975, 9924897443523030749, 2021344976553828143];
        }
    }
    if (CHUNK_NUMBER == 3 && CHUNK_SIZE == 64){
        if (P[0] == 18446744073709551615 && P[1] == 18446744073709551614 && P[2] == 18446744073709551615){
            dummyPoint[0] <== [2388680132750282951, 17968829490251838312, 423946266565325845];
            dummyPoint[1] <== [8810416978150023621, 4916408820562498795, 15182365745871871295];
        }
    }
}

// Get order of eliptic curve
template EllipicCurveGetOrder(CHUNK_SIZE, CHUNK_NUMBER, A, B, P){
    
    signal output order[CHUNK_NUMBER];
    if (CHUNK_NUMBER == 4){
        if (P[0] == 18446744069414583343 && P[1] == 18446744073709551615 && P[2] == 18446744073709551615 && P[3] == 18446744073709551615){
            order <== [13822214165235122497, 13451932020343611451, 18446744073709551614, 18446744073709551615];
        }
        if (P[0] == 2311270323689771895 && P[1] == 7943213001558335528 && P[2] == 4496292894210231666 && P[3] == 12248480212390422972){
            order <== [10384753744809580199, 10104242082523752183, 4496292894210231665, 12248480212390422972];
        }
        if (P[0] == 18446744073709551615 && P[1] == 4294967295 && P[2] == 0 && P[3] == 18446744069414584321) {
            order <== [17562291160714782033, 13611842547513532036, 18446744073709551615, 18446744069414584320];
        }
    }
    if (CHUNK_NUMBER == 6){
        if (P[0] == 4294967295 && P[1] == 18446744069414584320 && P[2] == 18446744073709551614 && P[3] == 18446744073709551615 && P[4] == 18446744073709551615 && P[5] == 18446744073709551615){
            order <== [17072048233947408755, 6348401684107011962, 14367412456785391071, 18446744073709551615, 18446744073709551615, 18446744073709551615];
        }
        if (P[0] == 9747760000893709395 && P[1] == 12453481191562877553 && P[2] == 1347097566612230435 && P[3] == 1526563086152259252 && P[4] == 1107163671716839903 && P[5] == 10140169582434348328){
            order <== [4289733633151100261, 14932448379039367952, 2240099277684876711, 1526563086152259251, 1107163671716839903, 10140169582434348328];
        }
    }
    if (CHUNK_NUMBER == 8 && CHUNK_SIZE == 66){
        if (P[0] == 73786976294838206463 && P[1] == 73786976294838206463 && P[2] == 73786976294838206463 && P[3] == 73786976294838206463 && P[4] == 73786976294838206463 && P[5] == 73786976294838206463 && P[6] == 73786976294838206463 && P[7] == 576460752303423487){
            order <== [50399703296839803913, 1075641703360565739, 50151170745029401181, 72149383596738395737, 73786976294838206463, 73786976294838206463, 73786976294838206463, 576460752303423487];
        }
    }
    if (CHUNK_NUMBER == 8 && CHUNK_SIZE == 64){
        if (P[0] == 2930260431521597683 && P[1] == 2918894611604883077 && P[2] == 12595900938455318758 && P[3] == 9029043254863489090 && P[4] == 15448363540090652785 && P[5] == 14641358191536493070 && P[6] == 4599554755319692295 && P[7] == 12312170373589877899){
            order <== [13080589130439131241, 2139723849122306781, 4721568021488603207, 6142448377308718617, 15448363540090652784, 14641358191536493070, 4599554755319692295, 12312170373589877899];
        }
    }
    if (CHUNK_NUMBER == 7 && CHUNK_SIZE == 32){
        if (P[0] == 2127085823 && P[1] == 2547681781 && P[2] == 2963212119 && P[3] == 1976686471 && P[4] == 706228261 && P[5] == 641951366 && P[6] == 3619763370){
            order <== [2779222943, 1843313827, 3507928139, 1976630168, 706228261, 641951366, 3619763370];
        }
        if (P[0] == 1 && P[1] == 0 && P[2] == 0 && P[3] == 4294967295 && P[4] == 4294967295 && P[5] == 4294967295 && P[6] == 4294967295){
            order <== [1549543997, 333261125, 3770216510, 4294907554, 4294967295, 4294967295, 4294967295];
        }
    }
    if (CHUNK_NUMBER == 5 && CHUNK_SIZE == 64){
        if (P[0] == 18218206948094062119 && P[1] == 5733849700882443304 && P[2] == 17982820153128390127 && P[3] == 16229979505782022245 && P[4] == 15230689193496432567){
            order <== [9696625323189572369, 3262909366265075945, 17982820147753063075, 16229979505782022245, 15230689193496432567];
        }
    }
    if (CHUNK_NUMBER == 3 && CHUNK_SIZE == 64){
        if (P[0] == 18446744073709551615 && P[1] == 18446744073709551614 && P[2] == 18446744073709551615){
            order <== [1471491468346665009, 18446744071996110902, 18446744073709551615];
        }
    }
}