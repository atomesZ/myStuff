-- FIXME-begin
function powerize(n)
    exp = 1
    fun_res = function()
        res = exp
        exp = exp * n
        return res
    end
    return fun_res
end
-- FIXME-end

c1 = powerize(1)
print(c1(), c1(), c1(), c1(), c1())
c2 = powerize(2)
print(c2(), c2(), c2(), c2(), c2())
c3 = powerize(3)
print(c3(), c3(), c3(), c3(), c3())
