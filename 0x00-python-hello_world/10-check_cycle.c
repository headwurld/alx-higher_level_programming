#include "lists.h"

/**
 * check_cycle - checks if a singly linked list has a cycle in it
 * @list: linked list
 * Return: 1 if there is a cycle , 0 if not
 */

int check_cycle(listint_t *list)
{
	listint_t *fast, *slow = list;

	if (list == NULL)
		return (0);

	fast = list->next;
	while (slow != NULL && fast != NULL && fast->next != NULL)
	{
		if (slow == fast)
			return (1);
		fast = fast->next->next;
		slow = slow->next;
	}
	return (0);
}
