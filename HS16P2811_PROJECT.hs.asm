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
goto 0378h  ;  [000E]  1B78  2B78  
btrss 00Ch,0  ;  [000F]  200C  1C0C  
goto 001Fh  ;  [0010]  181F  281F  
movia 037h  ;  [0011]  3237  3037  
bcr 00Ch,0  ;  [0012]  2C0C  100C  
bsr 003h,5  ;  [0013]  2A83  1683  
movar 01Dh  ;  [0014]  009D  009D  
movia 0FFh  ;  [0015]  32FF  30FF  
movar 01Ch  ;  [0016]  009C  009C  
call 02E0h  ;  [0017]  12E0  22E0  
btrsc 07Ch,0  ;  [0018]  247C  187C  
btrsc 07Ch,1  ;  [0019]  24FC  18FC  
goto 001Fh  ;  [001A]  181F  281F  
bsr 07Ch,1  ;  [001B]  28FC  14FC  
bcr 003h,5  ;  [001C]  2E83  1283  
bcr 01Bh,5  ;  [001D]  2E9B  129B  
bsr 01Bh,6  ;  [001E]  2B1B  171B  
bcr 003h,5  ;  [001F]  2E83  1283  
btrss 00Dh,1  ;  [0020]  208D  1C8D  
goto 006Bh  ;  [0021]  186B  286B  
movia 017h  ;  [0022]  3217  3017  
bcr 00Dh,1  ;  [0023]  2C8D  108D  
bsr 003h,6  ;  [0024]  2B03  1703  
movar 012h  ;  [0025]  0092  0092  
movia 0FCh  ;  [0026]  32FC  30FC  
movar 013h  ;  [0027]  0093  0093  
bcr 003h,6  ;  [0028]  2F03  1303  
incr 037h,1  ;  [0029]  08B7  0AB7  
movia 00Ah  ;  [002A]  320A  300A  
subar 037h,0  ;  [002B]  0A37  0237  
btrss 003h,0  ;  [002C]  2003  1C03  
goto 005Ch  ;  [002D]  185C  285C  
clrr 037h  ;  [002E]  01B7  01B7  
btrss 005h,5  ;  [002F]  2285  1E85  
goto 0041h  ;  [0030]  1841  2841  
clrr 038h  ;  [0031]  01B8  01B8  
btrsc 07Ch,3  ;  [0032]  25FC  19FC  
goto 0048h  ;  [0033]  1848  2848  
call 03B8h  ;  [0034]  13B8  23B8  
bcr 07Ch,5  ;  [0035]  2EFC  12FC  
bcr 07Ch,6  ;  [0036]  2F7C  137C  
bcr 07Ch,7  ;  [0037]  2FFC  13FC  
bcr 07Dh,0  ;  [0038]  2C7D  107D  
bcr 07Ch,2  ;  [0039]  2D7C  117C  
bcr 003h,5  ;  [003A]  2E83  1283  
bsr 04Eh,0  ;  [003B]  284E  144E  
clrr 02Bh  ;  [003C]  01AB  01AB  
clrr 026h  ;  [003D]  01A6  01A6  
clrr 027h  ;  [003E]  01A7  01A7  
bsr 07Ch,3  ;  [003F]  29FC  15FC  
goto 0048h  ;  [0040]  1848  2848  
incr 038h,1  ;  [0041]  08B8  0AB8  
movia 014h  ;  [0042]  3214  3014  
subar 038h,0  ;  [0043]  0A38  0238  
btrss 003h,0  ;  [0044]  2003  1C03  
goto 0048h  ;  [0045]  1848  2848  
clrr 038h  ;  [0046]  01B8  01B8  
bcr 07Ch,3  ;  [0047]  2DFC  11FC  
call 01D4h  ;  [0048]  11D4  21D4  
btrss 07Ch,2  ;  [0049]  217C  1D7C  
goto 0055h  ;  [004A]  1855  2855  
movia 00Bh  ;  [004B]  320B  300B  
subar 023h,0  ;  [004C]  0A23  0223  
movia 054h  ;  [004D]  3254  3054  
btrsc 003h,2  ;  [004E]  2503  1903  
subar 022h,0  ;  [004F]  0A22  0222  
btrsc 003h,0  ;  [0050]  2403  1803  
goto 0055h  ;  [0051]  1855  2855  
call 03B8h  ;  [0052]  13B8  23B8  
call 03B3h  ;  [0053]  13B3  23B3  
bcr 07Ch,2  ;  [0054]  2D7C  117C  
bcr 003h,5  ;  [0055]  2E83  1283  
btrss 005h,5  ;  [0056]  2285  1E85  
btrsc 07Ch,2  ;  [0057]  257C  197C  
goto 005Bh  ;  [0058]  185B  285B  
incr 031h,1  ;  [0059]  08B1  0AB1  
goto 005Ch  ;  [005A]  185C  285C  
clrr 031h  ;  [005B]  01B1  01B1  
incr 036h,1  ;  [005C]  08B6  0AB6  
movia 064h  ;  [005D]  3264  3064  
subar 036h,0  ;  [005E]  0A36  0236  
btrss 003h,0  ;  [005F]  2003  1C03  
goto 006Bh  ;  [0060]  186B  286B  
clrr 036h  ;  [0061]  01B6  01B6  
call 00FDh  ;  [0062]  10FD  20FD  
btrss 07Ch,2  ;  [0063]  217C  1D7C  
goto 0069h  ;  [0064]  1869  2869  
incr 028h,1  ;  [0065]  08A8  0AA8  
btrsc 003h,2  ;  [0066]  2503  1903  
incr 029h,1  ;  [0067]  08A9  0AA9  
goto 006Bh  ;  [0068]  186B  286B  
clrr 028h  ;  [0069]  01A8  01A8  
clrr 029h  ;  [006A]  01A9  01A9  
btrss 00Ch,6  ;  [006B]  230C  1F0C  
goto 00F4h  ;  [006C]  18F4  28F4  
bcr 00Ch,6  ;  [006D]  2F0C  130C  
bcr 07Ch,1  ;  [006E]  2CFC  10FC  
movr 01Ch,0  ;  [006F]  031C  081C  
movar 020h  ;  [0070]  00A0  00A0  
clrr 021h  ;  [0071]  01A1  01A1  
swapr 020h,1  ;  [0072]  0DA0  0EA0  
swapr 021h,1  ;  [0073]  0DA1  0EA1  
movia 0F0h  ;  [0074]  32F0  30F0  
andar 021h,1  ;  [0075]  04A1  05A1  
movr 020h,0  ;  [0076]  0320  0820  
andia 00Fh  ;  [0077]  3A0F  390F  
iorar 021h,1  ;  [0078]  0FA1  04A1  
movia 0F0h  ;  [0079]  32F0  30F0  
andar 020h,1  ;  [007A]  04A0  05A0  
movr 01Dh,0  ;  [007B]  031D  081D  
andia 00Fh  ;  [007C]  3A0F  390F  
addar 020h,1  ;  [007D]  05A0  07A0  
btrsc 003h,0  ;  [007E]  2403  1803  
incr 021h,1  ;  [007F]  08A1  0AA1  
movr 02Ah,1  ;  [0080]  03AA  08AA  
btrss 003h,2  ;  [0081]  2103  1D03  
goto 0087h  ;  [0082]  1887  2887  
clrr 039h  ;  [0083]  01B9  01B9  
clrr 03Ah  ;  [0084]  01BA  01BA  
clrr 03Bh  ;  [0085]  01BB  01BB  
clrr 03Ch  ;  [0086]  01BC  01BC  
movr 020h,0  ;  [0087]  0320  0820  
movar 03Dh  ;  [0088]  00BD  00BD  
movr 021h,0  ;  [0089]  0321  0821  
movar 03Eh  ;  [008A]  00BE  00BE  
clrr 03Fh  ;  [008B]  01BF  01BF  
clrr 040h  ;  [008C]  01C0  01C0  
movr 03Dh,0  ;  [008D]  033D  083D  
addar 039h,1  ;  [008E]  05B9  07B9  
movr 03Eh,0  ;  [008F]  033E  083E  
bcr 003h,2  ;  [0090]  2D03  1103  
btrsc 003h,0  ;  [0091]  2403  1803  
addia 001h  ;  [0092]  3801  3E01  
btrss 003h,2  ;  [0093]  2103  1D03  
addar 03Ah,1  ;  [0094]  05BA  07BA  
movr 03Fh,0  ;  [0095]  033F  083F  
bcr 003h,2  ;  [0096]  2D03  1103  
btrsc 003h,0  ;  [0097]  2403  1803  
addia 001h  ;  [0098]  3801  3E01  
btrss 003h,2  ;  [0099]  2103  1D03  
addar 03Bh,1  ;  [009A]  05BB  07BB  
movr 040h,0  ;  [009B]  0340  0840  
bcr 003h,2  ;  [009C]  2D03  1103  
btrsc 003h,0  ;  [009D]  2403  1803  
addia 001h  ;  [009E]  3801  3E01  
btrss 003h,2  ;  [009F]  2103  1D03  
addar 03Ch,1  ;  [00A0]  05BC  07BC  
incr 02Ah,1  ;  [00A1]  08AA  0AAA  
movia 020h  ;  [00A2]  3220  3020  
subar 02Ah,0  ;  [00A3]  0A2A  022A  
btrss 003h,0  ;  [00A4]  2003  1C03  
goto 00F4h  ;  [00A5]  18F4  28F4  
movr 03Ch,0  ;  [00A6]  033C  083C  
movar 073h  ;  [00A7]  00F3  00F3  
movr 03Bh,0  ;  [00A8]  033B  083B  
movar 072h  ;  [00A9]  00F2  00F2  
movr 03Ah,0  ;  [00AA]  033A  083A  
movar 071h  ;  [00AB]  00F1  00F1  
movr 039h,0  ;  [00AC]  0339  0839  
movar 070h  ;  [00AD]  00F0  00F0  
movia 005h  ;  [00AE]  3205  3005  
bcr 003h,0  ;  [00AF]  2C03  1003  
rrr 073h,1  ;  [00B0]  0EF3  0CF3  
rrr 072h,1  ;  [00B1]  0EF2  0CF2  
rrr 071h,1  ;  [00B2]  0EF1  0CF1  
rrr 070h,1  ;  [00B3]  0EF0  0CF0  
addia 0FFh  ;  [00B4]  38FF  3EFF  
btrss 003h,2  ;  [00B5]  2103  1D03  
goto 00AFh  ;  [00B6]  18AF  28AF  
movia 000h  ;  [00B7]  3200  3000  
movar 077h  ;  [00B8]  00F7  00F7  
movia 01Fh  ;  [00B9]  321F  301F  
clrr 076h  ;  [00BA]  01F6  01F6  
movar 075h  ;  [00BB]  00F5  00F5  
movia 040h  ;  [00BC]  3240  3040  
movar 074h  ;  [00BD]  00F4  00F4  
call 0283h  ;  [00BE]  1283  2283  
movr 070h,0  ;  [00BF]  0370  0870  
movar 03Dh  ;  [00C0]  00BD  00BD  
movr 071h,0  ;  [00C1]  0371  0871  
movar 03Eh  ;  [00C2]  00BE  00BE  
movr 072h,0  ;  [00C3]  0372  0872  
movar 03Fh  ;  [00C4]  00BF  00BF  
movr 073h,0  ;  [00C5]  0373  0873  
movar 040h  ;  [00C6]  00C0  00C0  
movia 00Ch  ;  [00C7]  320C  300C  
bcr 003h,0  ;  [00C8]  2C03  1003  
rrr 040h,1  ;  [00C9]  0EC0  0CC0  
rrr 03Fh,1  ;  [00CA]  0EBF  0CBF  
rrr 03Eh,1  ;  [00CB]  0EBE  0CBE  
rrr 03Dh,1  ;  [00CC]  0EBD  0CBD  
addia 0FFh  ;  [00CD]  38FF  3EFF  
btrss 003h,2  ;  [00CE]  2103  1D03  
goto 00C8h  ;  [00CF]  18C8  28C8  
movr 03Eh,0  ;  [00D0]  033E  083E  
movar 025h  ;  [00D1]  00A5  00A5  
movr 03Dh,0  ;  [00D2]  033D  083D  
movar 024h  ;  [00D3]  00A4  00A4  
clrr 02Ah  ;  [00D4]  01AA  01AA  
movr 023h,0  ;  [00D5]  0323  0823  
iorar 022h,0  ;  [00D6]  0F22  0422  
btrss 003h,2  ;  [00D7]  2103  1D03  
goto 00DDh  ;  [00D8]  18DD  28DD  
movr 025h,0  ;  [00D9]  0325  0825  
movar 023h  ;  [00DA]  00A3  00A3  
movr 024h,0  ;  [00DB]  0324  0824  
movar 022h  ;  [00DC]  00A2  00A2  
btrss 07Ch,2  ;  [00DD]  217C  1D7C  
goto 00ECh  ;  [00DE]  18EC  28EC  
movr 023h,0  ;  [00DF]  0323  0823  
subar 025h,0  ;  [00E0]  0A25  0225  
btrss 003h,2  ;  [00E1]  2103  1D03  
goto 00E5h  ;  [00E2]  18E5  28E5  
movr 022h,0  ;  [00E3]  0322  0822  
subar 024h,0  ;  [00E4]  0A24  0224  
btrsc 003h,0  ;  [00E5]  2403  1803  
goto 00F4h  ;  [00E6]  18F4  28F4  
movr 025h,0  ;  [00E7]  0325  0825  
movar 023h  ;  [00E8]  00A3  00A3  
movr 024h,0  ;  [00E9]  0324  0824  
movar 022h  ;  [00EA]  00A2  00A2  
goto 00F4h  ;  [00EB]  18F4  28F4  
movr 025h,0  ;  [00EC]  0325  0825  
subar 023h,0  ;  [00ED]  0A23  0223  
btrss 003h,2  ;  [00EE]  2103  1D03  
goto 00F2h  ;  [00EF]  18F2  28F2  
movr 024h,0  ;  [00F0]  0324  0824  
subar 022h,0  ;  [00F1]  0A22  0222  
btrss 003h,0  ;  [00F2]  2003  1C03  
goto 00E7h  ;  [00F3]  18E7  28E7  
movr 043h,0  ;  [00F4]  0343  0843  
movar 00Ah  ;  [00F5]  008A  008A  
movr 042h,0  ;  [00F6]  0342  0842  
movar 004h  ;  [00F7]  0084  0084  
swapr 041h,0  ;  [00F8]  0D41  0E41  
movar 003h  ;  [00F9]  0083  0083  
swapr 07Eh,1  ;  [00FA]  0DFE  0EFE  
swapr 07Eh,0  ;  [00FB]  0D7E  0E7E  
retfie  ;  [00FC]  007E  0009  
incr 033h,1  ;  [00FD]  08B3  0AB3  
movia 005h  ;  [00FE]  3205  3005  
subar 033h,0  ;  [00FF]  0A33  0233  
btrss 003h,0  ;  [0100]  2003  1C03  
goto 01B6h  ;  [0101]  19B6  29B6  
clrr 033h  ;  [0102]  01B3  01B3  
btrss 07Ch,3  ;  [0103]  21FC  1DFC  
goto 0189h  ;  [0104]  1989  2989  
btrss 04Eh,0  ;  [0105]  204E  1C4E  
goto 014Bh  ;  [0106]  194B  294B  
movia 00Eh  ;  [0107]  320E  300E  
subar 023h,0  ;  [0108]  0A23  0223  
movia 056h  ;  [0109]  3256  3056  
btrsc 003h,2  ;  [010A]  2503  1903  
subar 022h,0  ;  [010B]  0A22  0222  
btrsc 003h,0  ;  [010C]  2403  1803  
goto 0110h  ;  [010D]  1910  2910  
bcr 04Eh,0  ;  [010E]  2C4E  104E  
goto 01B6h  ;  [010F]  19B6  29B6  
movia 00Eh  ;  [0110]  320E  300E  
subar 023h,0  ;  [0111]  0A23  0223  
movia 056h  ;  [0112]  3256  3056  
btrsc 003h,2  ;  [0113]  2503  1903  
subar 022h,0  ;  [0114]  0A22  0222  
btrss 003h,0  ;  [0115]  2003  1C03  
goto 011Eh  ;  [0116]  191E  291E  
movr 02Bh,1  ;  [0117]  03AB  08AB  
btrss 003h,2  ;  [0118]  2103  1D03  
goto 011Eh  ;  [0119]  191E  291E  
bsr 07Ch,5  ;  [011A]  2AFC  16FC  
clrr 02Bh  ;  [011B]  01AB  01AB  
incr 02Bh,1  ;  [011C]  08AB  0AAB  
goto 01B6h  ;  [011D]  19B6  29B6  
movia 00Eh  ;  [011E]  320E  300E  
subar 023h,0  ;  [011F]  0A23  0223  
movia 056h  ;  [0120]  3256  3056  
btrsc 003h,2  ;  [0121]  2503  1903  
subar 022h,0  ;  [0122]  0A22  0222  
btrss 003h,0  ;  [0123]  2003  1C03  
goto 012Ah  ;  [0124]  192A  292A  
decrsz 02Bh,0  ;  [0125]  072B  0B2B  
goto 012Ah  ;  [0126]  192A  292A  
movia 002h  ;  [0127]  3202  3002  
bsr 07Ch,6  ;  [0128]  2B7C  177C  
goto 0145h  ;  [0129]  1945  2945  
movia 00Eh  ;  [012A]  320E  300E  
subar 023h,0  ;  [012B]  0A23  0223  
movia 0BAh  ;  [012C]  32BA  30BA  
btrsc 003h,2  ;  [012D]  2503  1903  
subar 022h,0  ;  [012E]  0A22  0222  
btrss 003h,0  ;  [012F]  2003  1C03  
goto 0138h  ;  [0130]  1938  2938  
movr 02Bh,0  ;  [0131]  032B  082B  
xoria 002h  ;  [0132]  3402  3A02  
btrss 003h,2  ;  [0133]  2103  1D03  
goto 0138h  ;  [0134]  1938  2938  
movia 003h  ;  [0135]  3203  3003  
bsr 07Ch,7  ;  [0136]  2BFC  17FC  
goto 0145h  ;  [0137]  1945  2945  
movia 00Fh  ;  [0138]  320F  300F  
subar 023h,0  ;  [0139]  0A23  0223  
movia 01Eh  ;  [013A]  321E  301E  
btrsc 003h,2  ;  [013B]  2503  1903  
subar 022h,0  ;  [013C]  0A22  0222  
btrss 003h,0  ;  [013D]  2003  1C03  
goto 0147h  ;  [013E]  1947  2947  
movr 02Bh,0  ;  [013F]  032B  082B  
xoria 003h  ;  [0140]  3403  3A03  
btrss 003h,2  ;  [0141]  2103  1D03  
goto 0147h  ;  [0142]  1947  2947  
movia 004h  ;  [0143]  3204  3004  
bsr 07Dh,0  ;  [0144]  287D  147D  
movar 02Bh  ;  [0145]  00AB  00AB  
goto 01B6h  ;  [0146]  19B6  29B6  
movia 005h  ;  [0147]  3205  3005  
bcr 04Eh,0  ;  [0148]  2C4E  104E  
movar 033h  ;  [0149]  00B3  00B3  
goto 01B6h  ;  [014A]  19B6  29B6  
movia 00Eh  ;  [014B]  320E  300E  
subar 023h,0  ;  [014C]  0A23  0223  
movia 056h  ;  [014D]  3256  3056  
btrsc 003h,2  ;  [014E]  2503  1903  
subar 022h,0  ;  [014F]  0A22  0222  
btrsc 003h,0  ;  [0150]  2403  1803  
goto 0155h  ;  [0151]  1955  2955  
movia 020h  ;  [0152]  3220  3020  
xorar 07Ch,1  ;  [0153]  0BFC  06FC  
goto 016Bh  ;  [0154]  196B  296B  
movia 00Eh  ;  [0155]  320E  300E  
subar 023h,0  ;  [0156]  0A23  0223  
movia 0BAh  ;  [0157]  32BA  30BA  
btrsc 003h,2  ;  [0158]  2503  1903  
subar 022h,0  ;  [0159]  0A22  0222  
btrsc 003h,0  ;  [015A]  2403  1803  
goto 015Fh  ;  [015B]  195F  295F  
movia 040h  ;  [015C]  3240  3040  
xorar 07Ch,1  ;  [015D]  0BFC  06FC  
goto 016Bh  ;  [015E]  196B  296B  
movia 00Fh  ;  [015F]  320F  300F  
subar 023h,0  ;  [0160]  0A23  0223  
movia 01Eh  ;  [0161]  321E  301E  
btrsc 003h,2  ;  [0162]  2503  1903  
subar 022h,0  ;  [0163]  0A22  0222  
btrsc 003h,0  ;  [0164]  2403  1803  
goto 0169h  ;  [0165]  1969  2969  
movia 080h  ;  [0166]  3280  3080  
xorar 07Ch,1  ;  [0167]  0BFC  06FC  
goto 016Bh  ;  [0168]  196B  296B  
movia 001h  ;  [0169]  3201  3001  
xorar 07Dh,1  ;  [016A]  0BFD  06FD  
movia 00Eh  ;  [016B]  320E  300E  
subar 023h,0  ;  [016C]  0A23  0223  
movia 056h  ;  [016D]  3256  3056  
btrsc 003h,2  ;  [016E]  2503  1903  
subar 022h,0  ;  [016F]  0A22  0222  
btrsc 003h,0  ;  [0170]  2403  1803  
bsr 07Ch,5  ;  [0171]  2AFC  16FC  
movia 00Eh  ;  [0172]  320E  300E  
subar 023h,0  ;  [0173]  0A23  0223  
movia 0BAh  ;  [0174]  32BA  30BA  
btrsc 003h,2  ;  [0175]  2503  1903  
subar 022h,0  ;  [0176]  0A22  0222  
btrsc 003h,0  ;  [0177]  2403  1803  
bsr 07Ch,6  ;  [0178]  2B7C  177C  
movia 00Fh  ;  [0179]  320F  300F  
subar 023h,0  ;  [017A]  0A23  0223  
movia 01Eh  ;  [017B]  321E  301E  
btrsc 003h,2  ;  [017C]  2503  1903  
subar 022h,0  ;  [017D]  0A22  0222  
btrsc 003h,0  ;  [017E]  2403  1803  
bsr 07Ch,7  ;  [017F]  2BFC  17FC  
movia 010h  ;  [0180]  3210  3010  
subar 023h,0  ;  [0181]  0A23  0223  
movia 068h  ;  [0182]  3268  3068  
btrsc 003h,2  ;  [0183]  2503  1903  
subar 022h,0  ;  [0184]  0A22  0222  
btrss 003h,0  ;  [0185]  2003  1C03  
goto 01B6h  ;  [0186]  19B6  29B6  
bsr 07Dh,0  ;  [0187]  287D  147D  
goto 01B6h  ;  [0188]  19B6  29B6  
btrss 07Ch,2  ;  [0189]  217C  1D7C  
goto 01B2h  ;  [018A]  19B2  29B2  
movia 00Ch  ;  [018B]  320C  300C  
subar 023h,0  ;  [018C]  0A23  0223  
movia 080h  ;  [018D]  3280  3080  
btrsc 003h,2  ;  [018E]  2503  1903  
subar 022h,0  ;  [018F]  0A22  0222  
btrsc 003h,0  ;  [0190]  2403  1803  
goto 0195h  ;  [0191]  1995  2995  
movia 020h  ;  [0192]  3220  3020  
xorar 07Ch,1  ;  [0193]  0BFC  06FC  
goto 0196h  ;  [0194]  1996  2996  
bsr 07Ch,5  ;  [0195]  2AFC  16FC  
movia 00Eh  ;  [0196]  320E  300E  
subar 023h,0  ;  [0197]  0A23  0223  
movia 056h  ;  [0198]  3256  3056  
btrsc 003h,2  ;  [0199]  2503  1903  
subar 022h,0  ;  [019A]  0A22  0222  
btrss 003h,0  ;  [019B]  2003  1C03  
goto 019Fh  ;  [019C]  199F  299F  
bsr 07Ch,6  ;  [019D]  2B7C  177C  
goto 01A0h  ;  [019E]  19A0  29A0  
bcr 07Ch,6  ;  [019F]  2F7C  137C  
movia 00Eh  ;  [01A0]  320E  300E  
subar 023h,0  ;  [01A1]  0A23  0223  
movia 0BAh  ;  [01A2]  32BA  30BA  
btrsc 003h,2  ;  [01A3]  2503  1903  
subar 022h,0  ;  [01A4]  0A22  0222  
btrss 003h,0  ;  [01A5]  2003  1C03  
goto 01A9h  ;  [01A6]  19A9  29A9  
bsr 07Ch,7  ;  [01A7]  2BFC  17FC  
goto 01AAh  ;  [01A8]  19AA  29AA  
bcr 07Ch,7  ;  [01A9]  2FFC  13FC  
movia 00Fh  ;  [01AA]  320F  300F  
subar 023h,0  ;  [01AB]  0A23  0223  
movia 01Eh  ;  [01AC]  321E  301E  
btrsc 003h,2  ;  [01AD]  2503  1903  
subar 022h,0  ;  [01AE]  0A22  0222  
btrsc 003h,0  ;  [01AF]  2403  1803  
goto 0187h  ;  [01B0]  1987  2987  
goto 01B5h  ;  [01B1]  19B5  29B5  
bcr 07Ch,5  ;  [01B2]  2EFC  12FC  
bcr 07Ch,6  ;  [01B3]  2F7C  137C  
bcr 07Ch,7  ;  [01B4]  2FFC  13FC  
bcr 07Dh,0  ;  [01B5]  2C7D  107D  
btrsc 07Ch,3  ;  [01B6]  25FC  19FC  
btrsc 04Eh,0  ;  [01B7]  244E  184E  
return  ;  [01B8]  007C  0008  
movia 010h  ;  [01B9]  3210  3010  
subar 023h,0  ;  [01BA]  0A23  0223  
movia 068h  ;  [01BB]  3268  3068  
btrsc 003h,2  ;  [01BC]  2503  1903  
subar 022h,0  ;  [01BD]  0A22  0222  
btrsc 003h,0  ;  [01BE]  2403  1803  
bsr 07Dh,0  ;  [01BF]  287D  147D  
movia 010h  ;  [01C0]  3210  3010  
subar 023h,0  ;  [01C1]  0A23  0223  
movia 004h  ;  [01C2]  3204  3004  
btrsc 003h,2  ;  [01C3]  2503  1903  
subar 022h,0  ;  [01C4]  0A22  0222  
btrss 003h,0  ;  [01C5]  2003  1C03  
return  ;  [01C6]  007C  0008  
movia 01Eh  ;  [01C7]  321E  301E  
subar 027h,0  ;  [01C8]  0A27  0227  
movia 078h  ;  [01C9]  3278  3078  
btrsc 003h,2  ;  [01CA]  2503  1903  
subar 026h,0  ;  [01CB]  0A26  0226  
btrsc 003h,0  ;  [01CC]  2403  1803  
goto 01D2h  ;  [01CD]  19D2  29D2  
incr 026h,1  ;  [01CE]  08A6  0AA6  
btrsc 003h,2  ;  [01CF]  2503  1903  
incr 027h,1  ;  [01D0]  08A7  0AA7  
return  ;  [01D1]  007C  0008  
bsr 07Dh,0  ;  [01D2]  287D  147D  
return  ;  [01D3]  007C  0008  
btrss 07Ch,3  ;  [01D4]  21FC  1DFC  
goto 01DEh  ;  [01D5]  19DE  29DE  
clrr 032h  ;  [01D6]  01B2  01B2  
clrr 034h  ;  [01D7]  01B4  01B4  
clrr 02Fh  ;  [01D8]  01AF  01AF  
clrr 030h  ;  [01D9]  01B0  01B0  
clrr 02Dh  ;  [01DA]  01AD  01AD  
clrr 02Ch  ;  [01DB]  01AC  01AC  
clrr 02Eh  ;  [01DC]  01AE  01AE  
return  ;  [01DD]  007C  0008  
call 03B3h  ;  [01DE]  13B3  23B3  
bcr 012h,0  ;  [01DF]  2C12  1012  
bsr 005h,0  ;  [01E0]  2805  1405  
movia 064h  ;  [01E1]  3264  3064  
movar 070h  ;  [01E2]  00F0  00F0  
decr 070h,1  ;  [01E3]  06F0  03F0  
movr 070h,0  ;  [01E4]  0370  0870  
xoria 0FFh  ;  [01E5]  34FF  3AFF  
btrsc 003h,2  ;  [01E6]  2503  1903  
goto 01EAh  ;  [01E7]  19EA  29EA  
nop  ;  [01E8]  0000  0000  
goto 01E3h  ;  [01E9]  19E3  29E3  
bcr 003h,5  ;  [01EA]  2E83  1283  
bcr 003h,6  ;  [01EB]  2F03  1303  
btrss 005h,0  ;  [01EC]  2005  1C05  
goto 01F0h  ;  [01ED]  19F0  29F0  
clrr 02Eh  ;  [01EE]  01AE  01AE  
goto 01F5h  ;  [01EF]  19F5  29F5  
clrr 02Eh  ;  [01F0]  01AE  01AE  
incr 02Eh,1  ;  [01F1]  08AE  0AAE  
clrr 028h  ;  [01F2]  01A8  01A8  
clrr 029h  ;  [01F3]  01A9  01A9  
clrr 031h  ;  [01F4]  01B1  01B1  
movr 02Eh,0  ;  [01F5]  032E  082E  
xorar 030h,0  ;  [01F6]  0B30  0630  
btrsc 003h,2  ;  [01F7]  2503  1903  
goto 01FDh  ;  [01F8]  19FD  29FD  
clrr 02Fh  ;  [01F9]  01AF  01AF  
movr 02Eh,0  ;  [01FA]  032E  082E  
movar 030h  ;  [01FB]  00B0  00B0  
return  ;  [01FC]  007C  0008  
movia 003h  ;  [01FD]  3203  3003  
subar 02Fh,0  ;  [01FE]  0A2F  022F  
btrsc 003h,0  ;  [01FF]  2403  1803  
goto 0203h  ;  [0200]  1A03  2A03  
incr 02Fh,1  ;  [0201]  08AF  0AAF  
return  ;  [0202]  007C  0008  
movr 032h,0  ;  [0203]  0332  0832  
xorar 02Eh,0  ;  [0204]  0B2E  062E  
btrsc 003h,2  ;  [0205]  2503  1903  
goto 0222h  ;  [0206]  1A22  2A22  
movr 02Eh,1  ;  [0207]  03AE  08AE  
btrss 003h,2  ;  [0208]  2103  1D03  
goto 020Ch  ;  [0209]  1A0C  2A0C  
clrr 02Dh  ;  [020A]  01AD  01AD  
goto 020Eh  ;  [020B]  1A0E  2A0E  
clrr 034h  ;  [020C]  01B4  01B4  
incr 02Ch,1  ;  [020D]  08AC  0AAC  
movr 02Ch,0  ;  [020E]  032C  082C  
xoria 002h  ;  [020F]  3402  3A02  
btrss 003h,2  ;  [0210]  2103  1D03  
goto 0236h  ;  [0211]  1A36  2A36  
movia 004h  ;  [0212]  3204  3004  
xorar 07Ch,1  ;  [0213]  0BFC  06FC  
btrss 07Ch,2  ;  [0214]  217C  1D7C  
goto 021Ah  ;  [0215]  1A1A  2A1A  
call 03AEh  ;  [0216]  13AE  23AE  
movia 005h  ;  [0217]  3205  3005  
movar 033h  ;  [0218]  00B3  00B3  
goto 021Fh  ;  [0219]  1A1F  2A1F  
call 03B8h  ;  [021A]  13B8  23B8  
bcr 07Ch,5  ;  [021B]  2EFC  12FC  
bcr 07Ch,6  ;  [021C]  2F7C  137C  
bcr 07Ch,7  ;  [021D]  2FFC  13FC  
bcr 07Dh,0  ;  [021E]  2C7D  107D  
bcr 003h,5  ;  [021F]  2E83  1283  
clrr 02Ch  ;  [0220]  01AC  01AC  
goto 0236h  ;  [0221]  1A36  2A36  
movr 02Eh,1  ;  [0222]  03AE  08AE  
btrss 003h,2  ;  [0223]  2103  1D03  
goto 0232h  ;  [0224]  1A32  2A32  
movr 02Ch,0  ;  [0225]  032C  082C  
btrsc 003h,2  ;  [0226]  2503  1903  
goto 0236h  ;  [0227]  1A36  2A36  
movia 01Eh  ;  [0228]  321E  301E  
subar 02Dh,0  ;  [0229]  0A2D  022D  
btrsc 003h,0  ;  [022A]  2403  1803  
goto 021Fh  ;  [022B]  1A1F  2A1F  
movr 02Dh,0  ;  [022C]  032D  082D  
xoria 0FFh  ;  [022D]  34FF  3AFF  
btrsc 003h,2  ;  [022E]  2503  1903  
goto 0236h  ;  [022F]  1A36  2A36  
incr 02Dh,1  ;  [0230]  08AD  0AAD  
goto 0236h  ;  [0231]  1A36  2A36  
movr 034h,0  ;  [0232]  0334  0834  
xoria 0FFh  ;  [0233]  34FF  3AFF  
btrss 003h,2  ;  [0234]  2103  1D03  
incr 034h,1  ;  [0235]  08B4  0AB4  
movr 02Eh,0  ;  [0236]  032E  082E  
movar 032h  ;  [0237]  00B2  00B2  
return  ;  [0238]  007C  0008  
call 0352h  ;  [0239]  1352  2352  
call 0306h  ;  [023A]  1306  2306  
movia 0C8h  ;  [023B]  32C8  30C8  
bsr 07Ch,4  ;  [023C]  2A7C  167C  
movar 031h  ;  [023D]  00B1  00B1  
btrss 07Ch,2  ;  [023E]  217C  1D7C  
goto 0247h  ;  [023F]  1A47  2A47  
movia 075h  ;  [0240]  3275  3075  
subar 029h,0  ;  [0241]  0A29  0229  
movia 030h  ;  [0242]  3230  3030  
btrsc 003h,2  ;  [0243]  2503  1903  
subar 028h,0  ;  [0244]  0A28  0228  
btrsc 003h,0  ;  [0245]  2403  1803  
goto 024Bh  ;  [0246]  1A4B  2A4B  
movia 0C8h  ;  [0247]  32C8  30C8  
subar 031h,0  ;  [0248]  0A31  0231  
btrss 003h,0  ;  [0249]  2003  1C03  
goto 023Eh  ;  [024A]  1A3E  2A3E  
movia 0F0h  ;  [024B]  32F0  30F0  
bcr 00Bh,7  ;  [024C]  2F8B  138B  
bsr 003h,5  ;  [024D]  2A83  1683  
bcr 00Ch,0  ;  [024E]  2C0C  100C  
bcr 00Dh,1  ;  [024F]  2C8D  108D  
bcr 01Bh,0  ;  [0250]  2C1B  101B  
bcr 003h,5  ;  [0251]  2E83  1283  
bsr 003h,6  ;  [0252]  2B03  1703  
bcr 010h,7  ;  [0253]  2F90  1390  
bsr 003h,5  ;  [0254]  2A83  1683  
bcr 003h,6  ;  [0255]  2F03  1303  
bcr 00Ch,6  ;  [0256]  2F0C  130C  
bcr 003h,5  ;  [0257]  2E83  1283  
andar 01Bh,1  ;  [0258]  049B  059B  
movia 0FFh  ;  [0259]  32FF  30FF  
bcr 01Bh,4  ;  [025A]  2E1B  121B  
bcr 01Bh,7  ;  [025B]  2F9B  139B  
bsr 003h,5  ;  [025C]  2A83  1683  
movar 005h  ;  [025D]  0085  0085  
movar 012h  ;  [025E]  0092  0092  
movar 013h  ;  [025F]  0093  0093  
movia 0F8h  ;  [0260]  32F8  30F8  
andar 012h,1  ;  [0261]  0492  0592  
movia 021h  ;  [0262]  3221  3021  
bcr 00Bh,0  ;  [0263]  2C0B  100B  
bsr 00Bh,3  ;  [0264]  298B  158B  
iorar 00Fh,1  ;  [0265]  0F8F  048F  
bsr 00Bh,6  ;  [0266]  2B0B  170B  
bsr 014h,0  ;  [0267]  2814  1414  
bsr 014h,1  ;  [0268]  2894  1494  
bsr 014h,3  ;  [0269]  2994  1594  
nop  ;  [026A]  0000  0000  
nop  ;  [026B]  0000  0000  
sleep  ;  [026C]  0006  0063  
nop  ;  [026D]  0000  0000  
nop  ;  [026E]  0000  0000  
bcr 00Bh,0  ;  [026F]  2C0B  100B  
bcr 00Bh,3  ;  [0270]  2D8B  118B  
bsr 003h,5  ;  [0271]  2A83  1683  
bcr 003h,6  ;  [0272]  2F03  1303  
clrr 00Fh  ;  [0273]  018F  018F  
movia 040h  ;  [0274]  3240  3040  
movar 014h  ;  [0275]  0094  0094  
call 0352h  ;  [0276]  1352  2352  
call 0306h  ;  [0277]  1306  2306  
bsr 07Ch,4  ;  [0278]  2A7C  167C  
btrsc 005h,5  ;  [0279]  2685  1A85  
goto 023Eh  ;  [027A]  1A3E  2A3E  
movia 00Bh  ;  [027B]  320B  300B  
subar 023h,0  ;  [027C]  0A23  0223  
movia 055h  ;  [027D]  3255  3055  
btrsc 003h,2  ;  [027E]  2503  1903  
subar 022h,0  ;  [027F]  0A22  0222  
btrss 003h,0  ;  [0280]  2003  1C03  
goto 024Bh  ;  [0281]  1A4B  2A4B  
goto 023Eh  ;  [0282]  1A3E  2A3E  
clrr 078h  ;  [0283]  01F8  01F8  
clrr 079h  ;  [0284]  01F9  01F9  
clrr 07Ah  ;  [0285]  01FA  01FA  
clrr 07Bh  ;  [0286]  01FB  01FB  
btrss 070h,0  ;  [0287]  2070  1C70  
goto 029Dh  ;  [0288]  1A9D  2A9D  
movr 074h,0  ;  [0289]  0374  0874  
addar 078h,1  ;  [028A]  05F8  07F8  
movr 075h,0  ;  [028B]  0375  0875  
bcr 003h,2  ;  [028C]  2D03  1103  
btrsc 003h,0  ;  [028D]  2403  1803  
addia 001h  ;  [028E]  3801  3E01  
btrss 003h,2  ;  [028F]  2103  1D03  
addar 079h,1  ;  [0290]  05F9  07F9  
movr 076h,0  ;  [0291]  0376  0876  
bcr 003h,2  ;  [0292]  2D03  1103  
btrsc 003h,0  ;  [0293]  2403  1803  
addia 001h  ;  [0294]  3801  3E01  
btrss 003h,2  ;  [0295]  2103  1D03  
addar 07Ah,1  ;  [0296]  05FA  07FA  
movr 077h,0  ;  [0297]  0377  0877  
bcr 003h,2  ;  [0298]  2D03  1103  
btrsc 003h,0  ;  [0299]  2403  1803  
addia 001h  ;  [029A]  3801  3E01  
btrss 003h,2  ;  [029B]  2103  1D03  
addar 07Bh,1  ;  [029C]  05FB  07FB  
bcr 003h,0  ;  [029D]  2C03  1003  
rlr 074h,1  ;  [029E]  0CF4  0DF4  
rlr 075h,1  ;  [029F]  0CF5  0DF5  
rlr 076h,1  ;  [02A0]  0CF6  0DF6  
rlr 077h,1  ;  [02A1]  0CF7  0DF7  
bcr 003h,0  ;  [02A2]  2C03  1003  
rrr 073h,1  ;  [02A3]  0EF3  0CF3  
rrr 072h,1  ;  [02A4]  0EF2  0CF2  
rrr 071h,1  ;  [02A5]  0EF1  0CF1  
rrr 070h,1  ;  [02A6]  0EF0  0CF0  
movr 073h,0  ;  [02A7]  0373  0873  
iorar 072h,0  ;  [02A8]  0F72  0472  
iorar 071h,0  ;  [02A9]  0F71  0471  
iorar 070h,0  ;  [02AA]  0F70  0470  
btrss 003h,2  ;  [02AB]  2103  1D03  
goto 0287h  ;  [02AC]  1A87  2A87  
movr 07Bh,0  ;  [02AD]  037B  087B  
movar 073h  ;  [02AE]  00F3  00F3  
movr 07Ah,0  ;  [02AF]  037A  087A  
movar 072h  ;  [02B0]  00F2  00F2  
movr 079h,0  ;  [02B1]  0379  0879  
movar 071h  ;  [02B2]  00F1  00F1  
movr 078h,0  ;  [02B3]  0378  0878  
movar 070h  ;  [02B4]  00F0  00F0  
return  ;  [02B5]  007C  0008  
movr 047h,0  ;  [02B6]  0347  0847  
iorar 046h,0  ;  [02B7]  0F46  0446  
iorar 045h,0  ;  [02B8]  0F45  0445  
iorar 044h,0  ;  [02B9]  0F44  0444  
btrsc 003h,2  ;  [02BA]  2503  1903  
return  ;  [02BB]  007C  0008  
movia 0FEh  ;  [02BC]  32FE  30FE  
movar 04Ch  ;  [02BD]  00CC  00CC  
movia 001h  ;  [02BE]  3201  3001  
movar 04Dh  ;  [02BF]  00CD  00CD  
movia 001h  ;  [02C0]  3201  3001  
bcr 003h,5  ;  [02C1]  2E83  1283  
bcr 003h,6  ;  [02C2]  2F03  1303  
subar 04Ch,1  ;  [02C3]  0ACC  02CC  
btrss 003h,0  ;  [02C4]  2003  1C03  
decr 04Dh,1  ;  [02C5]  06CD  03CD  
incr 04Ch,0  ;  [02C6]  084C  0A4C  
btrsc 003h,2  ;  [02C7]  2503  1903  
incr 04Dh,0  ;  [02C8]  084D  0A4D  
btrsc 003h,2  ;  [02C9]  2503  1903  
goto 02CDh  ;  [02CA]  1ACD  2ACD  
nop  ;  [02CB]  0000  0000  
goto 02C0h  ;  [02CC]  1AC0  2AC0  
movia 001h  ;  [02CD]  3201  3001  
movar 048h  ;  [02CE]  00C8  00C8  
clrr 049h  ;  [02CF]  01C9  01C9  
clrr 04Ah  ;  [02D0]  01CA  01CA  
clrr 04Bh  ;  [02D1]  01CB  01CB  
subar 044h,1  ;  [02D2]  0AC4  02C4  
movr 049h,0  ;  [02D3]  0349  0849  
btrss 003h,0  ;  [02D4]  2003  1C03  
incrsz 049h,0  ;  [02D5]  0949  0F49  
subar 045h,1  ;  [02D6]  0AC5  02C5  
movr 04Ah,0  ;  [02D7]  034A  084A  
btrss 003h,0  ;  [02D8]  2003  1C03  
incrsz 04Ah,0  ;  [02D9]  094A  0F4A  
subar 046h,1  ;  [02DA]  0AC6  02C6  
movr 04Bh,0  ;  [02DB]  034B  084B  
btrss 003h,0  ;  [02DC]  2003  1C03  
incrsz 04Bh,0  ;  [02DD]  094B  0F4B  
subar 047h,1  ;  [02DE]  0AC7  02C7  
goto 02B6h  ;  [02DF]  1AB6  2AB6  
btrss 07Ch,4  ;  [02E0]  227C  1E7C  
return  ;  [02E1]  007C  0008  
call 03B3h  ;  [02E2]  13B3  23B3  
goto 02F4h  ;  [02E3]  1AF4  2AF4  
btrss 07Ch,5  ;  [02E4]  22FC  1EFC  
goto 0300h  ;  [02E5]  1B00  2B00  
call 039Dh  ;  [02E6]  139D  239D  
goto 0300h  ;  [02E7]  1B00  2B00  
btrss 07Ch,6  ;  [02E8]  237C  1F7C  
goto 0300h  ;  [02E9]  1B00  2B00  
call 0394h  ;  [02EA]  1394  2394  
goto 0300h  ;  [02EB]  1B00  2B00  
btrss 07Ch,7  ;  [02EC]  23FC  1FFC  
goto 0300h  ;  [02ED]  1B00  2B00  
call 038Bh  ;  [02EE]  138B  238B  
goto 0300h  ;  [02EF]  1B00  2B00  
btrss 07Dh,0  ;  [02F0]  207D  1C7D  
goto 0300h  ;  [02F1]  1B00  2B00  
call 0382h  ;  [02F2]  1382  2382  
goto 0300h  ;  [02F3]  1B00  2B00  
bcr 003h,5  ;  [02F4]  2E83  1283  
movr 035h,0  ;  [02F5]  0335  0835  
movar 004h  ;  [02F6]  0084  0084  
movia 004h  ;  [02F7]  3204  3004  
subar 004h,0  ;  [02F8]  0A04  0204  
btrsc 003h,0  ;  [02F9]  2403  1803  
goto 0300h  ;  [02FA]  1B00  2B00  
movia 003h  ;  [02FB]  3203  3003  
movar 00Ah  ;  [02FC]  008A  008A  
movia 0BDh  ;  [02FD]  32BD  30BD  
addar 004h,0  ;  [02FE]  0504  0704  
movar 002h  ;  [02FF]  0082  0082  
incr 035h,1  ;  [0300]  08B5  0AB5  
movia 004h  ;  [0301]  3204  3004  
subar 035h,0  ;  [0302]  0A35  0235  
btrsc 003h,0  ;  [0303]  2403  1803  
clrr 035h  ;  [0304]  01B5  01B5  
return  ;  [0305]  007C  0008  
bsr 003h,5  ;  [0306]  2A83  1683  
bcr 003h,6  ;  [0307]  2F03  1303  
bcr 012h,0  ;  [0308]  2C12  1012  
bsr 005h,0  ;  [0309]  2805  1405  
bsr 005h,6  ;  [030A]  2B05  1705  
bsr 005h,7  ;  [030B]  2B85  1785  
bsr 005h,5  ;  [030C]  2A85  1685  
call 036Ch  ;  [030D]  136C  236C  
call 035Fh  ;  [030E]  135F  235F  
call 0331h  ;  [030F]  1331  2331  
bsr 00Bh,7  ;  [0310]  2B8B  178B  
bcr 003h,5  ;  [0311]  2E83  1283  
clrr 044h  ;  [0312]  01C4  01C4  
incr 044h,1  ;  [0313]  08C4  0AC4  
clrr 045h  ;  [0314]  01C5  01C5  
clrr 046h  ;  [0315]  01C6  01C6  
clrr 047h  ;  [0316]  01C7  01C7  
call 02B6h  ;  [0317]  12B6  22B6  
movia 00Ah  ;  [0318]  320A  300A  
bsr 07Ch,0  ;  [0319]  287C  147C  
movar 044h  ;  [031A]  00C4  00C4  
clrr 045h  ;  [031B]  01C5  01C5  
clrr 046h  ;  [031C]  01C6  01C6  
clrr 047h  ;  [031D]  01C7  01C7  
goto 02B6h  ;  [031E]  1AB6  2AB6  
movia 01Fh  ;  [031F]  321F  301F  
andar 003h,1  ;  [0320]  0483  0583  
movia 05Fh  ;  [0321]  325F  305F  
movar 020h  ;  [0322]  00A0  00A0  
movia 07Fh  ;  [0323]  327F  307F  
movar 004h  ;  [0324]  0084  0084  
call 032Bh  ;  [0325]  132B  232B  
decr 004h,1  ;  [0326]  0684  0384  
decrsz 020h,1  ;  [0327]  07A0  0BA0  
goto 0325h  ;  [0328]  1B25  2B25  
call 032Bh  ;  [0329]  132B  232B  
return  ;  [032A]  007C  0008  
bsr 004h,7  ;  [032B]  2B84  1784  
clrr 000h  ;  [032C]  0180  0180  
bcr 004h,7  ;  [032D]  2F84  1384  
clrr 000h  ;  [032E]  0180  0180  
return  ;  [032F]  007C  0008  
return  ;  [0330]  007C  0008  
bcr 003h,5  ;  [0331]  2E83  1283  
bsr 003h,6  ;  [0332]  2B03  1703  
clrr 010h  ;  [0333]  0190  0190  
clrr 019h  ;  [0334]  0199  0199  
movia 017h  ;  [0335]  3217  3017  
movar 012h  ;  [0336]  0092  0092  
movia 0FCh  ;  [0337]  32FC  30FC  
movar 013h  ;  [0338]  0093  0093  
movia 005h  ;  [0339]  3205  3005  
movar 011h  ;  [033A]  0091  0091  
bsr 010h,7  ;  [033B]  2B90  1790  
bcr 003h,6  ;  [033C]  2F03  1303  
bcr 00Dh,1  ;  [033D]  2C8D  108D  
bsr 003h,5  ;  [033E]  2A83  1683  
bsr 00Dh,1  ;  [033F]  288D  148D  
bsr 00Bh,6  ;  [0340]  2B0B  170B  
return  ;  [0341]  007C  0008  
clrr 005h  ;  [0342]  0185  0185  
bsr 003h,5  ;  [0343]  2A83  1683  
clrr 005h  ;  [0344]  0185  0185  
clrr 015h  ;  [0345]  0195  0195  
movia 0FFh  ;  [0346]  32FF  30FF  
movar 012h  ;  [0347]  0092  0092  
movar 013h  ;  [0348]  0093  0093  
clrr 00Fh  ;  [0349]  018F  018F  
bcr 003h,5  ;  [034A]  2E83  1283  
clrr 007h  ;  [034B]  0187  0187  
bsr 003h,5  ;  [034C]  2A83  1683  
clrr 007h  ;  [034D]  0187  0187  
bcr 003h,5  ;  [034E]  2E83  1283  
movar 013h  ;  [034F]  0093  0093  
movar 012h  ;  [0350]  0092  0092  
return  ;  [0351]  007C  0008  
bsr 003h,5  ;  [0352]  2A83  1683  
clrr 001h  ;  [0353]  0181  0181  
clrr 00Bh  ;  [0354]  018B  018B  
bcr 00Eh,7  ;  [0355]  2F8E  138E  
clrr 00Ch  ;  [0356]  018C  018C  
bcr 003h,5  ;  [0357]  2E83  1283  
clrr 00Ch  ;  [0358]  018C  018C  
bsr 003h,5  ;  [0359]  2A83  1683  
clrr 00Dh  ;  [035A]  018D  018D  
bcr 003h,5  ;  [035B]  2E83  1283  
clrr 00Dh  ;  [035C]  018D  018D  
call 0342h  ;  [035D]  1342  2342  
goto 031Fh  ;  [035E]  1B1F  2B1F  
movia 037h  ;  [035F]  3237  3037  
movar 01Dh  ;  [0360]  009D  009D  
movia 0FFh  ;  [0361]  32FF  30FF  
movar 01Ch  ;  [0362]  009C  009C  
movia 020h  ;  [0363]  3220  3020  
movar 01Bh  ;  [0364]  009B  009B  
bcr 003h,5  ;  [0365]  2E83  1283  
bcr 00Ch,0  ;  [0366]  2C0C  100C  
bsr 003h,5  ;  [0367]  2A83  1683  
bsr 00Ch,0  ;  [0368]  280C  140C  
bsr 00Bh,6  ;  [0369]  2B0B  170B  
bsr 01Bh,0  ;  [036A]  281B  141B  
return  ;  [036B]  007C  0008  
bcr 003h,5  ;  [036C]  2E83  1283  
clrr 01Bh  ;  [036D]  019B  019B  
clrr 01Dh  ;  [036E]  019D  019D  
movia 00Ch  ;  [036F]  320C  300C  
iorar 01Bh,1  ;  [0370]  0F9B  049B  
bsr 01Bh,4  ;  [0371]  2A1B  161B  
clrr 01Fh  ;  [0372]  019F  019F  
bsr 01Bh,7  ;  [0373]  2B9B  179B  
bcr 00Ch,6  ;  [0374]  2F0C  130C  
bsr 003h,5  ;  [0375]  2A83  1683  
bsr 00Ch,6  ;  [0376]  2B0C  170C  
return  ;  [0377]  007C  0008  
movia 020h  ;  [0378]  3220  3020  
clrr 07Ch  ;  [0379]  01FC  01FC  
clrr 07Dh  ;  [037A]  01FD  01FD  
clrr 04Eh  ;  [037B]  01CE  01CE  
bcr 003h,7  ;  [037C]  2F83  1383  
movar 004h  ;  [037D]  0084  0084  
movia 03Dh  ;  [037E]  323D  303D  
call 03A6h  ;  [037F]  13A6  23A6  
clrr 003h  ;  [0380]  0183  0183  
goto 0239h  ;  [0381]  1A39  2A39  
bsr 003h,5  ;  [0382]  2A83  1683  
bcr 005h,0  ;  [0383]  2C05  1005  
bcr 003h,5  ;  [0384]  2E83  1283  
bcr 005h,0  ;  [0385]  2C05  1005  
bsr 003h,5  ;  [0386]  2A83  1683  
bcr 005h,2  ;  [0387]  2D05  1105  
bcr 003h,5  ;  [0388]  2E83  1283  
bsr 005h,2  ;  [0389]  2905  1505  
return  ;  [038A]  007C  0008  
bsr 003h,5  ;  [038B]  2A83  1683  
bcr 005h,2  ;  [038C]  2D05  1105  
bcr 003h,5  ;  [038D]  2E83  1283  
bcr 005h,2  ;  [038E]  2D05  1105  
bsr 003h,5  ;  [038F]  2A83  1683  
bcr 005h,0  ;  [0390]  2C05  1005  
bcr 003h,5  ;  [0391]  2E83  1283  
bsr 005h,0  ;  [0392]  2805  1405  
return  ;  [0393]  007C  0008  
bsr 003h,5  ;  [0394]  2A83  1683  
bcr 005h,0  ;  [0395]  2C05  1005  
bcr 003h,5  ;  [0396]  2E83  1283  
bsr 005h,0  ;  [0397]  2805  1405  
bsr 003h,5  ;  [0398]  2A83  1683  
bcr 005h,1  ;  [0399]  2C85  1085  
bcr 003h,5  ;  [039A]  2E83  1283  
bcr 005h,1  ;  [039B]  2C85  1085  
return  ;  [039C]  007C  0008  
bsr 003h,5  ;  [039D]  2A83  1683  
bcr 005h,0  ;  [039E]  2C05  1005  
bcr 003h,5  ;  [039F]  2E83  1283  
bcr 005h,0  ;  [03A0]  2C05  1005  
bsr 003h,5  ;  [03A1]  2A83  1683  
bcr 005h,1  ;  [03A2]  2C85  1085  
bcr 003h,5  ;  [03A3]  2E83  1283  
bsr 005h,1  ;  [03A4]  2885  1485  
return  ;  [03A5]  007C  0008  
clrwdt  ;  [03A6]  0002  0064  
clrr 000h  ;  [03A7]  0180  0180  
incr 004h,1  ;  [03A8]  0884  0A84  
xorar 004h,0  ;  [03A9]  0B04  0604  
btrsc 003h,2  ;  [03AA]  2503  1903  
retia 000h  ;  [03AB]  3C00  3400  
xorar 004h,0  ;  [03AC]  0B04  0604  
goto 03A7h  ;  [03AD]  1BA7  2BA7  
bsr 003h,5  ;  [03AE]  2A83  1683  
bcr 005h,6  ;  [03AF]  2F05  1305  
bcr 003h,5  ;  [03B0]  2E83  1283  
bcr 005h,6  ;  [03B1]  2F05  1305  
return  ;  [03B2]  007C  0008  
movia 007h  ;  [03B3]  3207  3007  
bsr 003h,5  ;  [03B4]  2A83  1683  
iorar 012h,1  ;  [03B5]  0F92  0492  
iorar 005h,1  ;  [03B6]  0F85  0485  
return  ;  [03B7]  007C  0008  
bsr 003h,5  ;  [03B8]  2A83  1683  
bsr 012h,6  ;  [03B9]  2B12  1712  
bsr 013h,6  ;  [03BA]  2B13  1713  
bsr 005h,6  ;  [03BB]  2B05  1705  
return  ;  [03BC]  007C  0008  
goto 02E4h  ;  [03BD]  1AE4  2AE4  
goto 02E8h  ;  [03BE]  1AE8  2AE8  
goto 02ECh  ;  [03BF]  1AEC  2AEC  
goto 02F0h  ;  [03C0]  1AF0  2AF0  
nop  ;  [03C1]  0000  0000  
nop  ;  [03C2]  0000  0000  
nop  ;  [03C3]  0000  0000  
nop  ;  [03C4]  0000  0000  
nop  ;  [03C5]  0000  0000  
nop  ;  [03C6]  0000  0000  
nop  ;  [03C7]  0000  0000  
nop  ;  [03C8]  0000  0000  
nop  ;  [03C9]  0000  0000  
nop  ;  [03CA]  0000  0000  
nop  ;  [03CB]  0000  0000  
nop  ;  [03CC]  0000  0000  
nop  ;  [03CD]  0000  0000  
nop  ;  [03CE]  0000  0000  
nop  ;  [03CF]  0000  0000  
nop  ;  [03D0]  0000  0000  
nop  ;  [03D1]  0000  0000  
nop  ;  [03D2]  0000  0000  
nop  ;  [03D3]  0000  0000  
nop  ;  [03D4]  0000  0000  
nop  ;  [03D5]  0000  0000  
nop  ;  [03D6]  0000  0000  
nop  ;  [03D7]  0000  0000  
nop  ;  [03D8]  0000  0000  
nop  ;  [03D9]  0000  0000  
nop  ;  [03DA]  0000  0000  
nop  ;  [03DB]  0000  0000  
nop  ;  [03DC]  0000  0000  
nop  ;  [03DD]  0000  0000  
nop  ;  [03DE]  0000  0000  
nop  ;  [03DF]  0000  0000  
nop  ;  [03E0]  0000  0000  
nop  ;  [03E1]  0000  0000  
nop  ;  [03E2]  0000  0000  
nop  ;  [03E3]  0000  0000  
nop  ;  [03E4]  0000  0000  
nop  ;  [03E5]  0000  0000  
nop  ;  [03E6]  0000  0000  
nop  ;  [03E7]  0000  0000  
nop  ;  [03E8]  0000  0000  
nop  ;  [03E9]  0000  0000  
nop  ;  [03EA]  0000  0000  
nop  ;  [03EB]  0000  0000  
nop  ;  [03EC]  0000  0000  
nop  ;  [03ED]  0000  0000  
nop  ;  [03EE]  0000  0000  
nop  ;  [03EF]  0000  0000  
nop  ;  [03F0]  0000  0000  
nop  ;  [03F1]  0000  0000  
nop  ;  [03F2]  0000  0000  
nop  ;  [03F3]  0000  0000  
nop  ;  [03F4]  0000  0000  
nop  ;  [03F5]  0000  0000  
nop  ;  [03F6]  0000  0000  
nop  ;  [03F7]  0000  0000  
nop  ;  [03F8]  0000  0000  
nop  ;  [03F9]  0000  0000  
nop  ;  [03FA]  0000  0000  
nop  ;  [03FB]  0000  0000  
nop  ;  [03FC]  0000  0000  
nop  ;  [03FD]  0000  0000  
nop  ;  [03FE]  0000  0000  
nop  ;  [03FF]  0000  0000  
nop  ;  [0400]  0000  0000  
nop  ;  [0401]  0000  0000  
nop  ;  [0402]  0000  0000  
nop  ;  [0403]  0000  0000  
nop  ;  [0404]  0000  0000  
nop  ;  [0405]  0000  0000  
nop  ;  [0406]  0000  0000  
nop  ;  [0407]  0000  0000  
nop  ;  [0408]  0000  0000  
nop  ;  [0409]  0000  0000  
nop  ;  [040A]  0000  0000  
nop  ;  [040B]  0000  0000  
nop  ;  [040C]  0000  0000  
nop  ;  [040D]  0000  0000  
nop  ;  [040E]  0000  0000  
nop  ;  [040F]  0000  0000  
nop  ;  [0410]  0000  0000  
nop  ;  [0411]  0000  0000  
nop  ;  [0412]  0000  0000  
nop  ;  [0413]  0000  0000  
nop  ;  [0414]  0000  0000  
nop  ;  [0415]  0000  0000  
nop  ;  [0416]  0000  0000  
nop  ;  [0417]  0000  0000  
nop  ;  [0418]  0000  0000  
nop  ;  [0419]  0000  0000  
nop  ;  [041A]  0000  0000  
nop  ;  [041B]  0000  0000  
nop  ;  [041C]  0000  0000  
nop  ;  [041D]  0000  0000  
nop  ;  [041E]  0000  0000  
nop  ;  [041F]  0000  0000  
nop  ;  [0420]  0000  0000  
nop  ;  [0421]  0000  0000  
nop  ;  [0422]  0000  0000  
nop  ;  [0423]  0000  0000  
nop  ;  [0424]  0000  0000  
nop  ;  [0425]  0000  0000  
nop  ;  [0426]  0000  0000  
nop  ;  [0427]  0000  0000  
nop  ;  [0428]  0000  0000  
nop  ;  [0429]  0000  0000  
nop  ;  [042A]  0000  0000  
nop  ;  [042B]  0000  0000  
nop  ;  [042C]  0000  0000  
nop  ;  [042D]  0000  0000  
nop  ;  [042E]  0000  0000  
nop  ;  [042F]  0000  0000  
nop  ;  [0430]  0000  0000  
nop  ;  [0431]  0000  0000  
nop  ;  [0432]  0000  0000  
nop  ;  [0433]  0000  0000  
nop  ;  [0434]  0000  0000  
nop  ;  [0435]  0000  0000  
nop  ;  [0436]  0000  0000  
nop  ;  [0437]  0000  0000  
nop  ;  [0438]  0000  0000  
nop  ;  [0439]  0000  0000  
nop  ;  [043A]  0000  0000  
nop  ;  [043B]  0000  0000  
nop  ;  [043C]  0000  0000  
nop  ;  [043D]  0000  0000  
nop  ;  [043E]  0000  0000  
nop  ;  [043F]  0000  0000  
nop  ;  [0440]  0000  0000  
nop  ;  [0441]  0000  0000  
nop  ;  [0442]  0000  0000  
nop  ;  [0443]  0000  0000  
nop  ;  [0444]  0000  0000  
nop  ;  [0445]  0000  0000  
nop  ;  [0446]  0000  0000  
nop  ;  [0447]  0000  0000  
nop  ;  [0448]  0000  0000  
nop  ;  [0449]  0000  0000  
nop  ;  [044A]  0000  0000  
nop  ;  [044B]  0000  0000  
nop  ;  [044C]  0000  0000  
nop  ;  [044D]  0000  0000  
nop  ;  [044E]  0000  0000  
nop  ;  [044F]  0000  0000  
nop  ;  [0450]  0000  0000  
nop  ;  [0451]  0000  0000  
nop  ;  [0452]  0000  0000  
nop  ;  [0453]  0000  0000  
nop  ;  [0454]  0000  0000  
nop  ;  [0455]  0000  0000  
nop  ;  [0456]  0000  0000  
nop  ;  [0457]  0000  0000  
nop  ;  [0458]  0000  0000  
nop  ;  [0459]  0000  0000  
nop  ;  [045A]  0000  0000  
nop  ;  [045B]  0000  0000  
nop  ;  [045C]  0000  0000  
nop  ;  [045D]  0000  0000  
nop  ;  [045E]  0000  0000  
nop  ;  [045F]  0000  0000  
nop  ;  [0460]  0000  0000  
nop  ;  [0461]  0000  0000  
nop  ;  [0462]  0000  0000  
nop  ;  [0463]  0000  0000  
nop  ;  [0464]  0000  0000  
nop  ;  [0465]  0000  0000  
nop  ;  [0466]  0000  0000  
nop  ;  [0467]  0000  0000  
nop  ;  [0468]  0000  0000  
nop  ;  [0469]  0000  0000  
nop  ;  [046A]  0000  0000  
nop  ;  [046B]  0000  0000  
nop  ;  [046C]  0000  0000  
nop  ;  [046D]  0000  0000  
nop  ;  [046E]  0000  0000  
nop  ;  [046F]  0000  0000  
nop  ;  [0470]  0000  0000  
nop  ;  [0471]  0000  0000  
nop  ;  [0472]  0000  0000  
nop  ;  [0473]  0000  0000  
nop  ;  [0474]  0000  0000  
nop  ;  [0475]  0000  0000  
nop  ;  [0476]  0000  0000  
nop  ;  [0477]  0000  0000  
nop  ;  [0478]  0000  0000  
nop  ;  [0479]  0000  0000  
nop  ;  [047A]  0000  0000  
nop  ;  [047B]  0000  0000  
nop  ;  [047C]  0000  0000  
nop  ;  [047D]  0000  0000  
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
