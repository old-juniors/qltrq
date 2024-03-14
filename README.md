<a href="https://github.com/azimjohn/jprq">
  <p align="center">
    <img height="140" src="./website/static/banner-dark.png#gh-light-mode-only">
    <img height="140" src="./website/static/banner-light.png#gh-dark-mode-only">
  </p>
</a>

## What's JPRQ ?

- [JPRQ](https://github.com/azimjohn/jprq) is a free and open tool for exposing local servers to public network (the internet)
- It can expose TCP protocols, such as HTTP, SSH, etc. Any server!

## What's QLTRQ ?

- **QLTRQ** - has no meaning, just to avoid conflict with the [jprq](#whats-jprq).
- A self-hosted version of jprq for developers of this [community](https://github.com/old-juniors/).

---

## How to install ?

- [Windows](./install/readme.md#windows)
- [MacOs and Linux](./install/readme.md#macos-and-linux)

## How to use ?

First obtain auth token from [qltrq.old-juniors.uz/auth](https://qltrq.old-juniors.uz/auth), then

```bash
qltrq auth <your-auth-token>
```

Replace 8000 with the port you want to expose

```bash
qltrq http 8000
```

For exposing any TCP servers, such as SSH

```bash
qltrq tcp 22
```

qltrq using custom subdomains

```bash
qltrq http 3000 -s <custom-name>
```

For using qltrq debugger (with v2.1 or higher)

```bash
qltrq http 3000 --debug
```

Serve static files using built-in HTTP Server (with v2.2 or higher)

```bash
qltrq serve .
```

Serve on a different domain using CNAME (with v2.3 or higher)

```bash
qltrq http 3000 --cname example.com
```

Press Ctrl+C to stop it

---

** `qltrq` is members-only service **

What does that mean?

- To use the service, join to our community on [telegram](https://t.me/+rgoKcEj4FhplZmY6).
