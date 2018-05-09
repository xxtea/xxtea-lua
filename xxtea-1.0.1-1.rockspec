package = "xxtea"
version = "1.0.1-1"
source = {
    url = "git://github.com/xxtea/xxtea-lua.git",
    tag = "v1.0.1"
}
description = {
   summary = 'XXTEA for Lua.',
   detailed = [[
        XXTEA is a fast and secure encryption algorithm. This is a XXTEA library for Lua.

        It is different from the original XXTEA encryption algorithm. It encrypts and decrypts raw binary data instead of 32bit integer array, and the key is also the raw binary data.
    ]],
   homepage = "https://github.com/xxtea/xxtea-lua",
   license = "MIT"
}
dependencies = { "lua >= 5.1" }
build = {
    type = "builtin",
    modules = {
        xxtea = {
            "src/xxtea.c",
            "src/lua_xxtea.c"
        }
    }
}
