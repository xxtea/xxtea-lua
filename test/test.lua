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
