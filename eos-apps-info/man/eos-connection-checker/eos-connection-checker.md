# eos-connection-checker

Checks the availability of the internet connection.<br>
Program returns a number
- 0 (zero) if a connection is available
- non-zero if connection is not available

## Synopsis
```
	eos-connection-checker
```
## Examples

```
    eos-connection-checker && echo internet connection is available
    eos-connection-checker || echo internet connection is not available
```
