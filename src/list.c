/* vim: set sw=2 ts=2 expandtab: */

#include "list.h"

#include "assert.h"

static bool
is_head (struct list_elem *elem)
{
  return NULL != elem && NULL == elem->prev && NULL != elem->next;
}

static bool
is_tail (struct list_elem *elem)
{
  return NULL != elem && NULL != elem->prev && NULL == elem->next;
}

static bool
is_interior (struct list_elem *elem)
{
  return NULL != elem && NULL != elem->prev && NULL != elem->next;
}

void
list_init (struct list *list)
{
  ASSERT (NULL != list);

  list->head.prev = NULL;
  list->head.next = &list->tail;
  list->tail.prev = &list->head;
  list->tail.next = NULL;
}

struct list_elem *
list_begin (struct list *list)
{
  ASSERT (NULL != list);

  return list->head.next;
}

struct list_elem *
list_next (struct list_elem *elem)
{
  ASSERT (is_head (elem) == true || is_interior (elem) == true);
  
  return elem->next;
}

struct list_elem *
list_end (struct list *list)
{
  ASSERT (NULL != list);

  return &list->tail;
}

void
list_insert (struct list_elem *before, struct list_elem *elem)
{
  ASSERT (is_interior (before) == true || is_tail (before) == true);
  ASSERT (NULL != elem);

  elem->prev = before->prev;
  elem->next = before;
  before->prev->next = elem;
  before->prev = elem;
}

void
list_push_back (struct list *list, struct list_elem *elem)
{
  list_insert (list_end (list), elem);
}

struct list_elem *
list_remove (struct list_elem *elem)
{
  ASSERT (is_interior (elem) == true);

  elem->prev->next = elem->next;
  elem->next->prev = elem->prev;

  return elem->next;
}

struct list_elem *
list_pop_front (struct list *list)
{
  struct list_elem *front = list_front (list);

  list_remove (front); 

  return front;
}

struct list_elem *
list_front (struct list *list)
{
  ASSERT (list_empty (list) == false);

  return list->head.next;
}

size_t
list_len (struct list *list)
{
  size_t count = 0;

  struct list_elem *e = NULL;
  for (e = list_begin (list); list_end (list) != e; e = list_next (e))
    {
      count++;
    }

  return count;
}

bool
list_empty (struct list *list)
{
  return list_begin (list) == list_end (list);
}

