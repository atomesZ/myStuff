// FIXME-begin
var mycurry = (fn, ...args) =>
  (fn.length <= args.length) ?
    fn(...args) :
    (...more) => mycurry(fn, ...args, ...more);

function build_sentence(name, buddy, action)
{
  return name + " (buddy of " + buddy + ")" + action
}

// FIXME-end

const curried = mycurry(build_sentence);
console.log(curried("Tigrou")("Spider")(" was here!"))
console.log(curried("Spider")("Tigrou")(" was also here!"))
console.log(curried("Tigrou", "Spider", " are in a boat... "))
console.log(curried(1)(2, 3))
