void main() {
    var giveMeFive = false;
    var giveMeSix = true;
    var numbers = [
        1,
        2,
        3,
        4,
        if (giveMeFive) 5,
        if (giveMeSix) 6,
    ];
    print(numbers);
}