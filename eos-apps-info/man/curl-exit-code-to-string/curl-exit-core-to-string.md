# curl-exit-code-to-string

A toubleshooting helper: this app returns a string describing the given exit code of `curl`.

The list of strings referred to by the `curl` exit code is updated regularly (currently at least weekly).

## Examples
```
$ curl-exit-code-to-string 6
Could not resolve host. The given remote host could not be resolved.
```
