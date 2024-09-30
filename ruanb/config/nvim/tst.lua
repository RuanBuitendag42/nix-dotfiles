-- Test Lua file with issues for lua_ls
sd
-- Unused variable
local unused_var = "This variable is not used"

-- Global variable without declaration (bad practice)
global_variable = 10
vim.test()
-- Syntax error: Missing closing parenthesis
local function broken_function(a, b
    return a + b
end

-- Undefined global function call
undefined_function_call()

-- Incorrect type usage: trying to index a number
local num = 42
print(num["not_allowed"])

-- Redefined function with mismatching parameters
local function redefined_function(a, b)
    return a + b
end

local function redefined_function(a)
    return a * 2
end

-- Function missing return statement
local function no_return_function(a, b)
    a = a + 1
    b = b - 1
    -- Forgot to return values
end

-- Typo in standard library function (should be `pairs`)
for k, v in paires({1, 2, 3}) do
    print(k, v)
end

-- Extra trailing characters in a line
local extra_trail = "Trailing characters here..." .....

