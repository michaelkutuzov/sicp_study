function fRec(n: number): number {
    return n > 3 ? fRec(n - 1) + fRec(n - 2) + fRec(n - 3) : n;
}

function f(n: number): number {
    const f_iter = (
        p: number,
        p_1: number,
        p_2: number,
        counter = 0,
    ): number => {
        counter++;
        const result = p + p_1 + p_2;

        return counter === n - 2 ? result : f_iter(p_1, p_2, result, counter);
    };

    return n > 3 ? f_iter(0, 1, 2, 0) : n;
}

const a = fRec(20);
const b = f(20);
console.log(a);
console.log(b);
