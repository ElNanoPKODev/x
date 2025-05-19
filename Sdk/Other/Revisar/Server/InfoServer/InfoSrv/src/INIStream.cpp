
#include "inistream.h"
#include <string.h>


INIStream::INIStream(void)
{
    memset(m_FilePath, 0, MAX_PATH);
}


INIStream::INIStream(const char* _filepath)
{
    SetPath(_filepath);
}


INIStream::~INIStream(void)
{
}

void INIStream::SetPath(const char* _filepath)
{
    assert(NULL != _filepath);
    memset(m_FilePath, 0, MAX_PATH);
    strncpy(m_FilePath, _filepath, MAX_PATH);
}


unsigned int INIStream::ReadInt(const char* _appname, const char* _keyname, int _default)
{
    assert(NULL != _appname);
    assert(NULL != _keyname);
    return GetPrivateProfileInt(_appname, _keyname, _default, m_FilePath);
}


unsigned long INIStream::ReadString(char* _returnstring, int _len, const char* _appname, const char* _keyname, const char* _default)
{
    assert(NULL != _returnstring);
    assert(NULL != _appname);
    assert(NULL != _keyname);
    return GetPrivateProfileString(_appname, _keyname, _default, _returnstring, _len, m_FilePath);
}


unsigned long INIStream::ReadSection(char* _returnstring, int _len, const char* _appname)
{
    assert(NULL != _returnstring);
    assert(NULL != _appname);
    return GetPrivateProfileSection(_appname, _returnstring, _len, m_FilePath);
}


unsigned long INIStream::ReadSectionName(char* _returnstring, int _len)
{
    assert(NULL != _returnstring);
    return GetPrivateProfileSectionNames(_returnstring, _len, m_FilePath);
}


bool INIStream::WriteInt(const char* _appname, const char* _keyname, int _value)
{
    assert(NULL != _appname);
    assert(NULL != _keyname);
    char __buf[32] = {0};
    return WriteString(_appname, _keyname, itoa(_value, __buf, 10/*Ê®½øÖÆ*/));
}


bool INIStream::WriteString(const char* _appname, const char* _keyname, const char* _value)
{
    assert(NULL != _appname);
    assert(NULL != _keyname);
    return TRUE == WritePrivateProfileString(_appname, _keyname, _value, m_FilePath);
}


bool INIStream::WriteSection(const char* _appname, const char* _value)
{
    assert(NULL != _appname);
    assert(NULL != _value);
    return TRUE == WritePrivateProfileSection(_appname, _value, m_FilePath);
}


bool INIStream::DeleteSection(const char* _appname)
{
    assert(NULL != _appname);
    return WriteSection(_appname, NULL);
}


bool INIStream::DeleteKey(const char* _appname, const char* _keyname)
{
    assert(NULL != _appname);
    assert(NULL != _keyname);
    return WriteString(_appname, _keyname, NULL);
}

