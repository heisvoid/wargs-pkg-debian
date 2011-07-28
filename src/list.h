/* vim: set sw=2 ts=2 expandtab: */

#ifndef LIST_H
#define LIST_H

/* Doubly linked list
 *
 * This implementation is inspired by Pintos project.
 */

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#define list_entry(LIST_ELEM, STRUCT, MEMBER)           \
        ((STRUCT *) ((int8_t *) &(LIST_ELEM)->next      \
                     - offsetof (STRUCT, MEMBER.next)))

struct list_elem
{
  struct list_elem *prev;
  struct list_elem *next;
};

struct list
{
  struct list_elem head;
  struct list_elem tail;
};

extern void list_init (struct list *list);

/* traversal */
extern struct list_elem *list_begin (struct list *list);
extern struct list_elem *list_next (struct list_elem *elem);
extern struct list_elem *list_end (struct list *list);

/* insertion */
extern void list_insert (struct list_elem *before, struct list_elem *elem);
extern void list_push_back (struct list *list, struct list_elem *elem);

/* removal */
extern struct list_elem *list_remove (struct list_elem *elem);
extern struct list_elem *list_pop_front (struct list *list);

/* elements */
extern struct list_elem *list_front (struct list *list);

/* properties */
extern size_t list_len (struct list *list);
extern bool list_empty (struct list *list);

#endif /* not LIST_H */

