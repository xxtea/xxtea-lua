# XXTEA for Lua

<a href="https://github.com/xxtea/">
    <img src="https://avatars1.githubusercontent.com/u/6683159?v=3&s=86" alt="XXTEA logo" title="XXTEA" align="right" />
</a>

## Introduction

XXTEA is a fast and secure encryption algorithm. This is a XXTEA library for Lua.

It is different from the original XXTEA encryption algorithm. It encrypts and decrypts raw binary data instead of 32bit integer array, and the key is also the raw binary data.

## Installation

```sh
luarocks install xxtea
```

## Usage

```lua
local xxtea = require("xxtea");

local text = "Hello World! 你好，中国！";
local key = "1234567890";
local encrypt_data = xxtea.encrypt(text, key);
local decrypt_data = xxtea.decrypt(encrypt_data, key);
if text == decrypt_data then
    print("success!\n");
else
    print("fail!\n");
end
```
