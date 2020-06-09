function goodEnough(newGuess: number, oldGuess: number) {
    return Math.abs(oldGuess - newGuess) < 0.000001;
}

function improve(guess: number, x: number) {
    return (x / Math.pow(guess, 2) + 2 * guess) / 3;
}

function cubicIter(guess: number, x: number): number {
    let newGuess = improve(guess, x);

    return goodEnough(newGuess, guess) ? newGuess : cubicIter(newGuess, x);
}

function cubicRoot(x: number) {
    const result = cubicIter(1, x);
    return result;
}

console.log(cubicRoot(343));
