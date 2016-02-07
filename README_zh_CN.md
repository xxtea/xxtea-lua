# XXTEA 加密算法的 Lua 实现

## 简介

XXTEA 是一个快速安全的加密算法。本项目是 XXTEA 加密算法的 Lua 实现。

它不同于原始的 XXTEA 加密算法。它是针对原始二进制数据类型进行加密的，而不是针对 32 位 int 数组。同样，密钥也是原始二进制数据类型。

## 安装

```sh
luarocks install xxtea
```

## 使用

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
