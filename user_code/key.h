#ifndef __KEY_H__
#define __KEY_H__

enum
{
    KEY_ID_NONE = 0x00,
    KEY_ID_VALID,
};

#define KEY_SCAN_PIN PA0

void key_scan(void);

#endif

