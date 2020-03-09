// FIXME-begin
function sumofall(...input)
{
    let res = 0;
    for (let i of input)
    {
        res += i;
    }
    
    return res;
}
// FIXME-end


console.log(sumofall());
console.log(sumofall(1));
console.log(sumofall(1, 2));
console.log(sumofall(p1=9));
console.log(sumofall(p2=8));
console.log(sumofall(p2=8, p1=14));
console.log(sumofall(1, 2, 3));
