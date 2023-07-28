---
date: July 28, 2023
---

# Nushell

Terminal shell, like `bash` or `zsh`

## Pros :+1:

- Do math anytime. The `<` & `>` do mean "less than" and "greater than", instead of "read from file" and "write to file"
- Type safety
- Rich type system [(even has records)](https://www.nushell.sh/book/types_of_data.html#types-at-a-glance)
- The way you specify completions for third-party commands looks awesome: <https://www.nushell.sh/book/externs.html>

  Like sourcing this just works (no need for special completion registration):

  ```python
  def kubectl-contexts [] {
  	open ~/.kube/config | from yaml | get contexts.name
  }

  def kubectl-resources [] {
  	kubectl api-resources -o name | lines
  }
  
  def kubectl-namespaces [] {
  	kubectl get ns -o name | lines | split column '/' | get column2
  }
  
  def kubectl-outputs [] {
  	"json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file|custom-columns|custom-columns-file|wide" \
        | split row '|'
  }
  
  export extern "kubectl get" [
  	resource: string@kubectl-resources          # name of Kubernetes resource
  	--namespace(-n): string@kubectl-namespaces  # show resources from specific Kubernetes namespace
  	--all-namespaces(-A)                        # show resources all Kubernetes namespaces
  	--context: string                           # context from your ~/.kube/config
  	--output(-o): string@kubectl-outputs        # output format
  ]
  ```

  It even validates it for me:

  ```console
  $ kubectl get -o wide
  Error: nu::parser::missing_positional
  
    × Missing required positional argument.
     ╭─[entry #86:1:1]
   1 │ kubectl get -o wide
     ·            ▲
     ·            ╰── missing resource
     ╰────
    help: Usage: kubectl get {flags} <resource>
  ```

## Cons :-1:

- Quite verbose. E.g:
  - `ls */` vs `ls | where type == dir`
  - `cat file` vs `open --raw file`
  - `echo foo >> file` vs `"foo" | save --raw --append file`
- No dir aliasing (like if I in zsh run `hash -d c=~/code`, then I can do `~c/foo` to go to `~/code/foo`)
- Can't parse table output.
- Can't really deal with streaming data, such as `kubectl get pods -w | lines`
- Can't `Ctrl+Z` an application, but instead must install third party tool `pueued` for this?
- Too unknown. Completion support for random CLI apps:
  - `bash`: super common
  - `zsh`: quite common (zsh can load bash completions anyway)
  - `fish`: uncommon
  - `powershell`: uncommon
  - `nushell`: non-existent
- Completions dont work for aliases (for now: <https://github.com/nushell/nushell/issues/8483>)
