# Docker for data science

Pip example:

```bash
$ docker build -t data-science-pip .
$ docker run -t --rm -v $PWD:/src -w /src data-science-pip bash
```