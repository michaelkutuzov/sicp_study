function average(x: number, y: number) {
    return (x + y) / 2;
}

function goodEnough(newGuess: number, oldGuess: number) {
    return Math.abs(oldGuess - newGuess) < 0.000001;
}

function improve(guess: number, x: number) {
    return average(guess, x / guess);
}

function sqrtIter(guess: number, x: number): number {
    let newGuess = improve(guess, x);

    return goodEnough(newGuess, guess) ? newGuess : sqrtIter(newGuess, x);
}

function sqrt(x: number) {
    const result = sqrtIter(1, x);
    return result;
}

console.log(sqrt(10000));
