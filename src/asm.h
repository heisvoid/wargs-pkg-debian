/* vim: set sw=2 ts=2 expandtab: */

#ifndef ASM_H
#define ASM_H

#ifndef _WIN32
#define GLOBAL(symbol) .global symbol; symbol##:
#define EXTERN(symbol) symbol
#else /* _WIN32 */
#define GLOBAL(symbol) .global _##symbol; _##symbol##: .global symbol; symbol##:
#define EXTERN(symbol) _##symbol
#endif /* _WIN32 */

#endif
