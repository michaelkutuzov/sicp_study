function pascalTriangle(row: number, coeffNum: number): number {
    if (coeffNum > row || coeffNum < 1) {
        return -1;
    }

    return coeffNum === row || coeffNum === 1
        ? 1
        : pascalTriangle(row - 1, coeffNum) +
              pascalTriangle(row - 1, coeffNum - 1);
}

const a = pascalTriangle(20, 8);
console.log(a);
