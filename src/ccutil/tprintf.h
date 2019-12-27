/**********************************************************************
 * File:        tprintf.h
 * Description: Trace version of printf - portable between UX and NT
 * Author:      Phil Cheatle
 * Created:     Wed Jun 28 15:01:15 BST 1995
 *
 * (C) Copyright 1995, Hewlett-Packard Ltd.
 ** Licensed under the Apache License, Version 2.0 (the "License");
 ** you may not use this file except in compliance with the License.
 ** You may obtain a copy of the License at
 ** http://www.apache.org/licenses/LICENSE-2.0
 ** Unless required by applicable law or agreed to in writing, software
 ** distributed under the License is distributed on an "AS IS" BASIS,
 ** WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 ** See the License for the specific language governing permissions and
 ** limitations under the License.
 *
 **********************************************************************/

#ifndef TESSERACT_CCUTIL_TPRINTF_H
#define TESSERACT_CCUTIL_TPRINTF_H
#include <string>
#include <tesseract/platform.h>   // for TESS_API

// Main logging function.
extern TESS_API void tprintf(  // Trace printf
    const char *format, ...);  // Message

void dbgprintf(const char *format, ...);
#define __FILENAME__ (strrchr(__FILE__, '/') ? strrchr(__FILE__, '/') + 1 : __FILE__)

#define DbgMsg(msg , args...) dbgprintf( "[%s:%d]  %s() :: " msg "\n" ,  __FILENAME__, __LINE__,      __func__ ,   ##args)

// int LogPrintStr(const std::string &str);

// #define LogPrintf(msg , args...) LogPrintStr(tfm::format( "[%s:%d]  %s() :: " msg ,  __FILENAME__,__LINE__,__func__ , ##args))
// #define DbgMsg(msg , args...) LogPrintStr(tfm::format( "[%s:%d]  %s() :: " msg "\n" ,  __FILENAME__,__LINE__,__func__ , ##args))

#endif  // define TESSERACT_CCUTIL_TPRINTF_H
