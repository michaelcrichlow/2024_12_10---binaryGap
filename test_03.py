def binaryGap(s: str) -> int:
    _s = s.removeprefix("0b")
    count = 1
    max_count = 0
    for i in range(1, len(_s)):
        if _s[i - 1] == _s[i] == "0":
            count += 1
            if max_count < count:
                max_count = count
        else:
            count = 1

    return max_count


def main() -> None:
    val = bin(9)
    print(binaryGap(val))


if __name__ == '__main__':
    main()
