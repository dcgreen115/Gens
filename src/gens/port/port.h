#ifndef __PORT_H__
#define __PORT_H__

typedef unsigned char BYTE;
typedef unsigned short WORD;
typedef unsigned long DWORD;
typedef void VOID;

typedef struct _POINT {
	int x;
	int y;
} POINT;
#define FAR
#define SEPERATOR '/'
#define default_path "./"
#define CHAR_SEP "/"
#define stricmp strcasecmp
#define strnicmp strncasecmp

enum { MB_OK, MB_ICONEXCLAMATION };
void SetCurrentDirectory(const char *directory);
int GetCurrentDirectory(int size,char* buf);
void MessageBox(const char *text, const char *error, int type);
unsigned long GetTickCount();
int GetPrivateProfileInt(const char *section, const char *var, int def, const char *filename);
void GetPrivateProfileString(const char *section, const char *var, const char *def, char *get, int length, const char *filename);
void WritePrivateProfileString(const char *section, const char *var, const char *var_name, const char *filename);

#endif
