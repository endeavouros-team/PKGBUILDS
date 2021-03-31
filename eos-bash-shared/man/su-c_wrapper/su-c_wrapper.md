# su-c_wrapper

A small utility to perform command "su -c" with slightly easier syntax.<br>
Useful e.g. for users without sudoers rights.

## Synopsis

```
su-c_wrapper <command-and-parameters>
```

## Tips

Make a short alias, for example:
```
alias root=su-c_wrapper
```

## Example
```
su-c_wrapper ls -la
```
