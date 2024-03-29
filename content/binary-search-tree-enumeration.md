---
date: April 22, 2021
---

# BST - Enumeration

How to enumerate (list through) elements in a #[[bst]].

You can enumerate a binary search tree in basically 3 ways. They all orient
around the order of recursive descent and value retrieval.

To find all the values in a tree of such nodes, you could mix the order of
retrieving the values of:

- `.Value`,
- `.Left`, *and*
- `.Right`

## Sample tree

Will be referenced in the following ordering examples.

```mermaid
graph TD
    D==>B
    D==>F
    B==>A
    B==>C
    F==>E
    F==>G
```

## "Pre"-ordering

Ordering for enumeration goes: `.Value` -> `.Left` -> `.Right`

```text
1 root --------------- .Value => 'D'
    |
2   +- .Left --------- .Value => 'B'
    |     |
3   |     +- .Left --- .Value => 'A'
    |     |
4   |     \- .Right -- .Value => 'C'
    |
5   \- .Right -------- .Value => 'F'
          |
6         +- .Left --- .Value => 'E'
          |
7         \- .Right -- .Value => 'G'
```

Useful when copying the tree. If we add each of the enumerated values to a newly
created tree then we will get an exact copy of the tree, with every node in the
exact same place as it was before.

## "In"-ordering

Ordering for enumeration goes: `.Left` -> `.Value` -> `.Right`

```text
1         /- .Left -- .Value => 'A'
          |
2   /- .Left -------- .Value => 'B'
    |     |
3   |     \- .Right - .Value => 'C'
    |
4 root -------------- .Value => 'D'
    |
5   |     /- .Left -- .Value => 'E'
    |     |
6   \- .Right ------- .Value => 'F'
          |
7         \- .Right - .Value => 'G'
```

Useful when you need to enumerate the tree in order. Quite the fitting name.
This is usually the default enumeration order.

## "Post"-ordering

Ordering for enumeration goes: `.Left` -> `.Right` -> `.Value`

```text
1         /- .Left --- .Value => 'A'
          |
2         +- .Right -- .Value => 'C'
          |
3   /- .Left --------- .Value => 'B'
    |
4   |     /- .Left --- .Value => 'E'
    |     |
5   |     +- .Right -- .Value => 'G'
    |     |
6   +- .Right -------- .Value => 'F'
    |
7 root --------------- .Value => 'D'
```

Useful when deleting/clearing up a tree or a branch. Deleting in this order
will ensure you are always deleting leaf nodes, and will therefore save some
performance on not needing to move nodes around during deletion.

## Reference

- Robert Horvick (2020, June 16). *Algorithms and Data Structures - Part 1*
  [Course]. Pluralsight. <https://www.pluralsight.com/courses/algorithms-data-structures-part-one>
