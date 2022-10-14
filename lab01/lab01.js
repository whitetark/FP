//Main
function Singleton(a)
{
    let list=[a];
    return list;
}

function Null(list)
{
    if(list.length===0)
    { 
        return true; 
    } 
    else 
    {
        return false;
    }
}

function Snoc(list, item)
{
    list.push(item);
    return list;
}

function Length(list)
{
    let i=0;
    for(let item of list)
    {
        i++;
    }
    return i;
}

//Output
console.log(Singleton("Surrender"));
console.log(Null([]));
console.log(Snoc(["You", "Got"], "Me"));
console.log(Length(["Carry", "On", "Wayward", "Son"]))