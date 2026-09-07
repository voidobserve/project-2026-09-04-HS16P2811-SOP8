goto 000Eh  ;  [0000]  180E  280E  
nop  ;  [0001]  0000  0000  
nop  ;  [0002]  0000  0000  
nop  ;  [0003]  0000  0000  
movar 07Eh  ;  [0004]  00FE  00FE  
swapr 003h,0  ;  [0005]  0D03  0E03  
bcr 003h,5  ;  [0006]  2E83  1283  
bcr 003h,6  ;  [0007]  2F03  1303  
movar 041h  ;  [0008]  00C1  00C1  
movr 004h,0  ;  [0009]  0304  0804  
movar 042h  ;  [000A]  00C2  00C2  
movr 00Ah,0  ;  [000B]  030A  080A  
movar 043h  ;  [000C]  00C3  00C3  
goto 000Fh  ;  [000D]  180F  280F  
goto 0434h  ;  [000E]  1C34  2C34  
btrss 00Ch,0  ;  [000F]  200C  1C0C  
goto 0012h  ;  [0010]  1812  2812  
goto 0013h  ;  [0011]  1813  2813  
goto 0026h  ;  [0012]  1826  2826  
bcr 00Ch,0  ;  [0013]  2C0C  100C  
movia 037h  ;  [0014]  3237  3037  
bsr 003h,5  ;  [0015]  2A83  1683  
movar 01Dh  ;  [0016]  009D  009D  
movia 0FFh  ;  [0017]  32FF  30FF  
movar 01Ch  ;  [0018]  009C  009C  
call 038Fh  ;  [0019]  138F  238F  
btrss 07Ch,0  ;  [001A]  207C  1C7C  
goto 001Dh  ;  [001B]  181D  281D  
goto 001Eh  ;  [001C]  181E  281E  
goto 0026h  ;  [001D]  1826  2826  
btrsc 07Ch,1  ;  [001E]  24FC  18FC  
goto 0021h  ;  [001F]  1821  2821  
goto 0022h  ;  [0020]  1822  2822  
goto 0026h  ;  [0021]  1826  2826  
bsr 07Ch,1  ;  [0022]  28FC  14FC  
bcr 003h,5  ;  [0023]  2E83  1283  
bcr 01Bh,5  ;  [0024]  2E9B  129B  
bsr 01Bh,6  ;  [0025]  2B1B  171B  
bcr 003h,5  ;  [0026]  2E83  1283  
btrss 00Dh,1  ;  [0027]  208D  1C8D  
goto 002Ah  ;  [0028]  182A  282A  
goto 002Bh  ;  [0029]  182B  282B  
goto 0089h  ;  [002A]  1889  2889  
bcr 00Dh,1  ;  [002B]  2C8D  108D  
movia 017h  ;  [002C]  3217  3017  
bsr 003h,6  ;  [002D]  2B03  1703  
movar 012h  ;  [002E]  0092  0092  
movia 0FCh  ;  [002F]  32FC  30FC  
movar 013h  ;  [0030]  0093  0093  
bcr 003h,6  ;  [0031]  2F03  1303  
incr 037h,1  ;  [0032]  08B7  0AB7  
movia 00Ah  ;  [0033]  320A  300A  
subar 037h,0  ;  [0034]  0A37  0237  
btrss 003h,0  ;  [0035]  2003  1C03  
goto 0038h  ;  [0036]  1838  2838  
goto 0039h  ;  [0037]  1839  2839  
goto 0076h  ;  [0038]  1876  2876  
clrr 037h  ;  [0039]  01B7  01B7  
btrss 005h,5  ;  [003A]  2285  1E85  
goto 003Dh  ;  [003B]  183D  283D  
goto 003Eh  ;  [003C]  183E  283E  
goto 0050h  ;  [003D]  1850  2850  
clrr 038h  ;  [003E]  01B8  01B8  
btrsc 07Ch,3  ;  [003F]  25FC  19FC  
goto 0042h  ;  [0040]  1842  2842  
goto 0043h  ;  [0041]  1843  2843  
goto 0059h  ;  [0042]  1859  2859  
call 0475h  ;  [0043]  1475  2475  
bcr 07Ch,5  ;  [0044]  2EFC  12FC  
bcr 07Ch,6  ;  [0045]  2F7C  137C  
bcr 07Ch,7  ;  [0046]  2FFC  13FC  
bcr 07Dh,0  ;  [0047]  2C7D  107D  
bcr 07Ch,2  ;  [0048]  2D7C  117C  
bcr 003h,5  ;  [0049]  2E83  1283  
bsr 04Eh,0  ;  [004A]  284E  144E  
clrr 02Bh  ;  [004B]  01AB  01AB  
clrr 026h  ;  [004C]  01A6  01A6  
clrr 027h  ;  [004D]  01A7  01A7  
bsr 07Ch,3  ;  [004E]  29FC  15FC  
goto 0059h  ;  [004F]  1859  2859  
incr 038h,1  ;  [0050]  08B8  0AB8  
movia 014h  ;  [0051]  3214  3014  
subar 038h,0  ;  [0052]  0A38  0238  
btrss 003h,0  ;  [0053]  2003  1C03  
goto 0056h  ;  [0054]  1856  2856  
goto 0057h  ;  [0055]  1857  2857  
goto 0059h  ;  [0056]  1859  2859  
clrr 038h  ;  [0057]  01B8  01B8  
bcr 07Ch,3  ;  [0058]  2DFC  11FC  
call 0247h  ;  [0059]  1247  2247  
btrss 07Ch,2  ;  [005A]  217C  1D7C  
goto 005Dh  ;  [005B]  185D  285D  
goto 005Eh  ;  [005C]  185E  285E  
goto 006Ah  ;  [005D]  186A  286A  
movia 00Bh  ;  [005E]  320B  300B  
subar 023h,0  ;  [005F]  0A23  0223  
movia 054h  ;  [0060]  3254  3054  
btrsc 003h,2  ;  [0061]  2503  1903  
subar 022h,0  ;  [0062]  0A22  0222  
btrsc 003h,0  ;  [0063]  2403  1803  
goto 0066h  ;  [0064]  1866  2866  
goto 0067h  ;  [0065]  1867  2867  
goto 006Ah  ;  [0066]  186A  286A  
call 0475h  ;  [0067]  1475  2475  
call 046Ah  ;  [0068]  146A  246A  
bcr 07Ch,2  ;  [0069]  2D7C  117C  
bcr 003h,5  ;  [006A]  2E83  1283  
btrsc 005h,5  ;  [006B]  2685  1A85  
goto 006Eh  ;  [006C]  186E  286E  
goto 006Fh  ;  [006D]  186F  286F  
goto 0075h  ;  [006E]  1875  2875  
btrsc 07Ch,2  ;  [006F]  257C  197C  
goto 0072h  ;  [0070]  1872  2872  
goto 0073h  ;  [0071]  1873  2873  
goto 0075h  ;  [0072]  1875  2875  
incr 031h,1  ;  [0073]  08B1  0AB1  
goto 0076h  ;  [0074]  1876  2876  
clrr 031h  ;  [0075]  01B1  01B1  
incr 036h,1  ;  [0076]  08B6  0AB6  
movia 064h  ;  [0077]  3264  3064  
subar 036h,0  ;  [0078]  0A36  0236  
btrss 003h,0  ;  [0079]  2003  1C03  
goto 007Ch  ;  [007A]  187C  287C  
goto 007Dh  ;  [007B]  187D  287D  
goto 0089h  ;  [007C]  1889  2889  
clrr 036h  ;  [007D]  01B6  01B6  
call 012Eh  ;  [007E]  112E  212E  
btrss 07Ch,2  ;  [007F]  217C  1D7C  
goto 0082h  ;  [0080]  1882  2882  
goto 0083h  ;  [0081]  1883  2883  
goto 0087h  ;  [0082]  1887  2887  
incr 028h,1  ;  [0083]  08A8  0AA8  
btrsc 003h,2  ;  [0084]  2503  1903  
incr 029h,1  ;  [0085]  08A9  0AA9  
goto 0089h  ;  [0086]  1889  2889  
clrr 028h  ;  [0087]  01A8  01A8  
clrr 029h  ;  [0088]  01A9  01A9  
btrss 00Ch,6  ;  [0089]  230C  1F0C  
goto 008Ch  ;  [008A]  188C  288C  
goto 008Dh  ;  [008B]  188D  288D  
goto 0125h  ;  [008C]  1925  2925  
bcr 00Ch,6  ;  [008D]  2F0C  130C  
bcr 07Ch,1  ;  [008E]  2CFC  10FC  
movr 01Ch,0  ;  [008F]  031C  081C  
movar 020h  ;  [0090]  00A0  00A0  
clrr 021h  ;  [0091]  01A1  01A1  
swapr 020h,1  ;  [0092]  0DA0  0EA0  
swapr 021h,1  ;  [0093]  0DA1  0EA1  
movia 0F0h  ;  [0094]  32F0  30F0  
andar 021h,1  ;  [0095]  04A1  05A1  
movr 020h,0  ;  [0096]  0320  0820  
andia 00Fh  ;  [0097]  3A0F  390F  
iorar 021h,1  ;  [0098]  0FA1  04A1  
movia 0F0h  ;  [0099]  32F0  30F0  
andar 020h,1  ;  [009A]  04A0  05A0  
movr 01Dh,0  ;  [009B]  031D  081D  
andia 00Fh  ;  [009C]  3A0F  390F  
addar 020h,1  ;  [009D]  05A0  07A0  
btrsc 003h,0  ;  [009E]  2403  1803  
incr 021h,1  ;  [009F]  08A1  0AA1  
movr 02Ah,1  ;  [00A0]  03AA  08AA  
btrss 003h,2  ;  [00A1]  2103  1D03  
goto 00A4h  ;  [00A2]  18A4  28A4  
goto 00A5h  ;  [00A3]  18A5  28A5  
goto 00A9h  ;  [00A4]  18A9  28A9  
clrr 039h  ;  [00A5]  01B9  01B9  
clrr 03Ah  ;  [00A6]  01BA  01BA  
clrr 03Bh  ;  [00A7]  01BB  01BB  
clrr 03Ch  ;  [00A8]  01BC  01BC  
movr 020h,0  ;  [00A9]  0320  0820  
movar 03Dh  ;  [00AA]  00BD  00BD  
movr 021h,0  ;  [00AB]  0321  0821  
movar 03Eh  ;  [00AC]  00BE  00BE  
clrr 03Fh  ;  [00AD]  01BF  01BF  
clrr 040h  ;  [00AE]  01C0  01C0  
movr 03Dh,0  ;  [00AF]  033D  083D  
addar 039h,1  ;  [00B0]  05B9  07B9  
movr 03Eh,0  ;  [00B1]  033E  083E  
bcr 003h,2  ;  [00B2]  2D03  1103  
btrsc 003h,0  ;  [00B3]  2403  1803  
addia 001h  ;  [00B4]  3801  3E01  
btrsc 003h,2  ;  [00B5]  2503  1903  
goto 00B8h  ;  [00B6]  18B8  28B8  
addar 03Ah,1  ;  [00B7]  05BA  07BA  
movr 03Fh,0  ;  [00B8]  033F  083F  
bcr 003h,2  ;  [00B9]  2D03  1103  
btrsc 003h,0  ;  [00BA]  2403  1803  
addia 001h  ;  [00BB]  3801  3E01  
btrsc 003h,2  ;  [00BC]  2503  1903  
goto 00BFh  ;  [00BD]  18BF  28BF  
addar 03Bh,1  ;  [00BE]  05BB  07BB  
movr 040h,0  ;  [00BF]  0340  0840  
bcr 003h,2  ;  [00C0]  2D03  1103  
btrsc 003h,0  ;  [00C1]  2403  1803  
addia 001h  ;  [00C2]  3801  3E01  
btrsc 003h,2  ;  [00C3]  2503  1903  
goto 00C6h  ;  [00C4]  18C6  28C6  
addar 03Ch,1  ;  [00C5]  05BC  07BC  
incr 02Ah,1  ;  [00C6]  08AA  0AAA  
movia 020h  ;  [00C7]  3220  3020  
subar 02Ah,0  ;  [00C8]  0A2A  022A  
btrss 003h,0  ;  [00C9]  2003  1C03  
goto 00CCh  ;  [00CA]  18CC  28CC  
goto 00CDh  ;  [00CB]  18CD  28CD  
goto 0125h  ;  [00CC]  1925  2925  
movr 03Ch,0  ;  [00CD]  033C  083C  
movar 073h  ;  [00CE]  00F3  00F3  
movr 03Bh,0  ;  [00CF]  033B  083B  
movar 072h  ;  [00D0]  00F2  00F2  
movr 03Ah,0  ;  [00D1]  033A  083A  
movar 071h  ;  [00D2]  00F1  00F1  
movr 039h,0  ;  [00D3]  0339  0839  
movar 070h  ;  [00D4]  00F0  00F0  
movia 005h  ;  [00D5]  3205  3005  
bcr 003h,0  ;  [00D6]  2C03  1003  
rrr 073h,1  ;  [00D7]  0EF3  0CF3  
rrr 072h,1  ;  [00D8]  0EF2  0CF2  
rrr 071h,1  ;  [00D9]  0EF1  0CF1  
rrr 070h,1  ;  [00DA]  0EF0  0CF0  
addia 0FFh  ;  [00DB]  38FF  3EFF  
btrss 003h,2  ;  [00DC]  2103  1D03  
goto 00D6h  ;  [00DD]  18D6  28D6  
movia 000h  ;  [00DE]  3200  3000  
movar 077h  ;  [00DF]  00F7  00F7  
movia 000h  ;  [00E0]  3200  3000  
movar 076h  ;  [00E1]  00F6  00F6  
movia 01Fh  ;  [00E2]  321F  301F  
movar 075h  ;  [00E3]  00F5  00F5  
movia 040h  ;  [00E4]  3240  3040  
movar 074h  ;  [00E5]  00F4  00F4  
call 0355h  ;  [00E6]  1355  2355  
movr 070h,0  ;  [00E7]  0370  0870  
movar 03Dh  ;  [00E8]  00BD  00BD  
movr 071h,0  ;  [00E9]  0371  0871  
movar 03Eh  ;  [00EA]  00BE  00BE  
movr 072h,0  ;  [00EB]  0372  0872  
movar 03Fh  ;  [00EC]  00BF  00BF  
movr 073h,0  ;  [00ED]  0373  0873  
movar 040h  ;  [00EE]  00C0  00C0  
movia 00Ch  ;  [00EF]  320C  300C  
bcr 003h,0  ;  [00F0]  2C03  1003  
rrr 040h,1  ;  [00F1]  0EC0  0CC0  
rrr 03Fh,1  ;  [00F2]  0EBF  0CBF  
rrr 03Eh,1  ;  [00F3]  0EBE  0CBE  
rrr 03Dh,1  ;  [00F4]  0EBD  0CBD  
addia 0FFh  ;  [00F5]  38FF  3EFF  
btrss 003h,2  ;  [00F6]  2103  1D03  
goto 00F0h  ;  [00F7]  18F0  28F0  
movr 03Eh,0  ;  [00F8]  033E  083E  
movar 025h  ;  [00F9]  00A5  00A5  
movr 03Dh,0  ;  [00FA]  033D  083D  
movar 024h  ;  [00FB]  00A4  00A4  
clrr 02Ah  ;  [00FC]  01AA  01AA  
movr 023h,0  ;  [00FD]  0323  0823  
iorar 022h,0  ;  [00FE]  0F22  0422  
btrss 003h,2  ;  [00FF]  2103  1D03  
goto 0102h  ;  [0100]  1902  2902  
goto 0103h  ;  [0101]  1903  2903  
goto 0107h  ;  [0102]  1907  2907  
movr 025h,0  ;  [0103]  0325  0825  
movar 023h  ;  [0104]  00A3  00A3  
movr 024h,0  ;  [0105]  0324  0824  
movar 022h  ;  [0106]  00A2  00A2  
btrss 07Ch,2  ;  [0107]  217C  1D7C  
goto 010Ah  ;  [0108]  190A  290A  
goto 010Bh  ;  [0109]  190B  290B  
goto 011Ah  ;  [010A]  191A  291A  
movr 023h,0  ;  [010B]  0323  0823  
subar 025h,0  ;  [010C]  0A25  0225  
btrss 003h,2  ;  [010D]  2103  1D03  
goto 0111h  ;  [010E]  1911  2911  
movr 022h,0  ;  [010F]  0322  0822  
subar 024h,0  ;  [0110]  0A24  0224  
btrsc 003h,0  ;  [0111]  2403  1803  
goto 0114h  ;  [0112]  1914  2914  
goto 0115h  ;  [0113]  1915  2915  
goto 0125h  ;  [0114]  1925  2925  
movr 025h,0  ;  [0115]  0325  0825  
movar 023h  ;  [0116]  00A3  00A3  
movr 024h,0  ;  [0117]  0324  0824  
movar 022h  ;  [0118]  00A2  00A2  
goto 0125h  ;  [0119]  1925  2925  
movr 025h,0  ;  [011A]  0325  0825  
subar 023h,0  ;  [011B]  0A23  0223  
btrss 003h,2  ;  [011C]  2103  1D03  
goto 0120h  ;  [011D]  1920  2920  
movr 024h,0  ;  [011E]  0324  0824  
subar 022h,0  ;  [011F]  0A22  0222  
btrsc 003h,0  ;  [0120]  2403  1803  
goto 0123h  ;  [0121]  1923  2923  
goto 0124h  ;  [0122]  1924  2924  
goto 0125h  ;  [0123]  1925  2925  
goto 0115h  ;  [0124]  1915  2915  
movr 043h,0  ;  [0125]  0343  0843  
movar 00Ah  ;  [0126]  008A  008A  
movr 042h,0  ;  [0127]  0342  0842  
movar 004h  ;  [0128]  0084  0084  
swapr 041h,0  ;  [0129]  0D41  0E41  
movar 003h  ;  [012A]  0083  0083  
swapr 07Eh,1  ;  [012B]  0DFE  0EFE  
swapr 07Eh,0  ;  [012C]  0D7E  0E7E  
retfie  ;  [012D]  007E  0009  
incr 033h,1  ;  [012E]  08B3  0AB3  
movia 005h  ;  [012F]  3205  3005  
subar 033h,0  ;  [0130]  0A33  0233  
btrss 003h,0  ;  [0131]  2003  1C03  
goto 0134h  ;  [0132]  1934  2934  
goto 0135h  ;  [0133]  1935  2935  
goto 021Dh  ;  [0134]  1A1D  2A1D  
clrr 033h  ;  [0135]  01B3  01B3  
btrss 07Ch,3  ;  [0136]  21FC  1DFC  
goto 0139h  ;  [0137]  1939  2939  
goto 013Ah  ;  [0138]  193A  293A  
goto 01E4h  ;  [0139]  19E4  29E4  
btrss 04Eh,0  ;  [013A]  204E  1C4E  
goto 013Dh  ;  [013B]  193D  293D  
goto 013Eh  ;  [013C]  193E  293E  
goto 0195h  ;  [013D]  1995  2995  
movia 00Eh  ;  [013E]  320E  300E  
subar 023h,0  ;  [013F]  0A23  0223  
movia 056h  ;  [0140]  3256  3056  
btrsc 003h,2  ;  [0141]  2503  1903  
subar 022h,0  ;  [0142]  0A22  0222  
btrsc 003h,0  ;  [0143]  2403  1803  
goto 0146h  ;  [0144]  1946  2946  
goto 0147h  ;  [0145]  1947  2947  
goto 014Bh  ;  [0146]  194B  294B  
bcr 04Eh,0  ;  [0147]  2C4E  104E  
movia 005h  ;  [0148]  3205  3005  
movar 033h  ;  [0149]  00B3  00B3  
goto 021Dh  ;  [014A]  1A1D  2A1D  
movia 00Eh  ;  [014B]  320E  300E  
subar 023h,0  ;  [014C]  0A23  0223  
movia 0BAh  ;  [014D]  32BA  30BA  
btrsc 003h,2  ;  [014E]  2503  1903  
subar 022h,0  ;  [014F]  0A22  0222  
btrsc 003h,0  ;  [0150]  2403  1803  
goto 0153h  ;  [0151]  1953  2953  
goto 0154h  ;  [0152]  1954  2954  
goto 015Dh  ;  [0153]  195D  295D  
movr 02Bh,1  ;  [0154]  03AB  08AB  
btrss 003h,2  ;  [0155]  2103  1D03  
goto 0158h  ;  [0156]  1958  2958  
goto 0159h  ;  [0157]  1959  2959  
goto 015Dh  ;  [0158]  195D  295D  
bsr 07Ch,5  ;  [0159]  2AFC  16FC  
clrr 02Bh  ;  [015A]  01AB  01AB  
incr 02Bh,1  ;  [015B]  08AB  0AAB  
goto 021Dh  ;  [015C]  1A1D  2A1D  
movia 00Fh  ;  [015D]  320F  300F  
subar 023h,0  ;  [015E]  0A23  0223  
movia 01Eh  ;  [015F]  321E  301E  
btrsc 003h,2  ;  [0160]  2503  1903  
subar 022h,0  ;  [0161]  0A22  0222  
btrsc 003h,0  ;  [0162]  2403  1803  
goto 0165h  ;  [0163]  1965  2965  
goto 0166h  ;  [0164]  1966  2966  
goto 016Fh  ;  [0165]  196F  296F  
decr 02Bh,0  ;  [0166]  062B  032B  
btrss 003h,2  ;  [0167]  2103  1D03  
goto 016Ah  ;  [0168]  196A  296A  
goto 016Bh  ;  [0169]  196B  296B  
goto 016Fh  ;  [016A]  196F  296F  
bsr 07Ch,6  ;  [016B]  2B7C  177C  
movia 002h  ;  [016C]  3202  3002  
movar 02Bh  ;  [016D]  00AB  00AB  
goto 021Dh  ;  [016E]  1A1D  2A1D  
movia 010h  ;  [016F]  3210  3010  
subar 023h,0  ;  [0170]  0A23  0223  
movia 054h  ;  [0171]  3254  3054  
btrsc 003h,2  ;  [0172]  2503  1903  
subar 022h,0  ;  [0173]  0A22  0222  
btrsc 003h,0  ;  [0174]  2403  1803  
goto 0177h  ;  [0175]  1977  2977  
goto 0178h  ;  [0176]  1978  2978  
goto 0182h  ;  [0177]  1982  2982  
movr 02Bh,0  ;  [0178]  032B  082B  
xoria 002h  ;  [0179]  3402  3A02  
btrss 003h,2  ;  [017A]  2103  1D03  
goto 017Dh  ;  [017B]  197D  297D  
goto 017Eh  ;  [017C]  197E  297E  
goto 0182h  ;  [017D]  1982  2982  
bsr 07Ch,7  ;  [017E]  2BFC  17FC  
movia 003h  ;  [017F]  3203  3003  
movar 02Bh  ;  [0180]  00AB  00AB  
goto 021Dh  ;  [0181]  1A1D  2A1D  
movia 010h  ;  [0182]  3210  3010  
subar 023h,0  ;  [0183]  0A23  0223  
movia 054h  ;  [0184]  3254  3054  
btrsc 003h,2  ;  [0185]  2503  1903  
subar 022h,0  ;  [0186]  0A22  0222  
btrsc 003h,0  ;  [0187]  2403  1803  
goto 018Ah  ;  [0188]  198A  298A  
goto 018Bh  ;  [0189]  198B  298B  
goto 0147h  ;  [018A]  1947  2947  
movr 02Bh,0  ;  [018B]  032B  082B  
xoria 003h  ;  [018C]  3403  3A03  
btrss 003h,2  ;  [018D]  2103  1D03  
goto 0190h  ;  [018E]  1990  2990  
goto 0191h  ;  [018F]  1991  2991  
goto 0147h  ;  [0190]  1947  2947  
bsr 07Dh,0  ;  [0191]  287D  147D  
movia 004h  ;  [0192]  3204  3004  
movar 02Bh  ;  [0193]  00AB  00AB  
goto 021Dh  ;  [0194]  1A1D  2A1D  
movia 00Eh  ;  [0195]  320E  300E  
subar 023h,0  ;  [0196]  0A23  0223  
movia 056h  ;  [0197]  3256  3056  
btrsc 003h,2  ;  [0198]  2503  1903  
subar 022h,0  ;  [0199]  0A22  0222  
btrsc 003h,0  ;  [019A]  2403  1803  
goto 019Dh  ;  [019B]  199D  299D  
goto 019Eh  ;  [019C]  199E  299E  
goto 01A1h  ;  [019D]  19A1  29A1  
movia 020h  ;  [019E]  3220  3020  
xorar 07Ch,1  ;  [019F]  0BFC  06FC  
goto 01BBh  ;  [01A0]  19BB  29BB  
movia 00Eh  ;  [01A1]  320E  300E  
subar 023h,0  ;  [01A2]  0A23  0223  
movia 0BAh  ;  [01A3]  32BA  30BA  
btrsc 003h,2  ;  [01A4]  2503  1903  
subar 022h,0  ;  [01A5]  0A22  0222  
btrsc 003h,0  ;  [01A6]  2403  1803  
goto 01A9h  ;  [01A7]  19A9  29A9  
goto 01AAh  ;  [01A8]  19AA  29AA  
goto 01ADh  ;  [01A9]  19AD  29AD  
movia 040h  ;  [01AA]  3240  3040  
xorar 07Ch,1  ;  [01AB]  0BFC  06FC  
goto 01BBh  ;  [01AC]  19BB  29BB  
movia 00Fh  ;  [01AD]  320F  300F  
subar 023h,0  ;  [01AE]  0A23  0223  
movia 01Eh  ;  [01AF]  321E  301E  
btrsc 003h,2  ;  [01B0]  2503  1903  
subar 022h,0  ;  [01B1]  0A22  0222  
btrsc 003h,0  ;  [01B2]  2403  1803  
goto 01B5h  ;  [01B3]  19B5  29B5  
goto 01B6h  ;  [01B4]  19B6  29B6  
goto 01B9h  ;  [01B5]  19B9  29B9  
movia 080h  ;  [01B6]  3280  3080  
xorar 07Ch,1  ;  [01B7]  0BFC  06FC  
goto 01BBh  ;  [01B8]  19BB  29BB  
movia 001h  ;  [01B9]  3201  3001  
xorar 07Dh,1  ;  [01BA]  0BFD  06FD  
movia 00Eh  ;  [01BB]  320E  300E  
subar 023h,0  ;  [01BC]  0A23  0223  
movia 056h  ;  [01BD]  3256  3056  
btrsc 003h,2  ;  [01BE]  2503  1903  
subar 022h,0  ;  [01BF]  0A22  0222  
btrss 003h,0  ;  [01C0]  2003  1C03  
goto 01C3h  ;  [01C1]  19C3  29C3  
goto 01C4h  ;  [01C2]  19C4  29C4  
goto 01C5h  ;  [01C3]  19C5  29C5  
bsr 07Ch,5  ;  [01C4]  2AFC  16FC  
movia 00Eh  ;  [01C5]  320E  300E  
subar 023h,0  ;  [01C6]  0A23  0223  
movia 0BAh  ;  [01C7]  32BA  30BA  
btrsc 003h,2  ;  [01C8]  2503  1903  
subar 022h,0  ;  [01C9]  0A22  0222  
btrss 003h,0  ;  [01CA]  2003  1C03  
goto 01CDh  ;  [01CB]  19CD  29CD  
goto 01CEh  ;  [01CC]  19CE  29CE  
goto 01CFh  ;  [01CD]  19CF  29CF  
bsr 07Ch,6  ;  [01CE]  2B7C  177C  
movia 00Fh  ;  [01CF]  320F  300F  
subar 023h,0  ;  [01D0]  0A23  0223  
movia 01Eh  ;  [01D1]  321E  301E  
btrsc 003h,2  ;  [01D2]  2503  1903  
subar 022h,0  ;  [01D3]  0A22  0222  
btrss 003h,0  ;  [01D4]  2003  1C03  
goto 01D7h  ;  [01D5]  19D7  29D7  
goto 01D8h  ;  [01D6]  19D8  29D8  
goto 01D9h  ;  [01D7]  19D9  29D9  
bsr 07Ch,7  ;  [01D8]  2BFC  17FC  
movia 010h  ;  [01D9]  3210  3010  
subar 023h,0  ;  [01DA]  0A23  0223  
movia 054h  ;  [01DB]  3254  3054  
btrsc 003h,2  ;  [01DC]  2503  1903  
subar 022h,0  ;  [01DD]  0A22  0222  
btrss 003h,0  ;  [01DE]  2003  1C03  
goto 01E1h  ;  [01DF]  19E1  29E1  
goto 01E2h  ;  [01E0]  19E2  29E2  
goto 021Dh  ;  [01E1]  1A1D  2A1D  
bsr 07Dh,0  ;  [01E2]  287D  147D  
goto 021Dh  ;  [01E3]  1A1D  2A1D  
btrss 07Ch,2  ;  [01E4]  217C  1D7C  
goto 01E7h  ;  [01E5]  19E7  29E7  
goto 01E8h  ;  [01E6]  19E8  29E8  
goto 0219h  ;  [01E7]  1A19  2A19  
movia 00Ch  ;  [01E8]  320C  300C  
subar 023h,0  ;  [01E9]  0A23  0223  
movia 080h  ;  [01EA]  3280  3080  
btrsc 003h,2  ;  [01EB]  2503  1903  
subar 022h,0  ;  [01EC]  0A22  0222  
btrsc 003h,0  ;  [01ED]  2403  1803  
goto 01F0h  ;  [01EE]  19F0  29F0  
goto 01F1h  ;  [01EF]  19F1  29F1  
goto 01F4h  ;  [01F0]  19F4  29F4  
movia 020h  ;  [01F1]  3220  3020  
xorar 07Ch,1  ;  [01F2]  0BFC  06FC  
goto 01F5h  ;  [01F3]  19F5  29F5  
bsr 07Ch,5  ;  [01F4]  2AFC  16FC  
movia 00Eh  ;  [01F5]  320E  300E  
subar 023h,0  ;  [01F6]  0A23  0223  
movia 056h  ;  [01F7]  3256  3056  
btrsc 003h,2  ;  [01F8]  2503  1903  
subar 022h,0  ;  [01F9]  0A22  0222  
btrss 003h,0  ;  [01FA]  2003  1C03  
goto 01FDh  ;  [01FB]  19FD  29FD  
goto 01FEh  ;  [01FC]  19FE  29FE  
goto 0200h  ;  [01FD]  1A00  2A00  
bsr 07Ch,6  ;  [01FE]  2B7C  177C  
goto 0201h  ;  [01FF]  1A01  2A01  
bcr 07Ch,6  ;  [0200]  2F7C  137C  
movia 00Eh  ;  [0201]  320E  300E  
subar 023h,0  ;  [0202]  0A23  0223  
movia 0BAh  ;  [0203]  32BA  30BA  
btrsc 003h,2  ;  [0204]  2503  1903  
subar 022h,0  ;  [0205]  0A22  0222  
btrss 003h,0  ;  [0206]  2003  1C03  
goto 0209h  ;  [0207]  1A09  2A09  
goto 020Ah  ;  [0208]  1A0A  2A0A  
goto 020Ch  ;  [0209]  1A0C  2A0C  
bsr 07Ch,7  ;  [020A]  2BFC  17FC  
goto 020Dh  ;  [020B]  1A0D  2A0D  
bcr 07Ch,7  ;  [020C]  2FFC  13FC  
movia 00Fh  ;  [020D]  320F  300F  
subar 023h,0  ;  [020E]  0A23  0223  
movia 01Eh  ;  [020F]  321E  301E  
btrsc 003h,2  ;  [0210]  2503  1903  
subar 022h,0  ;  [0211]  0A22  0222  
btrss 003h,0  ;  [0212]  2003  1C03  
goto 0215h  ;  [0213]  1A15  2A15  
goto 0216h  ;  [0214]  1A16  2A16  
goto 0217h  ;  [0215]  1A17  2A17  
goto 01E2h  ;  [0216]  19E2  29E2  
bcr 07Dh,0  ;  [0217]  2C7D  107D  
goto 021Dh  ;  [0218]  1A1D  2A1D  
bcr 07Ch,5  ;  [0219]  2EFC  12FC  
bcr 07Ch,6  ;  [021A]  2F7C  137C  
bcr 07Ch,7  ;  [021B]  2FFC  13FC  
bcr 07Dh,0  ;  [021C]  2C7D  107D  
btrss 07Ch,3  ;  [021D]  21FC  1DFC  
goto 0220h  ;  [021E]  1A20  2A20  
goto 0221h  ;  [021F]  1A21  2A21  
goto 0246h  ;  [0220]  1A46  2A46  
btrsc 04Eh,0  ;  [0221]  244E  184E  
goto 0224h  ;  [0222]  1A24  2A24  
goto 0225h  ;  [0223]  1A25  2A25  
goto 0246h  ;  [0224]  1A46  2A46  
movia 010h  ;  [0225]  3210  3010  
subar 023h,0  ;  [0226]  0A23  0223  
movia 054h  ;  [0227]  3254  3054  
btrsc 003h,2  ;  [0228]  2503  1903  
subar 022h,0  ;  [0229]  0A22  0222  
btrss 003h,0  ;  [022A]  2003  1C03  
goto 022Dh  ;  [022B]  1A2D  2A2D  
goto 022Eh  ;  [022C]  1A2E  2A2E  
goto 022Fh  ;  [022D]  1A2F  2A2F  
bsr 07Dh,0  ;  [022E]  287D  147D  
movia 010h  ;  [022F]  3210  3010  
subar 023h,0  ;  [0230]  0A23  0223  
movia 004h  ;  [0231]  3204  3004  
btrsc 003h,2  ;  [0232]  2503  1903  
subar 022h,0  ;  [0233]  0A22  0222  
btrss 003h,0  ;  [0234]  2003  1C03  
goto 0237h  ;  [0235]  1A37  2A37  
goto 0238h  ;  [0236]  1A38  2A38  
goto 0246h  ;  [0237]  1A46  2A46  
movia 01Eh  ;  [0238]  321E  301E  
subar 027h,0  ;  [0239]  0A27  0227  
movia 078h  ;  [023A]  3278  3078  
btrsc 003h,2  ;  [023B]  2503  1903  
subar 026h,0  ;  [023C]  0A26  0226  
btrsc 003h,0  ;  [023D]  2403  1803  
goto 0240h  ;  [023E]  1A40  2A40  
goto 0241h  ;  [023F]  1A41  2A41  
goto 0245h  ;  [0240]  1A45  2A45  
incr 026h,1  ;  [0241]  08A6  0AA6  
btrsc 003h,2  ;  [0242]  2503  1903  
incr 027h,1  ;  [0243]  08A7  0AA7  
goto 0246h  ;  [0244]  1A46  2A46  
bsr 07Dh,0  ;  [0245]  287D  147D  
return  ;  [0246]  007C  0008  
btrss 07Ch,3  ;  [0247]  21FC  1DFC  
goto 024Ah  ;  [0248]  1A4A  2A4A  
goto 024Bh  ;  [0249]  1A4B  2A4B  
goto 0253h  ;  [024A]  1A53  2A53  
clrr 032h  ;  [024B]  01B2  01B2  
clrr 034h  ;  [024C]  01B4  01B4  
clrr 02Fh  ;  [024D]  01AF  01AF  
clrr 030h  ;  [024E]  01B0  01B0  
clrr 02Dh  ;  [024F]  01AD  01AD  
clrr 02Ch  ;  [0250]  01AC  01AC  
clrr 02Eh  ;  [0251]  01AE  01AE  
goto 02BDh  ;  [0252]  1ABD  2ABD  
call 046Ah  ;  [0253]  146A  246A  
bcr 012h,0  ;  [0254]  2C12  1012  
bsr 005h,0  ;  [0255]  2805  1405  
bcr 003h,5  ;  [0256]  2E83  1283  
btrss 005h,0  ;  [0257]  2005  1C05  
goto 025Ah  ;  [0258]  1A5A  2A5A  
goto 025Bh  ;  [0259]  1A5B  2A5B  
goto 025Dh  ;  [025A]  1A5D  2A5D  
clrr 02Eh  ;  [025B]  01AE  01AE  
goto 0262h  ;  [025C]  1A62  2A62  
clrr 02Eh  ;  [025D]  01AE  01AE  
incr 02Eh,1  ;  [025E]  08AE  0AAE  
clrr 028h  ;  [025F]  01A8  01A8  
clrr 029h  ;  [0260]  01A9  01A9  
clrr 031h  ;  [0261]  01B1  01B1  
movr 02Eh,0  ;  [0262]  032E  082E  
xorar 030h,0  ;  [0263]  0B30  0630  
btrsc 003h,2  ;  [0264]  2503  1903  
goto 0267h  ;  [0265]  1A67  2A67  
goto 0268h  ;  [0266]  1A68  2A68  
goto 026Ch  ;  [0267]  1A6C  2A6C  
clrr 02Fh  ;  [0268]  01AF  01AF  
movr 02Eh,0  ;  [0269]  032E  082E  
movar 030h  ;  [026A]  00B0  00B0  
goto 02BDh  ;  [026B]  1ABD  2ABD  
movia 003h  ;  [026C]  3203  3003  
subar 02Fh,0  ;  [026D]  0A2F  022F  
btrsc 003h,0  ;  [026E]  2403  1803  
goto 0271h  ;  [026F]  1A71  2A71  
goto 0272h  ;  [0270]  1A72  2A72  
goto 0274h  ;  [0271]  1A74  2A74  
incr 02Fh,1  ;  [0272]  08AF  0AAF  
goto 02BDh  ;  [0273]  1ABD  2ABD  
movr 032h,0  ;  [0274]  0332  0832  
xorar 02Eh,0  ;  [0275]  0B2E  062E  
btrsc 003h,2  ;  [0276]  2503  1903  
goto 0279h  ;  [0277]  1A79  2A79  
goto 027Ah  ;  [0278]  1A7A  2A7A  
goto 029Ch  ;  [0279]  1A9C  2A9C  
movr 02Eh,1  ;  [027A]  03AE  08AE  
btrss 003h,2  ;  [027B]  2103  1D03  
goto 027Eh  ;  [027C]  1A7E  2A7E  
goto 027Fh  ;  [027D]  1A7F  2A7F  
goto 0281h  ;  [027E]  1A81  2A81  
clrr 02Dh  ;  [027F]  01AD  01AD  
goto 0283h  ;  [0280]  1A83  2A83  
clrr 034h  ;  [0281]  01B4  01B4  
incr 02Ch,1  ;  [0282]  08AC  0AAC  
movr 02Ch,0  ;  [0283]  032C  082C  
xoria 002h  ;  [0284]  3402  3A02  
btrss 003h,2  ;  [0285]  2103  1D03  
goto 0288h  ;  [0286]  1A88  2A88  
goto 0289h  ;  [0287]  1A89  2A89  
goto 02BBh  ;  [0288]  1ABB  2ABB  
movia 004h  ;  [0289]  3204  3004  
xorar 07Ch,1  ;  [028A]  0BFC  06FC  
btrss 07Ch,2  ;  [028B]  217C  1D7C  
goto 028Eh  ;  [028C]  1A8E  2A8E  
goto 028Fh  ;  [028D]  1A8F  2A8F  
goto 0293h  ;  [028E]  1A93  2A93  
call 0470h  ;  [028F]  1470  2470  
movia 005h  ;  [0290]  3205  3005  
movar 033h  ;  [0291]  00B3  00B3  
goto 0298h  ;  [0292]  1A98  2A98  
call 0475h  ;  [0293]  1475  2475  
bcr 07Ch,5  ;  [0294]  2EFC  12FC  
bcr 07Ch,6  ;  [0295]  2F7C  137C  
bcr 07Ch,7  ;  [0296]  2FFC  13FC  
bcr 07Dh,0  ;  [0297]  2C7D  107D  
bcr 003h,5  ;  [0298]  2E83  1283  
clrr 02Ch  ;  [0299]  01AC  01AC  
goto 02BBh  ;  [029A]  1ABB  2ABB  
goto 02BBh  ;  [029B]  1ABB  2ABB  
movr 02Eh,1  ;  [029C]  03AE  08AE  
btrss 003h,2  ;  [029D]  2103  1D03  
goto 02A0h  ;  [029E]  1AA0  2AA0  
goto 02A1h  ;  [029F]  1AA1  2AA1  
goto 02B4h  ;  [02A0]  1AB4  2AB4  
movr 02Ch,0  ;  [02A1]  032C  082C  
btrss 003h,2  ;  [02A2]  2103  1D03  
goto 02A5h  ;  [02A3]  1AA5  2AA5  
goto 02BBh  ;  [02A4]  1ABB  2ABB  
movia 01Eh  ;  [02A5]  321E  301E  
subar 02Dh,0  ;  [02A6]  0A2D  022D  
btrss 003h,0  ;  [02A7]  2003  1C03  
goto 02AAh  ;  [02A8]  1AAA  2AAA  
goto 02ABh  ;  [02A9]  1AAB  2AAB  
goto 02ACh  ;  [02AA]  1AAC  2AAC  
goto 0298h  ;  [02AB]  1A98  2A98  
movr 02Dh,0  ;  [02AC]  032D  082D  
xoria 0FFh  ;  [02AD]  34FF  3AFF  
btrsc 003h,2  ;  [02AE]  2503  1903  
goto 02B1h  ;  [02AF]  1AB1  2AB1  
goto 02B2h  ;  [02B0]  1AB2  2AB2  
goto 029Bh  ;  [02B1]  1A9B  2A9B  
incr 02Dh,1  ;  [02B2]  08AD  0AAD  
goto 02BBh  ;  [02B3]  1ABB  2ABB  
movr 034h,0  ;  [02B4]  0334  0834  
xoria 0FFh  ;  [02B5]  34FF  3AFF  
btrsc 003h,2  ;  [02B6]  2503  1903  
goto 02B9h  ;  [02B7]  1AB9  2AB9  
goto 02BAh  ;  [02B8]  1ABA  2ABA  
goto 02BBh  ;  [02B9]  1ABB  2ABB  
incr 034h,1  ;  [02BA]  08B4  0AB4  
movr 02Eh,0  ;  [02BB]  032E  082E  
movar 032h  ;  [02BC]  00B2  00B2  
return  ;  [02BD]  007C  0008  
call 040Dh  ;  [02BE]  140D  240D  
call 03C3h  ;  [02BF]  13C3  23C3  
movia 0C8h  ;  [02C0]  32C8  30C8  
movar 031h  ;  [02C1]  00B1  00B1  
btrss 07Ch,2  ;  [02C2]  217C  1D7C  
goto 02C5h  ;  [02C3]  1AC5  2AC5  
goto 02C6h  ;  [02C4]  1AC6  2AC6  
goto 02CFh  ;  [02C5]  1ACF  2ACF  
movia 075h  ;  [02C6]  3275  3075  
subar 029h,0  ;  [02C7]  0A29  0229  
movia 030h  ;  [02C8]  3230  3030  
btrsc 003h,2  ;  [02C9]  2503  1903  
subar 028h,0  ;  [02CA]  0A28  0228  
btrsc 003h,0  ;  [02CB]  2403  1803  
goto 02CEh  ;  [02CC]  1ACE  2ACE  
goto 02CFh  ;  [02CD]  1ACF  2ACF  
goto 02D5h  ;  [02CE]  1AD5  2AD5  
movia 0C8h  ;  [02CF]  32C8  30C8  
subar 031h,0  ;  [02D0]  0A31  0231  
btrss 003h,0  ;  [02D1]  2003  1C03  
goto 02D4h  ;  [02D2]  1AD4  2AD4  
goto 02D5h  ;  [02D3]  1AD5  2AD5  
goto 02C2h  ;  [02D4]  1AC2  2AC2  
bcr 00Bh,7  ;  [02D5]  2F8B  138B  
bsr 003h,5  ;  [02D6]  2A83  1683  
bcr 00Ch,0  ;  [02D7]  2C0C  100C  
bcr 00Dh,1  ;  [02D8]  2C8D  108D  
bcr 01Bh,0  ;  [02D9]  2C1B  101B  
bcr 003h,5  ;  [02DA]  2E83  1283  
bsr 003h,6  ;  [02DB]  2B03  1703  
bcr 010h,7  ;  [02DC]  2F90  1390  
bsr 003h,5  ;  [02DD]  2A83  1683  
bcr 003h,6  ;  [02DE]  2F03  1303  
bcr 00Ch,6  ;  [02DF]  2F0C  130C  
movia 0F0h  ;  [02E0]  32F0  30F0  
bcr 003h,5  ;  [02E1]  2E83  1283  
andar 01Bh,1  ;  [02E2]  049B  059B  
bcr 01Bh,4  ;  [02E3]  2E1B  121B  
bcr 01Bh,7  ;  [02E4]  2F9B  139B  
movia 0FFh  ;  [02E5]  32FF  30FF  
bsr 003h,5  ;  [02E6]  2A83  1683  
movar 005h  ;  [02E7]  0085  0085  
movia 0FFh  ;  [02E8]  32FF  30FF  
movar 012h  ;  [02E9]  0092  0092  
movia 0FFh  ;  [02EA]  32FF  30FF  
movar 013h  ;  [02EB]  0093  0093  
movia 0F8h  ;  [02EC]  32F8  30F8  
andar 012h,1  ;  [02ED]  0492  0592  
bcr 00Bh,0  ;  [02EE]  2C0B  100B  
bsr 00Bh,3  ;  [02EF]  298B  158B  
movia 021h  ;  [02F0]  3221  3021  
iorar 00Fh,1  ;  [02F1]  0F8F  048F  
bsr 00Bh,6  ;  [02F2]  2B0B  170B  
bsr 014h,0  ;  [02F3]  2814  1414  
bsr 014h,1  ;  [02F4]  2894  1494  
bsr 014h,3  ;  [02F5]  2994  1594  
nop  ;  [02F6]  0000  0000  
nop  ;  [02F7]  0000  0000  
sleep  ;  [02F8]  0006  0063  
nop  ;  [02F9]  0000  0000  
nop  ;  [02FA]  0000  0000  
bcr 00Bh,0  ;  [02FB]  2C0B  100B  
bcr 00Bh,3  ;  [02FC]  2D8B  118B  
bsr 003h,5  ;  [02FD]  2A83  1683  
bcr 003h,6  ;  [02FE]  2F03  1303  
clrr 00Fh  ;  [02FF]  018F  018F  
movia 040h  ;  [0300]  3240  3040  
movar 014h  ;  [0301]  0094  0094  
call 040Dh  ;  [0302]  140D  240D  
call 03C3h  ;  [0303]  13C3  23C3  
movia 00Ah  ;  [0304]  320A  300A  
movar 044h  ;  [0305]  00C4  00C4  
clrr 045h  ;  [0306]  01C5  01C5  
clrr 046h  ;  [0307]  01C6  01C6  
clrr 047h  ;  [0308]  01C7  01C7  
call 031Ah  ;  [0309]  131A  231A  
bsr 07Ch,4  ;  [030A]  2A7C  167C  
btrsc 005h,5  ;  [030B]  2685  1A85  
goto 030Eh  ;  [030C]  1B0E  2B0E  
goto 030Fh  ;  [030D]  1B0F  2B0F  
goto 02C2h  ;  [030E]  1AC2  2AC2  
movia 00Bh  ;  [030F]  320B  300B  
subar 023h,0  ;  [0310]  0A23  0223  
movia 055h  ;  [0311]  3255  3055  
btrsc 003h,2  ;  [0312]  2503  1903  
subar 022h,0  ;  [0313]  0A22  0222  
btrsc 003h,0  ;  [0314]  2403  1803  
goto 0317h  ;  [0315]  1B17  2B17  
goto 0318h  ;  [0316]  1B18  2B18  
goto 02C2h  ;  [0317]  1AC2  2AC2  
goto 02D5h  ;  [0318]  1AD5  2AD5  
goto 000Eh  ;  [0319]  180E  280E  
goto 034Ch  ;  [031A]  1B4C  2B4C  
movia 0FEh  ;  [031B]  32FE  30FE  
movar 04Ch  ;  [031C]  00CC  00CC  
movia 001h  ;  [031D]  3201  3001  
movar 04Dh  ;  [031E]  00CD  00CD  
goto 0321h  ;  [031F]  1B21  2B21  
nop  ;  [0320]  0000  0000  
movia 001h  ;  [0321]  3201  3001  
bcr 003h,5  ;  [0322]  2E83  1283  
bcr 003h,6  ;  [0323]  2F03  1303  
subar 04Ch,1  ;  [0324]  0ACC  02CC  
movia 000h  ;  [0325]  3200  3000  
btrss 003h,0  ;  [0326]  2003  1C03  
decr 04Dh,1  ;  [0327]  06CD  03CD  
subar 04Dh,1  ;  [0328]  0ACD  02CD  
incr 04Ch,0  ;  [0329]  084C  0A4C  
btrsc 003h,2  ;  [032A]  2503  1903  
incr 04Dh,0  ;  [032B]  084D  0A4D  
btrss 003h,2  ;  [032C]  2103  1D03  
goto 032Fh  ;  [032D]  1B2F  2B2F  
goto 0330h  ;  [032E]  1B30  2B30  
goto 0320h  ;  [032F]  1B20  2B20  
movia 001h  ;  [0330]  3201  3001  
movar 048h  ;  [0331]  00C8  00C8  
movia 000h  ;  [0332]  3200  3000  
movar 049h  ;  [0333]  00C9  00C9  
movia 000h  ;  [0334]  3200  3000  
movar 04Ah  ;  [0335]  00CA  00CA  
movia 000h  ;  [0336]  3200  3000  
movar 04Bh  ;  [0337]  00CB  00CB  
movr 048h,0  ;  [0338]  0348  0848  
subar 044h,1  ;  [0339]  0AC4  02C4  
movr 049h,0  ;  [033A]  0349  0849  
btrss 003h,0  ;  [033B]  2003  1C03  
incrsz 049h,0  ;  [033C]  0949  0F49  
goto 033Fh  ;  [033D]  1B3F  2B3F  
goto 0340h  ;  [033E]  1B40  2B40  
subar 045h,1  ;  [033F]  0AC5  02C5  
movr 04Ah,0  ;  [0340]  034A  084A  
btrss 003h,0  ;  [0341]  2003  1C03  
incrsz 04Ah,0  ;  [0342]  094A  0F4A  
goto 0345h  ;  [0343]  1B45  2B45  
goto 0346h  ;  [0344]  1B46  2B46  
subar 046h,1  ;  [0345]  0AC6  02C6  
movr 04Bh,0  ;  [0346]  034B  084B  
btrss 003h,0  ;  [0347]  2003  1C03  
incrsz 04Bh,0  ;  [0348]  094B  0F4B  
goto 034Bh  ;  [0349]  1B4B  2B4B  
goto 034Ch  ;  [034A]  1B4C  2B4C  
subar 047h,1  ;  [034B]  0AC7  02C7  
movr 047h,0  ;  [034C]  0347  0847  
iorar 046h,0  ;  [034D]  0F46  0446  
iorar 045h,0  ;  [034E]  0F45  0445  
iorar 044h,0  ;  [034F]  0F44  0444  
btrss 003h,2  ;  [0350]  2103  1D03  
goto 0353h  ;  [0351]  1B53  2B53  
goto 0354h  ;  [0352]  1B54  2B54  
goto 031Bh  ;  [0353]  1B1B  2B1B  
return  ;  [0354]  007C  0008  
clrr 078h  ;  [0355]  01F8  01F8  
clrr 079h  ;  [0356]  01F9  01F9  
clrr 07Ah  ;  [0357]  01FA  01FA  
clrr 07Bh  ;  [0358]  01FB  01FB  
btrss 070h,0  ;  [0359]  2070  1C70  
goto 035Ch  ;  [035A]  1B5C  2B5C  
goto 035Dh  ;  [035B]  1B5D  2B5D  
goto 0374h  ;  [035C]  1B74  2B74  
movr 074h,0  ;  [035D]  0374  0874  
addar 078h,1  ;  [035E]  05F8  07F8  
movr 075h,0  ;  [035F]  0375  0875  
bcr 003h,2  ;  [0360]  2D03  1103  
btrsc 003h,0  ;  [0361]  2403  1803  
addia 001h  ;  [0362]  3801  3E01  
btrsc 003h,2  ;  [0363]  2503  1903  
goto 0366h  ;  [0364]  1B66  2B66  
addar 079h,1  ;  [0365]  05F9  07F9  
movr 076h,0  ;  [0366]  0376  0876  
bcr 003h,2  ;  [0367]  2D03  1103  
btrsc 003h,0  ;  [0368]  2403  1803  
addia 001h  ;  [0369]  3801  3E01  
btrsc 003h,2  ;  [036A]  2503  1903  
goto 036Dh  ;  [036B]  1B6D  2B6D  
addar 07Ah,1  ;  [036C]  05FA  07FA  
movr 077h,0  ;  [036D]  0377  0877  
bcr 003h,2  ;  [036E]  2D03  1103  
btrsc 003h,0  ;  [036F]  2403  1803  
addia 001h  ;  [0370]  3801  3E01  
btrsc 003h,2  ;  [0371]  2503  1903  
goto 0374h  ;  [0372]  1B74  2B74  
addar 07Bh,1  ;  [0373]  05FB  07FB  
bcr 003h,0  ;  [0374]  2C03  1003  
rlr 074h,1  ;  [0375]  0CF4  0DF4  
rlr 075h,1  ;  [0376]  0CF5  0DF5  
rlr 076h,1  ;  [0377]  0CF6  0DF6  
rlr 077h,1  ;  [0378]  0CF7  0DF7  
bcr 003h,0  ;  [0379]  2C03  1003  
rrr 073h,1  ;  [037A]  0EF3  0CF3  
rrr 072h,1  ;  [037B]  0EF2  0CF2  
rrr 071h,1  ;  [037C]  0EF1  0CF1  
rrr 070h,1  ;  [037D]  0EF0  0CF0  
movr 073h,0  ;  [037E]  0373  0873  
iorar 072h,0  ;  [037F]  0F72  0472  
iorar 071h,0  ;  [0380]  0F71  0471  
iorar 070h,0  ;  [0381]  0F70  0470  
btrss 003h,2  ;  [0382]  2103  1D03  
goto 0385h  ;  [0383]  1B85  2B85  
goto 0386h  ;  [0384]  1B86  2B86  
goto 0359h  ;  [0385]  1B59  2B59  
movr 07Bh,0  ;  [0386]  037B  087B  
movar 073h  ;  [0387]  00F3  00F3  
movr 07Ah,0  ;  [0388]  037A  087A  
movar 072h  ;  [0389]  00F2  00F2  
movr 079h,0  ;  [038A]  0379  0879  
movar 071h  ;  [038B]  00F1  00F1  
movr 078h,0  ;  [038C]  0378  0878  
movar 070h  ;  [038D]  00F0  00F0  
return  ;  [038E]  007C  0008  
btrsc 07Ch,4  ;  [038F]  267C  1A7C  
goto 0392h  ;  [0390]  1B92  2B92  
goto 0393h  ;  [0391]  1B93  2B93  
goto 0394h  ;  [0392]  1B94  2B94  
goto 03C2h  ;  [0393]  1BC2  2BC2  
call 046Ah  ;  [0394]  146A  246A  
goto 03AEh  ;  [0395]  1BAE  2BAE  
btrss 07Ch,5  ;  [0396]  22FC  1EFC  
goto 0399h  ;  [0397]  1B99  2B99  
goto 039Ah  ;  [0398]  1B9A  2B9A  
goto 03BAh  ;  [0399]  1BBA  2BBA  
call 0459h  ;  [039A]  1459  2459  
goto 03BAh  ;  [039B]  1BBA  2BBA  
btrss 07Ch,6  ;  [039C]  237C  1F7C  
goto 039Fh  ;  [039D]  1B9F  2B9F  
goto 03A0h  ;  [039E]  1BA0  2BA0  
goto 03BAh  ;  [039F]  1BBA  2BBA  
call 0450h  ;  [03A0]  1450  2450  
goto 03BAh  ;  [03A1]  1BBA  2BBA  
btrss 07Ch,7  ;  [03A2]  23FC  1FFC  
goto 03A5h  ;  [03A3]  1BA5  2BA5  
goto 03A6h  ;  [03A4]  1BA6  2BA6  
goto 03BAh  ;  [03A5]  1BBA  2BBA  
call 0447h  ;  [03A6]  1447  2447  
goto 03BAh  ;  [03A7]  1BBA  2BBA  
btrss 07Dh,0  ;  [03A8]  207D  1C7D  
goto 03ABh  ;  [03A9]  1BAB  2BAB  
goto 03ACh  ;  [03AA]  1BAC  2BAC  
goto 03BAh  ;  [03AB]  1BBA  2BBA  
call 043Eh  ;  [03AC]  143E  243E  
goto 03BAh  ;  [03AD]  1BBA  2BBA  
bcr 003h,5  ;  [03AE]  2E83  1283  
movr 035h,0  ;  [03AF]  0335  0835  
movar 004h  ;  [03B0]  0084  0084  
movia 004h  ;  [03B1]  3204  3004  
subar 004h,0  ;  [03B2]  0A04  0204  
btrsc 003h,0  ;  [03B3]  2403  1803  
goto 03BAh  ;  [03B4]  1BBA  2BBA  
movia 004h  ;  [03B5]  3204  3004  
movar 00Ah  ;  [03B6]  008A  008A  
movia 07Ah  ;  [03B7]  327A  307A  
addar 004h,0  ;  [03B8]  0504  0704  
movar 002h  ;  [03B9]  0082  0082  
incr 035h,1  ;  [03BA]  08B5  0AB5  
movia 004h  ;  [03BB]  3204  3004  
subar 035h,0  ;  [03BC]  0A35  0235  
btrss 003h,0  ;  [03BD]  2003  1C03  
goto 03C0h  ;  [03BE]  1BC0  2BC0  
goto 03C1h  ;  [03BF]  1BC1  2BC1  
goto 03C2h  ;  [03C0]  1BC2  2BC2  
clrr 035h  ;  [03C1]  01B5  01B5  
return  ;  [03C2]  007C  0008  
bsr 003h,5  ;  [03C3]  2A83  1683  
bcr 003h,6  ;  [03C4]  2F03  1303  
bcr 012h,0  ;  [03C5]  2C12  1012  
bsr 005h,0  ;  [03C6]  2805  1405  
bsr 005h,6  ;  [03C7]  2B05  1705  
bsr 005h,7  ;  [03C8]  2B85  1785  
bsr 005h,5  ;  [03C9]  2A85  1685  
call 0428h  ;  [03CA]  1428  2428  
call 041Bh  ;  [03CB]  141B  241B  
call 03FCh  ;  [03CC]  13FC  23FC  
bsr 00Bh,7  ;  [03CD]  2B8B  178B  
movia 00Ah  ;  [03CE]  320A  300A  
bcr 003h,5  ;  [03CF]  2E83  1283  
movar 044h  ;  [03D0]  00C4  00C4  
clrr 045h  ;  [03D1]  01C5  01C5  
clrr 046h  ;  [03D2]  01C6  01C6  
clrr 047h  ;  [03D3]  01C7  01C7  
call 031Ah  ;  [03D4]  131A  231A  
bsr 07Ch,0  ;  [03D5]  287C  147C  
return  ;  [03D6]  007C  0008  
clrr 005h  ;  [03D7]  0185  0185  
bsr 003h,5  ;  [03D8]  2A83  1683  
clrr 005h  ;  [03D9]  0185  0185  
clrr 015h  ;  [03DA]  0195  0195  
movia 0FFh  ;  [03DB]  32FF  30FF  
movar 012h  ;  [03DC]  0092  0092  
movia 0FFh  ;  [03DD]  32FF  30FF  
movar 013h  ;  [03DE]  0093  0093  
clrr 00Fh  ;  [03DF]  018F  018F  
bcr 003h,5  ;  [03E0]  2E83  1283  
clrr 007h  ;  [03E1]  0187  0187  
bsr 003h,5  ;  [03E2]  2A83  1683  
clrr 007h  ;  [03E3]  0187  0187  
movia 0FFh  ;  [03E4]  32FF  30FF  
bcr 003h,5  ;  [03E5]  2E83  1283  
movar 013h  ;  [03E6]  0093  0093  
movia 0FFh  ;  [03E7]  32FF  30FF  
movar 012h  ;  [03E8]  0092  0092  
return  ;  [03E9]  007C  0008  
movia 01Fh  ;  [03EA]  321F  301F  
andar 003h,1  ;  [03EB]  0483  0583  
movia 05Fh  ;  [03EC]  325F  305F  
movar 020h  ;  [03ED]  00A0  00A0  
movia 07Fh  ;  [03EE]  327F  307F  
movar 004h  ;  [03EF]  0084  0084  
call 03F6h  ;  [03F0]  13F6  23F6  
decr 004h,1  ;  [03F1]  0684  0384  
decrsz 020h,1  ;  [03F2]  07A0  0BA0  
goto 03F0h  ;  [03F3]  1BF0  2BF0  
call 03F6h  ;  [03F4]  13F6  23F6  
return  ;  [03F5]  007C  0008  
bsr 004h,7  ;  [03F6]  2B84  1784  
clrr 000h  ;  [03F7]  0180  0180  
bcr 004h,7  ;  [03F8]  2F84  1384  
clrr 000h  ;  [03F9]  0180  0180  
return  ;  [03FA]  007C  0008  
return  ;  [03FB]  007C  0008  
bcr 003h,5  ;  [03FC]  2E83  1283  
bsr 003h,6  ;  [03FD]  2B03  1703  
clrr 010h  ;  [03FE]  0190  0190  
clrr 019h  ;  [03FF]  0199  0199  
movia 017h  ;  [0400]  3217  3017  
movar 012h  ;  [0401]  0092  0092  
movia 0FCh  ;  [0402]  32FC  30FC  
movar 013h  ;  [0403]  0093  0093  
movia 005h  ;  [0404]  3205  3005  
movar 011h  ;  [0405]  0091  0091  
bsr 010h,7  ;  [0406]  2B90  1790  
bcr 003h,6  ;  [0407]  2F03  1303  
bcr 00Dh,1  ;  [0408]  2C8D  108D  
bsr 003h,5  ;  [0409]  2A83  1683  
bsr 00Dh,1  ;  [040A]  288D  148D  
bsr 00Bh,6  ;  [040B]  2B0B  170B  
return  ;  [040C]  007C  0008  
bsr 003h,5  ;  [040D]  2A83  1683  
clrr 001h  ;  [040E]  0181  0181  
clrr 00Bh  ;  [040F]  018B  018B  
bcr 00Eh,7  ;  [0410]  2F8E  138E  
clrr 00Ch  ;  [0411]  018C  018C  
bcr 003h,5  ;  [0412]  2E83  1283  
clrr 00Ch  ;  [0413]  018C  018C  
bsr 003h,5  ;  [0414]  2A83  1683  
clrr 00Dh  ;  [0415]  018D  018D  
bcr 003h,5  ;  [0416]  2E83  1283  
clrr 00Dh  ;  [0417]  018D  018D  
call 03D7h  ;  [0418]  13D7  23D7  
call 03EAh  ;  [0419]  13EA  23EA  
return  ;  [041A]  007C  0008  
movia 037h  ;  [041B]  3237  3037  
movar 01Dh  ;  [041C]  009D  009D  
movia 0FFh  ;  [041D]  32FF  30FF  
movar 01Ch  ;  [041E]  009C  009C  
movia 020h  ;  [041F]  3220  3020  
movar 01Bh  ;  [0420]  009B  009B  
bcr 003h,5  ;  [0421]  2E83  1283  
bcr 00Ch,0  ;  [0422]  2C0C  100C  
bsr 003h,5  ;  [0423]  2A83  1683  
bsr 00Ch,0  ;  [0424]  280C  140C  
bsr 00Bh,6  ;  [0425]  2B0B  170B  
bsr 01Bh,0  ;  [0426]  281B  141B  
return  ;  [0427]  007C  0008  
bcr 003h,5  ;  [0428]  2E83  1283  
clrr 01Bh  ;  [0429]  019B  019B  
clrr 01Dh  ;  [042A]  019D  019D  
movia 00Ch  ;  [042B]  320C  300C  
iorar 01Bh,1  ;  [042C]  0F9B  049B  
bsr 01Bh,4  ;  [042D]  2A1B  161B  
clrr 01Fh  ;  [042E]  019F  019F  
bsr 01Bh,7  ;  [042F]  2B9B  179B  
bcr 00Ch,6  ;  [0430]  2F0C  130C  
bsr 003h,5  ;  [0431]  2A83  1683  
bsr 00Ch,6  ;  [0432]  2B0C  170C  
return  ;  [0433]  007C  0008  
clrr 07Ch  ;  [0434]  01FC  01FC  
clrr 07Dh  ;  [0435]  01FD  01FD  
clrr 04Eh  ;  [0436]  01CE  01CE  
bcr 003h,7  ;  [0437]  2F83  1383  
movia 020h  ;  [0438]  3220  3020  
movar 004h  ;  [0439]  0084  0084  
movia 03Dh  ;  [043A]  323D  303D  
call 0462h  ;  [043B]  1462  2462  
clrr 003h  ;  [043C]  0183  0183  
goto 02BEh  ;  [043D]  1ABE  2ABE  
bsr 003h,5  ;  [043E]  2A83  1683  
bcr 005h,0  ;  [043F]  2C05  1005  
bcr 003h,5  ;  [0440]  2E83  1283  
bcr 005h,0  ;  [0441]  2C05  1005  
bsr 003h,5  ;  [0442]  2A83  1683  
bcr 005h,2  ;  [0443]  2D05  1105  
bcr 003h,5  ;  [0444]  2E83  1283  
bsr 005h,2  ;  [0445]  2905  1505  
return  ;  [0446]  007C  0008  
bsr 003h,5  ;  [0447]  2A83  1683  
bcr 005h,2  ;  [0448]  2D05  1105  
bcr 003h,5  ;  [0449]  2E83  1283  
bcr 005h,2  ;  [044A]  2D05  1105  
bsr 003h,5  ;  [044B]  2A83  1683  
bcr 005h,0  ;  [044C]  2C05  1005  
bcr 003h,5  ;  [044D]  2E83  1283  
bsr 005h,0  ;  [044E]  2805  1405  
return  ;  [044F]  007C  0008  
bsr 003h,5  ;  [0450]  2A83  1683  
bcr 005h,0  ;  [0451]  2C05  1005  
bcr 003h,5  ;  [0452]  2E83  1283  
bsr 005h,0  ;  [0453]  2805  1405  
bsr 003h,5  ;  [0454]  2A83  1683  
bcr 005h,1  ;  [0455]  2C85  1085  
bcr 003h,5  ;  [0456]  2E83  1283  
bcr 005h,1  ;  [0457]  2C85  1085  
return  ;  [0458]  007C  0008  
bsr 003h,5  ;  [0459]  2A83  1683  
bcr 005h,0  ;  [045A]  2C05  1005  
bcr 003h,5  ;  [045B]  2E83  1283  
bcr 005h,0  ;  [045C]  2C05  1005  
bsr 003h,5  ;  [045D]  2A83  1683  
bcr 005h,1  ;  [045E]  2C85  1085  
bcr 003h,5  ;  [045F]  2E83  1283  
bsr 005h,1  ;  [0460]  2885  1485  
return  ;  [0461]  007C  0008  
clrwdt  ;  [0462]  0002  0064  
clrr 000h  ;  [0463]  0180  0180  
incr 004h,1  ;  [0464]  0884  0A84  
xorar 004h,0  ;  [0465]  0B04  0604  
btrsc 003h,2  ;  [0466]  2503  1903  
retia 000h  ;  [0467]  3C00  3400  
xorar 004h,0  ;  [0468]  0B04  0604  
goto 0463h  ;  [0469]  1C63  2C63  
movia 007h  ;  [046A]  3207  3007  
bsr 003h,5  ;  [046B]  2A83  1683  
iorar 012h,1  ;  [046C]  0F92  0492  
movia 007h  ;  [046D]  3207  3007  
iorar 005h,1  ;  [046E]  0F85  0485  
return  ;  [046F]  007C  0008  
bsr 003h,5  ;  [0470]  2A83  1683  
bcr 005h,6  ;  [0471]  2F05  1305  
bcr 003h,5  ;  [0472]  2E83  1283  
bcr 005h,6  ;  [0473]  2F05  1305  
return  ;  [0474]  007C  0008  
bsr 003h,5  ;  [0475]  2A83  1683  
bcr 012h,6  ;  [0476]  2F12  1312  
bcr 013h,6  ;  [0477]  2F13  1313  
bsr 005h,6  ;  [0478]  2B05  1705  
return  ;  [0479]  007C  0008  
goto 0396h  ;  [047A]  1B96  2B96  
goto 039Ch  ;  [047B]  1B9C  2B9C  
goto 03A2h  ;  [047C]  1BA2  2BA2  
goto 03A8h  ;  [047D]  1BA8  2BA8  
nop  ;  [047E]  0000  0000  
nop  ;  [047F]  0000  0000  
nop  ;  [0480]  0000  0000  
nop  ;  [0481]  0000  0000  
nop  ;  [0482]  0000  0000  
nop  ;  [0483]  0000  0000  
nop  ;  [0484]  0000  0000  
nop  ;  [0485]  0000  0000  
nop  ;  [0486]  0000  0000  
nop  ;  [0487]  0000  0000  
nop  ;  [0488]  0000  0000  
nop  ;  [0489]  0000  0000  
nop  ;  [048A]  0000  0000  
nop  ;  [048B]  0000  0000  
nop  ;  [048C]  0000  0000  
nop  ;  [048D]  0000  0000  
nop  ;  [048E]  0000  0000  
nop  ;  [048F]  0000  0000  
nop  ;  [0490]  0000  0000  
nop  ;  [0491]  0000  0000  
nop  ;  [0492]  0000  0000  
nop  ;  [0493]  0000  0000  
nop  ;  [0494]  0000  0000  
nop  ;  [0495]  0000  0000  
nop  ;  [0496]  0000  0000  
nop  ;  [0497]  0000  0000  
nop  ;  [0498]  0000  0000  
nop  ;  [0499]  0000  0000  
nop  ;  [049A]  0000  0000  
nop  ;  [049B]  0000  0000  
nop  ;  [049C]  0000  0000  
nop  ;  [049D]  0000  0000  
nop  ;  [049E]  0000  0000  
nop  ;  [049F]  0000  0000  
nop  ;  [04A0]  0000  0000  
nop  ;  [04A1]  0000  0000  
nop  ;  [04A2]  0000  0000  
nop  ;  [04A3]  0000  0000  
nop  ;  [04A4]  0000  0000  
nop  ;  [04A5]  0000  0000  
nop  ;  [04A6]  0000  0000  
nop  ;  [04A7]  0000  0000  
nop  ;  [04A8]  0000  0000  
nop  ;  [04A9]  0000  0000  
nop  ;  [04AA]  0000  0000  
nop  ;  [04AB]  0000  0000  
nop  ;  [04AC]  0000  0000  
nop  ;  [04AD]  0000  0000  
nop  ;  [04AE]  0000  0000  
nop  ;  [04AF]  0000  0000  
nop  ;  [04B0]  0000  0000  
nop  ;  [04B1]  0000  0000  
nop  ;  [04B2]  0000  0000  
nop  ;  [04B3]  0000  0000  
nop  ;  [04B4]  0000  0000  
nop  ;  [04B5]  0000  0000  
nop  ;  [04B6]  0000  0000  
nop  ;  [04B7]  0000  0000  
nop  ;  [04B8]  0000  0000  
nop  ;  [04B9]  0000  0000  
nop  ;  [04BA]  0000  0000  
nop  ;  [04BB]  0000  0000  
nop  ;  [04BC]  0000  0000  
nop  ;  [04BD]  0000  0000  
nop  ;  [04BE]  0000  0000  
nop  ;  [04BF]  0000  0000  
nop  ;  [04C0]  0000  0000  
nop  ;  [04C1]  0000  0000  
nop  ;  [04C2]  0000  0000  
nop  ;  [04C3]  0000  0000  
nop  ;  [04C4]  0000  0000  
nop  ;  [04C5]  0000  0000  
nop  ;  [04C6]  0000  0000  
nop  ;  [04C7]  0000  0000  
nop  ;  [04C8]  0000  0000  
nop  ;  [04C9]  0000  0000  
nop  ;  [04CA]  0000  0000  
nop  ;  [04CB]  0000  0000  
nop  ;  [04CC]  0000  0000  
nop  ;  [04CD]  0000  0000  
nop  ;  [04CE]  0000  0000  
nop  ;  [04CF]  0000  0000  
nop  ;  [04D0]  0000  0000  
nop  ;  [04D1]  0000  0000  
nop  ;  [04D2]  0000  0000  
nop  ;  [04D3]  0000  0000  
nop  ;  [04D4]  0000  0000  
nop  ;  [04D5]  0000  0000  
nop  ;  [04D6]  0000  0000  
nop  ;  [04D7]  0000  0000  
nop  ;  [04D8]  0000  0000  
nop  ;  [04D9]  0000  0000  
nop  ;  [04DA]  0000  0000  
nop  ;  [04DB]  0000  0000  
nop  ;  [04DC]  0000  0000  
nop  ;  [04DD]  0000  0000  
nop  ;  [04DE]  0000  0000  
nop  ;  [04DF]  0000  0000  
nop  ;  [04E0]  0000  0000  
nop  ;  [04E1]  0000  0000  
nop  ;  [04E2]  0000  0000  
nop  ;  [04E3]  0000  0000  
nop  ;  [04E4]  0000  0000  
nop  ;  [04E5]  0000  0000  
nop  ;  [04E6]  0000  0000  
nop  ;  [04E7]  0000  0000  
nop  ;  [04E8]  0000  0000  
nop  ;  [04E9]  0000  0000  
nop  ;  [04EA]  0000  0000  
nop  ;  [04EB]  0000  0000  
nop  ;  [04EC]  0000  0000  
nop  ;  [04ED]  0000  0000  
nop  ;  [04EE]  0000  0000  
nop  ;  [04EF]  0000  0000  
nop  ;  [04F0]  0000  0000  
nop  ;  [04F1]  0000  0000  
nop  ;  [04F2]  0000  0000  
nop  ;  [04F3]  0000  0000  
nop  ;  [04F4]  0000  0000  
nop  ;  [04F5]  0000  0000  
nop  ;  [04F6]  0000  0000  
nop  ;  [04F7]  0000  0000  
nop  ;  [04F8]  0000  0000  
nop  ;  [04F9]  0000  0000  
nop  ;  [04FA]  0000  0000  
nop  ;  [04FB]  0000  0000  
nop  ;  [04FC]  0000  0000  
nop  ;  [04FD]  0000  0000  
nop  ;  [04FE]  0000  0000  
nop  ;  [04FF]  0000  0000  
nop  ;  [0500]  0000  0000  
nop  ;  [0501]  0000  0000  
nop  ;  [0502]  0000  0000  
nop  ;  [0503]  0000  0000  
nop  ;  [0504]  0000  0000  
nop  ;  [0505]  0000  0000  
nop  ;  [0506]  0000  0000  
nop  ;  [0507]  0000  0000  
nop  ;  [0508]  0000  0000  
nop  ;  [0509]  0000  0000  
nop  ;  [050A]  0000  0000  
nop  ;  [050B]  0000  0000  
nop  ;  [050C]  0000  0000  
nop  ;  [050D]  0000  0000  
nop  ;  [050E]  0000  0000  
nop  ;  [050F]  0000  0000  
nop  ;  [0510]  0000  0000  
nop  ;  [0511]  0000  0000  
nop  ;  [0512]  0000  0000  
nop  ;  [0513]  0000  0000  
nop  ;  [0514]  0000  0000  
nop  ;  [0515]  0000  0000  
nop  ;  [0516]  0000  0000  
nop  ;  [0517]  0000  0000  
nop  ;  [0518]  0000  0000  
nop  ;  [0519]  0000  0000  
nop  ;  [051A]  0000  0000  
nop  ;  [051B]  0000  0000  
nop  ;  [051C]  0000  0000  
nop  ;  [051D]  0000  0000  
nop  ;  [051E]  0000  0000  
nop  ;  [051F]  0000  0000  
nop  ;  [0520]  0000  0000  
nop  ;  [0521]  0000  0000  
nop  ;  [0522]  0000  0000  
nop  ;  [0523]  0000  0000  
nop  ;  [0524]  0000  0000  
nop  ;  [0525]  0000  0000  
nop  ;  [0526]  0000  0000  
nop  ;  [0527]  0000  0000  
nop  ;  [0528]  0000  0000  
nop  ;  [0529]  0000  0000  
nop  ;  [052A]  0000  0000  
nop  ;  [052B]  0000  0000  
nop  ;  [052C]  0000  0000  
nop  ;  [052D]  0000  0000  
nop  ;  [052E]  0000  0000  
nop  ;  [052F]  0000  0000  
nop  ;  [0530]  0000  0000  
nop  ;  [0531]  0000  0000  
nop  ;  [0532]  0000  0000  
nop  ;  [0533]  0000  0000  
nop  ;  [0534]  0000  0000  
nop  ;  [0535]  0000  0000  
nop  ;  [0536]  0000  0000  
nop  ;  [0537]  0000  0000  
nop  ;  [0538]  0000  0000  
nop  ;  [0539]  0000  0000  
nop  ;  [053A]  0000  0000  
nop  ;  [053B]  0000  0000  
nop  ;  [053C]  0000  0000  
nop  ;  [053D]  0000  0000  
nop  ;  [053E]  0000  0000  
nop  ;  [053F]  0000  0000  
nop  ;  [0540]  0000  0000  
nop  ;  [0541]  0000  0000  
nop  ;  [0542]  0000  0000  
nop  ;  [0543]  0000  0000  
nop  ;  [0544]  0000  0000  
nop  ;  [0545]  0000  0000  
nop  ;  [0546]  0000  0000  
nop  ;  [0547]  0000  0000  
nop  ;  [0548]  0000  0000  
nop  ;  [0549]  0000  0000  
nop  ;  [054A]  0000  0000  
nop  ;  [054B]  0000  0000  
nop  ;  [054C]  0000  0000  
nop  ;  [054D]  0000  0000  
nop  ;  [054E]  0000  0000  
nop  ;  [054F]  0000  0000  
nop  ;  [0550]  0000  0000  
nop  ;  [0551]  0000  0000  
nop  ;  [0552]  0000  0000  
nop  ;  [0553]  0000  0000  
nop  ;  [0554]  0000  0000  
nop  ;  [0555]  0000  0000  
nop  ;  [0556]  0000  0000  
nop  ;  [0557]  0000  0000  
nop  ;  [0558]  0000  0000  
nop  ;  [0559]  0000  0000  
nop  ;  [055A]  0000  0000  
nop  ;  [055B]  0000  0000  
nop  ;  [055C]  0000  0000  
nop  ;  [055D]  0000  0000  
nop  ;  [055E]  0000  0000  
nop  ;  [055F]  0000  0000  
nop  ;  [0560]  0000  0000  
nop  ;  [0561]  0000  0000  
nop  ;  [0562]  0000  0000  
nop  ;  [0563]  0000  0000  
nop  ;  [0564]  0000  0000  
nop  ;  [0565]  0000  0000  
nop  ;  [0566]  0000  0000  
nop  ;  [0567]  0000  0000  
nop  ;  [0568]  0000  0000  
nop  ;  [0569]  0000  0000  
nop  ;  [056A]  0000  0000  
nop  ;  [056B]  0000  0000  
nop  ;  [056C]  0000  0000  
nop  ;  [056D]  0000  0000  
nop  ;  [056E]  0000  0000  
nop  ;  [056F]  0000  0000  
nop  ;  [0570]  0000  0000  
nop  ;  [0571]  0000  0000  
nop  ;  [0572]  0000  0000  
nop  ;  [0573]  0000  0000  
nop  ;  [0574]  0000  0000  
nop  ;  [0575]  0000  0000  
nop  ;  [0576]  0000  0000  
nop  ;  [0577]  0000  0000  
nop  ;  [0578]  0000  0000  
nop  ;  [0579]  0000  0000  
nop  ;  [057A]  0000  0000  
nop  ;  [057B]  0000  0000  
nop  ;  [057C]  0000  0000  
nop  ;  [057D]  0000  0000  
nop  ;  [057E]  0000  0000  
nop  ;  [057F]  0000  0000  
nop  ;  [0580]  0000  0000  
nop  ;  [0581]  0000  0000  
nop  ;  [0582]  0000  0000  
nop  ;  [0583]  0000  0000  
nop  ;  [0584]  0000  0000  
nop  ;  [0585]  0000  0000  
nop  ;  [0586]  0000  0000  
nop  ;  [0587]  0000  0000  
nop  ;  [0588]  0000  0000  
nop  ;  [0589]  0000  0000  
nop  ;  [058A]  0000  0000  
nop  ;  [058B]  0000  0000  
nop  ;  [058C]  0000  0000  
nop  ;  [058D]  0000  0000  
nop  ;  [058E]  0000  0000  
nop  ;  [058F]  0000  0000  
nop  ;  [0590]  0000  0000  
nop  ;  [0591]  0000  0000  
nop  ;  [0592]  0000  0000  
nop  ;  [0593]  0000  0000  
nop  ;  [0594]  0000  0000  
nop  ;  [0595]  0000  0000  
nop  ;  [0596]  0000  0000  
nop  ;  [0597]  0000  0000  
nop  ;  [0598]  0000  0000  
nop  ;  [0599]  0000  0000  
nop  ;  [059A]  0000  0000  
nop  ;  [059B]  0000  0000  
nop  ;  [059C]  0000  0000  
nop  ;  [059D]  0000  0000  
nop  ;  [059E]  0000  0000  
nop  ;  [059F]  0000  0000  
nop  ;  [05A0]  0000  0000  
nop  ;  [05A1]  0000  0000  
nop  ;  [05A2]  0000  0000  
nop  ;  [05A3]  0000  0000  
nop  ;  [05A4]  0000  0000  
nop  ;  [05A5]  0000  0000  
nop  ;  [05A6]  0000  0000  
nop  ;  [05A7]  0000  0000  
nop  ;  [05A8]  0000  0000  
nop  ;  [05A9]  0000  0000  
nop  ;  [05AA]  0000  0000  
nop  ;  [05AB]  0000  0000  
nop  ;  [05AC]  0000  0000  
nop  ;  [05AD]  0000  0000  
nop  ;  [05AE]  0000  0000  
nop  ;  [05AF]  0000  0000  
nop  ;  [05B0]  0000  0000  
nop  ;  [05B1]  0000  0000  
nop  ;  [05B2]  0000  0000  
nop  ;  [05B3]  0000  0000  
nop  ;  [05B4]  0000  0000  
nop  ;  [05B5]  0000  0000  
nop  ;  [05B6]  0000  0000  
nop  ;  [05B7]  0000  0000  
nop  ;  [05B8]  0000  0000  
nop  ;  [05B9]  0000  0000  
nop  ;  [05BA]  0000  0000  
nop  ;  [05BB]  0000  0000  
nop  ;  [05BC]  0000  0000  
nop  ;  [05BD]  0000  0000  
nop  ;  [05BE]  0000  0000  
nop  ;  [05BF]  0000  0000  
nop  ;  [05C0]  0000  0000  
nop  ;  [05C1]  0000  0000  
nop  ;  [05C2]  0000  0000  
nop  ;  [05C3]  0000  0000  
nop  ;  [05C4]  0000  0000  
nop  ;  [05C5]  0000  0000  
nop  ;  [05C6]  0000  0000  
nop  ;  [05C7]  0000  0000  
nop  ;  [05C8]  0000  0000  
nop  ;  [05C9]  0000  0000  
nop  ;  [05CA]  0000  0000  
nop  ;  [05CB]  0000  0000  
nop  ;  [05CC]  0000  0000  
nop  ;  [05CD]  0000  0000  
nop  ;  [05CE]  0000  0000  
nop  ;  [05CF]  0000  0000  
nop  ;  [05D0]  0000  0000  
nop  ;  [05D1]  0000  0000  
nop  ;  [05D2]  0000  0000  
nop  ;  [05D3]  0000  0000  
nop  ;  [05D4]  0000  0000  
nop  ;  [05D5]  0000  0000  
nop  ;  [05D6]  0000  0000  
nop  ;  [05D7]  0000  0000  
nop  ;  [05D8]  0000  0000  
nop  ;  [05D9]  0000  0000  
nop  ;  [05DA]  0000  0000  
nop  ;  [05DB]  0000  0000  
nop  ;  [05DC]  0000  0000  
nop  ;  [05DD]  0000  0000  
nop  ;  [05DE]  0000  0000  
nop  ;  [05DF]  0000  0000  
nop  ;  [05E0]  0000  0000  
nop  ;  [05E1]  0000  0000  
nop  ;  [05E2]  0000  0000  
nop  ;  [05E3]  0000  0000  
nop  ;  [05E4]  0000  0000  
nop  ;  [05E5]  0000  0000  
nop  ;  [05E6]  0000  0000  
nop  ;  [05E7]  0000  0000  
nop  ;  [05E8]  0000  0000  
nop  ;  [05E9]  0000  0000  
nop  ;  [05EA]  0000  0000  
nop  ;  [05EB]  0000  0000  
nop  ;  [05EC]  0000  0000  
nop  ;  [05ED]  0000  0000  
nop  ;  [05EE]  0000  0000  
nop  ;  [05EF]  0000  0000  
nop  ;  [05F0]  0000  0000  
nop  ;  [05F1]  0000  0000  
nop  ;  [05F2]  0000  0000  
nop  ;  [05F3]  0000  0000  
nop  ;  [05F4]  0000  0000  
nop  ;  [05F5]  0000  0000  
nop  ;  [05F6]  0000  0000  
nop  ;  [05F7]  0000  0000  
nop  ;  [05F8]  0000  0000  
nop  ;  [05F9]  0000  0000  
nop  ;  [05FA]  0000  0000  
nop  ;  [05FB]  0000  0000  
nop  ;  [05FC]  0000  0000  
nop  ;  [05FD]  0000  0000  
nop  ;  [05FE]  0000  0000  
nop  ;  [05FF]  0000  0000  
nop  ;  [0600]  0000  0000  
nop  ;  [0601]  0000  0000  
nop  ;  [0602]  0000  0000  
nop  ;  [0603]  0000  0000  
nop  ;  [0604]  0000  0000  
nop  ;  [0605]  0000  0000  
nop  ;  [0606]  0000  0000  
nop  ;  [0607]  0000  0000  
nop  ;  [0608]  0000  0000  
nop  ;  [0609]  0000  0000  
nop  ;  [060A]  0000  0000  
nop  ;  [060B]  0000  0000  
nop  ;  [060C]  0000  0000  
nop  ;  [060D]  0000  0000  
nop  ;  [060E]  0000  0000  
nop  ;  [060F]  0000  0000  
nop  ;  [0610]  0000  0000  
nop  ;  [0611]  0000  0000  
nop  ;  [0612]  0000  0000  
nop  ;  [0613]  0000  0000  
nop  ;  [0614]  0000  0000  
nop  ;  [0615]  0000  0000  
nop  ;  [0616]  0000  0000  
nop  ;  [0617]  0000  0000  
nop  ;  [0618]  0000  0000  
nop  ;  [0619]  0000  0000  
nop  ;  [061A]  0000  0000  
nop  ;  [061B]  0000  0000  
nop  ;  [061C]  0000  0000  
nop  ;  [061D]  0000  0000  
nop  ;  [061E]  0000  0000  
nop  ;  [061F]  0000  0000  
nop  ;  [0620]  0000  0000  
nop  ;  [0621]  0000  0000  
nop  ;  [0622]  0000  0000  
nop  ;  [0623]  0000  0000  
nop  ;  [0624]  0000  0000  
nop  ;  [0625]  0000  0000  
nop  ;  [0626]  0000  0000  
nop  ;  [0627]  0000  0000  
nop  ;  [0628]  0000  0000  
nop  ;  [0629]  0000  0000  
nop  ;  [062A]  0000  0000  
nop  ;  [062B]  0000  0000  
nop  ;  [062C]  0000  0000  
nop  ;  [062D]  0000  0000  
nop  ;  [062E]  0000  0000  
nop  ;  [062F]  0000  0000  
nop  ;  [0630]  0000  0000  
nop  ;  [0631]  0000  0000  
nop  ;  [0632]  0000  0000  
nop  ;  [0633]  0000  0000  
nop  ;  [0634]  0000  0000  
nop  ;  [0635]  0000  0000  
nop  ;  [0636]  0000  0000  
nop  ;  [0637]  0000  0000  
nop  ;  [0638]  0000  0000  
nop  ;  [0639]  0000  0000  
nop  ;  [063A]  0000  0000  
nop  ;  [063B]  0000  0000  
nop  ;  [063C]  0000  0000  
nop  ;  [063D]  0000  0000  
nop  ;  [063E]  0000  0000  
nop  ;  [063F]  0000  0000  
nop  ;  [0640]  0000  0000  
nop  ;  [0641]  0000  0000  
nop  ;  [0642]  0000  0000  
nop  ;  [0643]  0000  0000  
nop  ;  [0644]  0000  0000  
nop  ;  [0645]  0000  0000  
nop  ;  [0646]  0000  0000  
nop  ;  [0647]  0000  0000  
nop  ;  [0648]  0000  0000  
nop  ;  [0649]  0000  0000  
nop  ;  [064A]  0000  0000  
nop  ;  [064B]  0000  0000  
nop  ;  [064C]  0000  0000  
nop  ;  [064D]  0000  0000  
nop  ;  [064E]  0000  0000  
nop  ;  [064F]  0000  0000  
nop  ;  [0650]  0000  0000  
nop  ;  [0651]  0000  0000  
nop  ;  [0652]  0000  0000  
nop  ;  [0653]  0000  0000  
nop  ;  [0654]  0000  0000  
nop  ;  [0655]  0000  0000  
nop  ;  [0656]  0000  0000  
nop  ;  [0657]  0000  0000  
nop  ;  [0658]  0000  0000  
nop  ;  [0659]  0000  0000  
nop  ;  [065A]  0000  0000  
nop  ;  [065B]  0000  0000  
nop  ;  [065C]  0000  0000  
nop  ;  [065D]  0000  0000  
nop  ;  [065E]  0000  0000  
nop  ;  [065F]  0000  0000  
nop  ;  [0660]  0000  0000  
nop  ;  [0661]  0000  0000  
nop  ;  [0662]  0000  0000  
nop  ;  [0663]  0000  0000  
nop  ;  [0664]  0000  0000  
nop  ;  [0665]  0000  0000  
nop  ;  [0666]  0000  0000  
nop  ;  [0667]  0000  0000  
nop  ;  [0668]  0000  0000  
nop  ;  [0669]  0000  0000  
nop  ;  [066A]  0000  0000  
nop  ;  [066B]  0000  0000  
nop  ;  [066C]  0000  0000  
nop  ;  [066D]  0000  0000  
nop  ;  [066E]  0000  0000  
nop  ;  [066F]  0000  0000  
nop  ;  [0670]  0000  0000  
nop  ;  [0671]  0000  0000  
nop  ;  [0672]  0000  0000  
nop  ;  [0673]  0000  0000  
nop  ;  [0674]  0000  0000  
nop  ;  [0675]  0000  0000  
nop  ;  [0676]  0000  0000  
nop  ;  [0677]  0000  0000  
nop  ;  [0678]  0000  0000  
nop  ;  [0679]  0000  0000  
nop  ;  [067A]  0000  0000  
nop  ;  [067B]  0000  0000  
nop  ;  [067C]  0000  0000  
nop  ;  [067D]  0000  0000  
nop  ;  [067E]  0000  0000  
nop  ;  [067F]  0000  0000  
nop  ;  [0680]  0000  0000  
nop  ;  [0681]  0000  0000  
nop  ;  [0682]  0000  0000  
nop  ;  [0683]  0000  0000  
nop  ;  [0684]  0000  0000  
nop  ;  [0685]  0000  0000  
nop  ;  [0686]  0000  0000  
nop  ;  [0687]  0000  0000  
nop  ;  [0688]  0000  0000  
nop  ;  [0689]  0000  0000  
nop  ;  [068A]  0000  0000  
nop  ;  [068B]  0000  0000  
nop  ;  [068C]  0000  0000  
nop  ;  [068D]  0000  0000  
nop  ;  [068E]  0000  0000  
nop  ;  [068F]  0000  0000  
nop  ;  [0690]  0000  0000  
nop  ;  [0691]  0000  0000  
nop  ;  [0692]  0000  0000  
nop  ;  [0693]  0000  0000  
nop  ;  [0694]  0000  0000  
nop  ;  [0695]  0000  0000  
nop  ;  [0696]  0000  0000  
nop  ;  [0697]  0000  0000  
nop  ;  [0698]  0000  0000  
nop  ;  [0699]  0000  0000  
nop  ;  [069A]  0000  0000  
nop  ;  [069B]  0000  0000  
nop  ;  [069C]  0000  0000  
nop  ;  [069D]  0000  0000  
nop  ;  [069E]  0000  0000  
nop  ;  [069F]  0000  0000  
nop  ;  [06A0]  0000  0000  
nop  ;  [06A1]  0000  0000  
nop  ;  [06A2]  0000  0000  
nop  ;  [06A3]  0000  0000  
nop  ;  [06A4]  0000  0000  
nop  ;  [06A5]  0000  0000  
nop  ;  [06A6]  0000  0000  
nop  ;  [06A7]  0000  0000  
nop  ;  [06A8]  0000  0000  
nop  ;  [06A9]  0000  0000  
nop  ;  [06AA]  0000  0000  
nop  ;  [06AB]  0000  0000  
nop  ;  [06AC]  0000  0000  
nop  ;  [06AD]  0000  0000  
nop  ;  [06AE]  0000  0000  
nop  ;  [06AF]  0000  0000  
nop  ;  [06B0]  0000  0000  
nop  ;  [06B1]  0000  0000  
nop  ;  [06B2]  0000  0000  
nop  ;  [06B3]  0000  0000  
nop  ;  [06B4]  0000  0000  
nop  ;  [06B5]  0000  0000  
nop  ;  [06B6]  0000  0000  
nop  ;  [06B7]  0000  0000  
nop  ;  [06B8]  0000  0000  
nop  ;  [06B9]  0000  0000  
nop  ;  [06BA]  0000  0000  
nop  ;  [06BB]  0000  0000  
nop  ;  [06BC]  0000  0000  
nop  ;  [06BD]  0000  0000  
nop  ;  [06BE]  0000  0000  
nop  ;  [06BF]  0000  0000  
nop  ;  [06C0]  0000  0000  
nop  ;  [06C1]  0000  0000  
nop  ;  [06C2]  0000  0000  
nop  ;  [06C3]  0000  0000  
nop  ;  [06C4]  0000  0000  
nop  ;  [06C5]  0000  0000  
nop  ;  [06C6]  0000  0000  
nop  ;  [06C7]  0000  0000  
nop  ;  [06C8]  0000  0000  
nop  ;  [06C9]  0000  0000  
nop  ;  [06CA]  0000  0000  
nop  ;  [06CB]  0000  0000  
nop  ;  [06CC]  0000  0000  
nop  ;  [06CD]  0000  0000  
nop  ;  [06CE]  0000  0000  
nop  ;  [06CF]  0000  0000  
nop  ;  [06D0]  0000  0000  
nop  ;  [06D1]  0000  0000  
nop  ;  [06D2]  0000  0000  
nop  ;  [06D3]  0000  0000  
nop  ;  [06D4]  0000  0000  
nop  ;  [06D5]  0000  0000  
nop  ;  [06D6]  0000  0000  
nop  ;  [06D7]  0000  0000  
nop  ;  [06D8]  0000  0000  
nop  ;  [06D9]  0000  0000  
nop  ;  [06DA]  0000  0000  
nop  ;  [06DB]  0000  0000  
nop  ;  [06DC]  0000  0000  
nop  ;  [06DD]  0000  0000  
nop  ;  [06DE]  0000  0000  
nop  ;  [06DF]  0000  0000  
nop  ;  [06E0]  0000  0000  
nop  ;  [06E1]  0000  0000  
nop  ;  [06E2]  0000  0000  
nop  ;  [06E3]  0000  0000  
nop  ;  [06E4]  0000  0000  
nop  ;  [06E5]  0000  0000  
nop  ;  [06E6]  0000  0000  
nop  ;  [06E7]  0000  0000  
nop  ;  [06E8]  0000  0000  
nop  ;  [06E9]  0000  0000  
nop  ;  [06EA]  0000  0000  
nop  ;  [06EB]  0000  0000  
nop  ;  [06EC]  0000  0000  
nop  ;  [06ED]  0000  0000  
nop  ;  [06EE]  0000  0000  
nop  ;  [06EF]  0000  0000  
nop  ;  [06F0]  0000  0000  
nop  ;  [06F1]  0000  0000  
nop  ;  [06F2]  0000  0000  
nop  ;  [06F3]  0000  0000  
nop  ;  [06F4]  0000  0000  
nop  ;  [06F5]  0000  0000  
nop  ;  [06F6]  0000  0000  
nop  ;  [06F7]  0000  0000  
nop  ;  [06F8]  0000  0000  
nop  ;  [06F9]  0000  0000  
nop  ;  [06FA]  0000  0000  
nop  ;  [06FB]  0000  0000  
nop  ;  [06FC]  0000  0000  
nop  ;  [06FD]  0000  0000  
nop  ;  [06FE]  0000  0000  
nop  ;  [06FF]  0000  0000  
nop  ;  [0700]  0000  0000  
nop  ;  [0701]  0000  0000  
nop  ;  [0702]  0000  0000  
nop  ;  [0703]  0000  0000  
nop  ;  [0704]  0000  0000  
nop  ;  [0705]  0000  0000  
nop  ;  [0706]  0000  0000  
nop  ;  [0707]  0000  0000  
nop  ;  [0708]  0000  0000  
nop  ;  [0709]  0000  0000  
nop  ;  [070A]  0000  0000  
nop  ;  [070B]  0000  0000  
nop  ;  [070C]  0000  0000  
nop  ;  [070D]  0000  0000  
nop  ;  [070E]  0000  0000  
nop  ;  [070F]  0000  0000  
nop  ;  [0710]  0000  0000  
nop  ;  [0711]  0000  0000  
nop  ;  [0712]  0000  0000  
nop  ;  [0713]  0000  0000  
nop  ;  [0714]  0000  0000  
nop  ;  [0715]  0000  0000  
nop  ;  [0716]  0000  0000  
nop  ;  [0717]  0000  0000  
nop  ;  [0718]  0000  0000  
nop  ;  [0719]  0000  0000  
nop  ;  [071A]  0000  0000  
nop  ;  [071B]  0000  0000  
nop  ;  [071C]  0000  0000  
nop  ;  [071D]  0000  0000  
nop  ;  [071E]  0000  0000  
nop  ;  [071F]  0000  0000  
nop  ;  [0720]  0000  0000  
nop  ;  [0721]  0000  0000  
nop  ;  [0722]  0000  0000  
nop  ;  [0723]  0000  0000  
nop  ;  [0724]  0000  0000  
nop  ;  [0725]  0000  0000  
nop  ;  [0726]  0000  0000  
nop  ;  [0727]  0000  0000  
nop  ;  [0728]  0000  0000  
nop  ;  [0729]  0000  0000  
nop  ;  [072A]  0000  0000  
nop  ;  [072B]  0000  0000  
nop  ;  [072C]  0000  0000  
nop  ;  [072D]  0000  0000  
nop  ;  [072E]  0000  0000  
nop  ;  [072F]  0000  0000  
nop  ;  [0730]  0000  0000  
nop  ;  [0731]  0000  0000  
nop  ;  [0732]  0000  0000  
nop  ;  [0733]  0000  0000  
nop  ;  [0734]  0000  0000  
nop  ;  [0735]  0000  0000  
nop  ;  [0736]  0000  0000  
nop  ;  [0737]  0000  0000  
nop  ;  [0738]  0000  0000  
nop  ;  [0739]  0000  0000  
nop  ;  [073A]  0000  0000  
nop  ;  [073B]  0000  0000  
nop  ;  [073C]  0000  0000  
nop  ;  [073D]  0000  0000  
nop  ;  [073E]  0000  0000  
nop  ;  [073F]  0000  0000  
nop  ;  [0740]  0000  0000  
nop  ;  [0741]  0000  0000  
nop  ;  [0742]  0000  0000  
nop  ;  [0743]  0000  0000  
nop  ;  [0744]  0000  0000  
nop  ;  [0745]  0000  0000  
nop  ;  [0746]  0000  0000  
nop  ;  [0747]  0000  0000  
nop  ;  [0748]  0000  0000  
nop  ;  [0749]  0000  0000  
nop  ;  [074A]  0000  0000  
nop  ;  [074B]  0000  0000  
nop  ;  [074C]  0000  0000  
nop  ;  [074D]  0000  0000  
nop  ;  [074E]  0000  0000  
nop  ;  [074F]  0000  0000  
nop  ;  [0750]  0000  0000  
nop  ;  [0751]  0000  0000  
nop  ;  [0752]  0000  0000  
nop  ;  [0753]  0000  0000  
nop  ;  [0754]  0000  0000  
nop  ;  [0755]  0000  0000  
nop  ;  [0756]  0000  0000  
nop  ;  [0757]  0000  0000  
nop  ;  [0758]  0000  0000  
nop  ;  [0759]  0000  0000  
nop  ;  [075A]  0000  0000  
nop  ;  [075B]  0000  0000  
nop  ;  [075C]  0000  0000  
nop  ;  [075D]  0000  0000  
nop  ;  [075E]  0000  0000  
nop  ;  [075F]  0000  0000  
nop  ;  [0760]  0000  0000  
nop  ;  [0761]  0000  0000  
nop  ;  [0762]  0000  0000  
nop  ;  [0763]  0000  0000  
nop  ;  [0764]  0000  0000  
nop  ;  [0765]  0000  0000  
nop  ;  [0766]  0000  0000  
nop  ;  [0767]  0000  0000  
nop  ;  [0768]  0000  0000  
nop  ;  [0769]  0000  0000  
nop  ;  [076A]  0000  0000  
nop  ;  [076B]  0000  0000  
nop  ;  [076C]  0000  0000  
nop  ;  [076D]  0000  0000  
nop  ;  [076E]  0000  0000  
nop  ;  [076F]  0000  0000  
nop  ;  [0770]  0000  0000  
nop  ;  [0771]  0000  0000  
nop  ;  [0772]  0000  0000  
nop  ;  [0773]  0000  0000  
nop  ;  [0774]  0000  0000  
nop  ;  [0775]  0000  0000  
nop  ;  [0776]  0000  0000  
nop  ;  [0777]  0000  0000  
nop  ;  [0778]  0000  0000  
nop  ;  [0779]  0000  0000  
nop  ;  [077A]  0000  0000  
nop  ;  [077B]  0000  0000  
nop  ;  [077C]  0000  0000  
nop  ;  [077D]  0000  0000  
nop  ;  [077E]  0000  0000  
nop  ;  [077F]  0000  0000  
nop  ;  [0780]  0000  0000  
nop  ;  [0781]  0000  0000  
nop  ;  [0782]  0000  0000  
nop  ;  [0783]  0000  0000  
nop  ;  [0784]  0000  0000  
nop  ;  [0785]  0000  0000  
nop  ;  [0786]  0000  0000  
nop  ;  [0787]  0000  0000  
nop  ;  [0788]  0000  0000  
nop  ;  [0789]  0000  0000  
nop  ;  [078A]  0000  0000  
nop  ;  [078B]  0000  0000  
nop  ;  [078C]  0000  0000  
nop  ;  [078D]  0000  0000  
nop  ;  [078E]  0000  0000  
nop  ;  [078F]  0000  0000  
nop  ;  [0790]  0000  0000  
nop  ;  [0791]  0000  0000  
nop  ;  [0792]  0000  0000  
nop  ;  [0793]  0000  0000  
nop  ;  [0794]  0000  0000  
nop  ;  [0795]  0000  0000  
nop  ;  [0796]  0000  0000  
nop  ;  [0797]  0000  0000  
nop  ;  [0798]  0000  0000  
nop  ;  [0799]  0000  0000  
nop  ;  [079A]  0000  0000  
nop  ;  [079B]  0000  0000  
nop  ;  [079C]  0000  0000  
nop  ;  [079D]  0000  0000  
nop  ;  [079E]  0000  0000  
nop  ;  [079F]  0000  0000  
nop  ;  [07A0]  0000  0000  
nop  ;  [07A1]  0000  0000  
nop  ;  [07A2]  0000  0000  
nop  ;  [07A3]  0000  0000  
nop  ;  [07A4]  0000  0000  
nop  ;  [07A5]  0000  0000  
nop  ;  [07A6]  0000  0000  
nop  ;  [07A7]  0000  0000  
nop  ;  [07A8]  0000  0000  
nop  ;  [07A9]  0000  0000  
nop  ;  [07AA]  0000  0000  
nop  ;  [07AB]  0000  0000  
nop  ;  [07AC]  0000  0000  
nop  ;  [07AD]  0000  0000  
nop  ;  [07AE]  0000  0000  
nop  ;  [07AF]  0000  0000  
nop  ;  [07B0]  0000  0000  
nop  ;  [07B1]  0000  0000  
nop  ;  [07B2]  0000  0000  
nop  ;  [07B3]  0000  0000  
nop  ;  [07B4]  0000  0000  
nop  ;  [07B5]  0000  0000  
nop  ;  [07B6]  0000  0000  
nop  ;  [07B7]  0000  0000  
nop  ;  [07B8]  0000  0000  
nop  ;  [07B9]  0000  0000  
nop  ;  [07BA]  0000  0000  
nop  ;  [07BB]  0000  0000  
nop  ;  [07BC]  0000  0000  
nop  ;  [07BD]  0000  0000  
nop  ;  [07BE]  0000  0000  
nop  ;  [07BF]  0000  0000  
nop  ;  [07C0]  0000  0000  
nop  ;  [07C1]  0000  0000  
nop  ;  [07C2]  0000  0000  
nop  ;  [07C3]  0000  0000  
nop  ;  [07C4]  0000  0000  
nop  ;  [07C5]  0000  0000  
nop  ;  [07C6]  0000  0000  
nop  ;  [07C7]  0000  0000  
nop  ;  [07C8]  0000  0000  
nop  ;  [07C9]  0000  0000  
nop  ;  [07CA]  0000  0000  
nop  ;  [07CB]  0000  0000  
nop  ;  [07CC]  0000  0000  
nop  ;  [07CD]  0000  0000  
nop  ;  [07CE]  0000  0000  
nop  ;  [07CF]  0000  0000  
nop  ;  [07D0]  0000  0000  
nop  ;  [07D1]  0000  0000  
nop  ;  [07D2]  0000  0000  
nop  ;  [07D3]  0000  0000  
nop  ;  [07D4]  0000  0000  
nop  ;  [07D5]  0000  0000  
nop  ;  [07D6]  0000  0000  
nop  ;  [07D7]  0000  0000  
nop  ;  [07D8]  0000  0000  
nop  ;  [07D9]  0000  0000  
nop  ;  [07DA]  0000  0000  
nop  ;  [07DB]  0000  0000  
nop  ;  [07DC]  0000  0000  
nop  ;  [07DD]  0000  0000  
nop  ;  [07DE]  0000  0000  
nop  ;  [07DF]  0000  0000  
nop  ;  [07E0]  0000  0000  
nop  ;  [07E1]  0000  0000  
nop  ;  [07E2]  0000  0000  
nop  ;  [07E3]  0000  0000  
nop  ;  [07E4]  0000  0000  
nop  ;  [07E5]  0000  0000  
nop  ;  [07E6]  0000  0000  
nop  ;  [07E7]  0000  0000  
nop  ;  [07E8]  0000  0000  
nop  ;  [07E9]  0000  0000  
nop  ;  [07EA]  0000  0000  
nop  ;  [07EB]  0000  0000  
nop  ;  [07EC]  0000  0000  
nop  ;  [07ED]  0000  0000  
nop  ;  [07EE]  0000  0000  
nop  ;  [07EF]  0000  0000  
nop  ;  [07F0]  0000  0000  
nop  ;  [07F1]  0000  0000  
nop  ;  [07F2]  0000  0000  
nop  ;  [07F3]  0000  0000  
nop  ;  [07F4]  0000  0000  
nop  ;  [07F5]  0000  0000  
nop  ;  [07F6]  0000  0000  
nop  ;  [07F7]  0000  0000  
nop  ;  [07F8]  0000  0000  
nop  ;  [07F9]  0000  0000  
nop  ;  [07FA]  0000  0000  
nop  ;  [07FB]  0000  0000  
nop  ;  [07FC]  0000  0000  
nop  ;  [07FD]  0000  0000  
nop  ;  [07FE]  0000  0000  
nop  ;  [07FF]  0000  0000  
