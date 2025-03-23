# xargs0 and find0

shell "alias" for find ... -print0 **AND** shell "alias" for find ... -print0


# To install

```sh
sudo make install
```


# To use

```sh
find ... -print0 | xargs0 command ...
```

```sh
find0 ... | xargs0 command ...
```


# Examples

```sh
find0 . -type f -name '*.md' | xargs0 ls -ld
```

```sh
find /usr/local/src/bin -type f -name '*.[ch]' -print0 | xargs0 wc -l
```


# Reporting Security Issues

To report a security issue, please visit "[Reporting Security Issues](https://github.com/lcn2/xargs0/security/policy)".
