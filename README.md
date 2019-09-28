RAFT-PERSIST-FILES package
==========================

The package implements the [`raft-persist` interface][rp-api] using files in the filesystem.

[rp-api]: https://github.com/nklein/raft/blob/develop/src/persist/interface

To create an instance, use the following function:

    (defun make-persist-files (directory-pathname) ...)

This will use the given `directory-pathname` as the base for the persistent store.
Note: it is not safe to have two Raft servers using the same directory.
The filenames created are not unique.
