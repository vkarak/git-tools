# git-tools
A collection of useful utilities for working with Git repositories

## gitsync
This is a small utility to sync two remotes. It's useful for keeping your forks in sync:

```
gitsync upstream myfork
```

## git-cleanup
This is a small utility for cleaning up your local and/or remote repositories. By clean up, I mean removing any branches merged to the master. This utility has two modes:

- Local mode: deletes your branches that are merged to the local master (you may need to call `gitsync` before or pull the latest master manually)

  ```
  git-cleanup local
  ```
  
- Remote mode: prunes the local references and removes remote merged branches

   ```
   git-cleanup remote myfork
   ```
